package com.porasl.frontend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.porasl.frontend.domain.Config;

@Repository
public interface ConfigRepository extends JpaRepository<Config, Long> {
}
