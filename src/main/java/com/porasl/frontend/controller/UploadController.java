package com.porasl.frontend.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.porasl.frontend.kafka.KafkaMessagePublisher;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api")
public class UploadController {

	@Value("${tmp.upload.dir}")
	private String tmpUploadDir;

	private final KafkaMessagePublisher publisher;
	

	public UploadController(KafkaMessagePublisher publisher) {
		this.publisher = publisher;
	}

	@PostMapping("/upload")
	public ResponseEntity<?> uploadFile(@RequestParam("file") MultipartFile file,
            @RequestParam("userId") String userId,
            @RequestParam("postCode") String postCode) {

		try {
			if (file.isEmpty()) {
				return ResponseEntity.badRequest().body("Please select a file to upload");
			}

			// Create upload directory if it doesn't exist
			Path uploadPath = Paths.get(tmpUploadDir);
			if (!Files.exists(uploadPath)) {
				Files.createDirectories(uploadPath);
			}

			// Generate unique filename to prevent overwrites
			String uniqueFileName = System.currentTimeMillis() + "_"
					+ file.getOriginalFilename().replaceAll("\\s+", "");
			Path filePath = uploadPath.resolve(uniqueFileName);

			// Copy file to the target location
			Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

			log.info("Stored file: {} (size: {} bytes)", uniqueFileName, file.getSize());

			Map<String, String> response = new HashMap<>();
			response.put("message", "File uploaded successfully");
			response.put("filename", uniqueFileName);
			response.put("size", String.valueOf(file.getSize()));
			response.put("path", filePath.toString());
			
			String[] parts = uniqueFileName.split("\\.");
			String typeString = parts.length > 1 ? parts[parts.length - 1].toUpperCase() : "";
			
			String type = new String();

			JSONObject json = new JSONObject();

			switch (typeString) {
			    case "MP4":
			        type = "VIDEO";
			        json.put("videopath", filePath.toString());
			        break;
			    case "MP3":
			        type = "AUDIO";
			        json.put("audiopath", filePath.toString());
			        break;
			    case "JPEG":
			    case "JPG":
			    case "GIF":
			        type = "IMAGE";
			        json.put("imagepath", filePath.toString());
			        break;
			    default:
			        type = "Other";
			        json.put("filepath", filePath.toString());
			}

			json.put("type", type);
			json.put("userId", userId);
			json.put("postCode", postCode);

			// Wrap the attachMessage properly using JSONObject to escape inner content
			JSONObject wrapper = new JSONObject();
			wrapper.put("attachMessage", json.toString()); // Inner JSON is a string here, escaped correctly

			String attachMessage = wrapper.toString(); // Now valid JSON all the way
			publisher.sendAttachItemMessage(attachMessage);

			// Optionally send transcode message separately
			String transcodeKey = switch (type) {
			    case "VIDEO" -> "videoTranscode";
			    case "AUDIO" -> "audioTranscode";
			    case "IMAGE" -> "imageTranscode";
			    default -> null;
			};

			if (transcodeKey != null) {
			    JSONObject transcode = new JSONObject();
			    transcode.put(transcodeKey, filePath.toString());
			    publisher.sendVideoMessage(transcode.toString());
			}
			log.info("Uploaded file %s is sent to be coverted : " + filePath.toAbsolutePath());
			return ResponseEntity.ok(response);
		} catch (Exception e) {
			log.error("Error uploading file", e);
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.body("Failed to upload file: " + e.getMessage());
		}
	}
}
