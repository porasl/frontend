package com.porasl.frontend.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;

@Document(collection = "posts")
public class Post {

    @Id
    private String id;
    private String title;
    private String description;
    private String content;
    private String author;
    private Long createdAt;

    // Attachments
    private List<String> videoUrls;   // Or you can use a custom Attachment class
    private List<String> audioUrls;
    private List<String> imageUrls;
    private List<DocumentAttachment> documents; // For PDFs, DOCs, Excels, etc.

    // Comments
    private List<Comment> comments;

    // Flags
    private boolean isEvent;
    private boolean isMemory;

    public Post() {}

    public Post(String title, String description, String content, String author, Long createdAt,
                List<String> videoUrls, List<String> audioUrls, List<String> imageUrls, List<DocumentAttachment> documents,
                List<Comment> comments, boolean isEvent, boolean isMemory) {
        this.title = title;
        this.description = description;
        this.content = content;
        this.author = author;
        this.createdAt = createdAt;
        this.videoUrls = videoUrls;
        this.audioUrls = audioUrls;
        this.imageUrls = imageUrls;
        this.documents = documents;
        this.comments = comments;
        this.isEvent = isEvent;
        this.isMemory = isMemory;
    }

    // Getters and Setters

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }

    public String getAuthor() { return author; }
    public void setAuthor(String author) { this.author = author; }

    public Long getCreatedAt() { return createdAt; }
    public void setCreatedAt(Long createdAt) { this.createdAt = createdAt; }

    public List<String> getVideoUrls() { return videoUrls; }
    public void setVideoUrls(List<String> videoUrls) { this.videoUrls = videoUrls; }

    public List<String> getAudioUrls() { return audioUrls; }
    public void setAudioUrls(List<String> audioUrls) { this.audioUrls = audioUrls; }

    public List<String> getImageUrls() { return imageUrls; }
    public void setImageUrls(List<String> imageUrls) { this.imageUrls = imageUrls; }

    public List<DocumentAttachment> getDocuments() { return documents; }
    public void setDocuments(List<DocumentAttachment> documents) { this.documents = documents; }

    public List<Comment> getComments() { return comments; }
    public void setComments(List<Comment> comments) { this.comments = comments; }

    public boolean isEvent() { return isEvent; }
    public void setEvent(boolean event) { isEvent = event; }

    public boolean isMemory() { return isMemory; }
    public void setMemory(boolean memory) { isMemory = memory; }
}

