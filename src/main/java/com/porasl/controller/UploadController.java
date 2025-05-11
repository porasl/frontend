package com.porasl.controller;

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

import org.springframework.beans.factory.annotation.Value;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api")
public class UploadController {
	

	@Value("${tmp.upload.dir}")  
	private String tmpUploadDir;

	@PostMapping("/upload")
	public ResponseEntity<?> uploadFile(@RequestParam("file") MultipartFile file) {
		
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
			String uniqueFileName = System.currentTimeMillis() + "_" + file.getOriginalFilename().replaceAll("\\s+", "");
			Path filePath = uploadPath.resolve(uniqueFileName);

			// Copy file to the target location
			Files.copy(file.getInputStream(), filePath, StandardCopyOption.REPLACE_EXISTING);

			log.info("Stored file: {} (size: {} bytes)", uniqueFileName, file.getSize());

			Map<String, String> response = new HashMap<>();
			response.put("message", "File uploaded successfully");
			response.put("filename", uniqueFileName);
			response.put("size", String.valueOf(file.getSize()));
			response.put("path", filePath.toString());
			
			//send the file to be converted to HLS if it is MP4
			log.info("Uploaded file $ is sent to be coverted : "+ filePath.toAbsolutePath());
			

			return ResponseEntity.ok(response);
		} catch (Exception e) {
			log.error("Error uploading file", e);
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
					.body("Failed to upload file: " + e.getMessage());
		}
	}
}
