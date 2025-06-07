package com.porasl.frontend.domain;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "comments")
public class Comment {

    @Id
    private String id;
    private String postId;
    private String content;
    private String commenter;
    private String createdAt;

    public Comment() {}

    public Comment(String postId, String content, String commenter, String createdAt) {
        this.postId = postId;
        this.content = content;
        this.commenter = commenter;
        this.createdAt = createdAt;
    }

    // Getters and Setters
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getPostId() { return postId; }
    public void setPostId(String postId) { this.postId = postId; }

    public String getContent() { return content; }
    public void setContent(String content) { this.content = content; }

    public String getCommenter() { return commenter; }
    public void setCommenter(String commenter) { this.commenter = commenter; }

    public String getCreatedAt() { return createdAt; }
    public void setCreatedAt(String createdAt) { this.createdAt = createdAt; }
}
