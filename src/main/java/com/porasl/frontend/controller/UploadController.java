package com.porasl.frontend.controller;

import java.nio.file.*;
import java.util.*;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.porasl.frontend.domain.DocumentAttachment;
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

            String fileUrl = filePath.toString();

            if(postId.equals("undefined"))  postId="";
            
            // Try to find an existing post by postId
            Optional<Post> optionalPost = postRepository.findById(postId);
            Post post = optionalPost.orElseGet(() -> {
                Post newPost = new Post();
                newPost.setTitle("Sample Title");
                newPost.setDescription("Sample Description");
                newPost.setContent("Sample Content");
                newPost.setAuthor(userId);
                newPost.setCreatedAt(System.currentTimeMillis());
                newPost.setVideoUrls(new ArrayList<>());
                newPost.setAudioUrls(new ArrayList<>());
                newPost.setImageUrls(new ArrayList<>());
                newPost.setDocuments(new ArrayList<>());
                newPost.setComments(new ArrayList<>());
                newPost.setEvent(false);
                newPost.setMemory(false);
                return newPost;
            });

            // Attach the uploaded file to the appropriate list
            switch (typeString) {
                case "MP4":
                    type = "VIDEO";
                    post.getVideoUrls().add(fileUrl);
                    break;
                case "MP3":
                    type = "AUDIO";
                    post.getAudioUrls().add(fileUrl);
                    break;
                case "JPEG":
                case "JPG":
                case "PNG":
                case "GIF":
                    type = "IMAGE";
                    post.getImageUrls().add(fileUrl);
                    break;
                case "PDF":
                case "DOC":
                case "DOCX":
                case "XLS":
                case "XLSX":
                    type = "DOCUMENT";
                    // If you have a DocumentAttachment class, use that:
                    DocumentAttachment doc = new DocumentAttachment(uniqueFileName, fileUrl, typeString);
                    post.getDocuments().add(doc);
                    break;
                default:
                    type = "OTHER";
                    // For unsupported file types, optionally handle here
                    break;
            }

            // Send message to Kafka (unchanged)
            JSONObject json = new JSONObject();
            json.put("type", type);
            json.put("userId", userId);
            json.put("filePath", fileUrl);

            JSONObject wrapper = new JSONObject();
            wrapper.put("attachMessage", json.toString());
            String attachMessage = wrapper.toString();
            publisher.sendAttachItemMessage(attachMessage);

            switch (type) {
                case "VIDEO" -> publisher.sendVideoMessage("{\"videoTranscode\":\"" + fileUrl + "\"}");
                case "AUDIO" -> publisher.sendVideoMessage("{\"audioTranscode\":\"" + fileUrl + "\"}");
                case "IMAGE" -> publisher.sendVideoMessage("{\"imageTranscode\":\"" + fileUrl + "\"}");
            }

            log.info("Uploaded file {} is sent to be converted.", filePath.toAbsolutePath());

            	post = postRepository.save(post);
            
            response.put("postId", post.getId());
            return ResponseEntity.ok(post);

        } catch (Exception e) {
            log.error("Error uploading file", e);
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Failed to upload file: " + e.getMessage());
        }
    }
}
