package com.porasl.frontend.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.porasl.frontend.domain.Comment;

import java.util.List;

public interface CommentRepository extends MongoRepository<Comment, String> {
    List<Comment> findByPostId(String postId);
}