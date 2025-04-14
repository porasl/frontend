package com.porasl.frontend.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        // ⚠️ This line forwards all React SPA routes except static assets
        registry.addViewController("/frontend/{spring:[^\\.]*}")
                .setViewName("forward:/frontend/index.html");

        registry.addViewController("/frontend/**/{spring:[^\\.]*}")
                .setViewName("forward:/frontend/index.html");
    }
}
