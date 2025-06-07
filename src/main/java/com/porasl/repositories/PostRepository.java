package com.porasl.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.porasl.frontend.domain.Post;

public interface PostRepository extends MongoRepository<Post, String> {
}
