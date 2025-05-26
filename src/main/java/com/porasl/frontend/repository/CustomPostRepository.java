package com.porasl.frontend.repository;

import com.porasl.frontend.domain.Attachment;

public interface CustomPostRepository {
    void addAttachment(String postId, Attachment attachment);
    void removeAttachment(String postId, String filename);
}
