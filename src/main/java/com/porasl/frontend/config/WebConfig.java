package com.porasl.frontend.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    
	@Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/frontend/{spring:[^\\.]*}")
                .setViewName("forward:/frontend/index.html");

        registry.addViewController("/frontend/**/{spring:[^\\.]*}")
                .setViewName("forward:/frontend/index.html");
        registry.addViewController("/frontend/{spring:(?!api).*}")
        .setViewName("forward:/frontend/index.html");

        registry.addViewController("/frontend/**/{spring:(?!api).*}")
        .setViewName("forward:/frontend/index.html");
    }
    
	@Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/api/**")
            .allowedOrigins("*")
            .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS")
            .allowedHeaders("*")
            .maxAge(3600);
    }
    
}
