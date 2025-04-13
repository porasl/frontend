package com.porasl.frontend.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
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
    public void addViewControllers(ViewControllerRegistry registry) {
        // ✅ Forward React routes only — do NOT forward static asset requests

        registry.addViewController("/frontend/{spring:[a-zA-Z0-9-_]+}")
                .setViewName("forward:/frontend/index.html");

        registry.addViewController("/frontend/{spring:[a-zA-Z0-9-_]+}/**{spring:[a-zA-Z0-9-_]+}")
                .setViewName("forward:/frontend/index.html");

        // ❗NO forwarding for /frontend/assets/** or any file-like URL
        // That allows .js, .css, etc. to be served with proper MIME type
    }
}
