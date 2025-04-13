package com.porasl.frontend.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.web.servlet.config.annotation.ContentNegotiationConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("http://localhost:3000")
                .allowedMethods("GET", "POST", "PUT", "DELETE", "OPTIONS")
                .allowedHeaders("*")
                .allowCredentials(true);
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/frontend/assets/**")
                .addResourceLocations("classpath:/static/frontend/assets/")
                .setCachePeriod(3600); // Optional: set cache period for static resources
    }



    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
    	registry.addViewController("/frontend/{spring:[a-zA-Z0-9-_]+}/**{spring:?!(\\.js|\\.css|\\.map|\\.ico|\\.png|\\.jpg|\\.jpeg|\\.svg|\\.woff2?|\\.ttf|\\.json|\\.txt|\\.html)$}")
        .setViewName("forward:/frontend/index.html");
    }
}

