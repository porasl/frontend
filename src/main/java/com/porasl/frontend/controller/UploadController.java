package com.porasl.frontend.controller;

import java.nio.file.*;
import java.util.*;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.porasl.frontend.domain.Post;
import com.porasl.frontend.kafka.KafkaMessagePublisher;
import com.porasl.frontend.repository.PostRepository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api")
public class UploadController {

    @Value("${tmp.upload.dir}")
    private String tmpUploadDir;

    private final KafkaMessagePublisher publisher;
    private final PostRepository postRepository;

    @Autowired
    public UploadController(KafkaMessagePublisher publisher, PostRepository postRepository) {
        this.publisher = publisher;
        this.postRepository = postRepository;
    }

    @PostMapping("/upload")
    public ResponseEntity<?> uploadFile(
            @RequestParam("file") MultipartFile file,
            @RequestParam("userId") String userId,
            @RequestParam("postId") String postId) {

        try {
            if (file.isEmpty()) {
                return ResponseEntity.badRequest().body("Please select a file to upload");
            }

            Path uploadPath = Paths.get(tmpUploadDir);
            if (!Files.exists(uploadPath)) {
                Files.createDirectories(uploadPath);
            }

            String uniqueFileName = System.currentTimeMillis() + "_" + file.getOriginalFilename().replaceAll("\\s+", "");
            Path filePath = uploadPath.resolve(uniqueFileName);

            Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

            log.info("Stored file: {} (size: {} bytes)", uniqueFileName, file.getSize());

            Map<String, String> response = new HashMap<>();
            response.put("message", "File uploaded successfully");
            response.put("filename", uniqueFileName);
            response.put("size", String.valueOf(file.getSize()));
            response.put("path", filePath.toString());

            String[] parts = uniqueFileName.split("\\.");
            String typeString = parts.length > 1 ? parts[parts.length - 1].toUpperCase() : "";
            String type;

            JSONObject json = new JSONObject();

            switch (typeString) {
                case "MP4" -> {
                    type = "VIDEO";
                    json.put("videopath", filePath.toString());
                }
                case "MP3" -> {
                    type = "AUDIO";
                    json.put("audiopath", filePath.toString());
                }
                case "JPEG", "JPG", "GIF" -> {
                    type = "IMAGE";
                    json.put("imagepath", filePath.toString());
                }
                default -> {
                    type = "OTHER";
                    json.put("filepath", filePath.toString());
                }
            }

            json.put("type", type);
            json.put("userId", userId);

            JSONObject wrapper = new JSONObject();
            wrapper.put("attachMessage", json.toString());

            String attachMessage = wrapper.toString();
            publisher.sendAttachItemMessage(attachMessage);

            switch (type) {
                case "VIDEO" -> publisher.sendVideoMessage("{\"videoTranscode\":\"" + filePath + "\"}");
                case "AUDIO" -> publisher.sendVideoMessage("{\"audioTranscode\":\"" + filePath + "\"}");
                case "IMAGE" -> publisher.sendVideoMessage("{\"imageTranscode\":\"" + filePath + "\"}");
            }

            log.info("Uploaded file {} is sent to be converted.", filePath.toAbsolutePath());

            // Save post if not already existing (simplified logic)
            Post post = new Post("Sample Title", "No comments yet", userId, System.currentTimeMillis());
            postRepository.save(post);

            response.put("postCode", postId);
            return ResponseEntity.ok(response);

        } catch (Exception e) {
            log.error("Error uploading file", e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Failed to upload file: " + e.getMessage());
        }
    }
}
