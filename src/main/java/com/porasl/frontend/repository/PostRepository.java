package com.porasl.frontend.repository;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.porasl.frontend.domain.Post;

public interface PostRepository extends MongoRepository<Post, String>, CustomPostRepository{
	
}