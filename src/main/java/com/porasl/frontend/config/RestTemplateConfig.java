package com.porasl.frontend.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestTemplate;

@Configuration("restTemplateConfigForFrontend")
public class RestTemplateConfig {

	@Bean(name = "restTemplateFrontend")
	public RestTemplate restTemplate() {
		return new RestTemplate();
	}
}
