package com.porasl.frontend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.FilterType;

@SpringBootApplication(
    exclude = {
        HibernateJpaAutoConfiguration.class,
        DataSourceAutoConfiguration.class
    },
    scanBasePackages = {
    		"com.porasl.frontend",
    		  "com.porasl.frontend.controller",
    		  "com.porasl.frontend.repository", 
    		  "com.porasl.frontend.kafka"
    		}
)
@ComponentScan(
	    basePackages = "com.porasl",
	    excludeFilters = @ComponentScan.Filter(
	        type = FilterType.REGEX,
	        pattern = "com\\.porasl\\.authservices\\.config\\..*"
	    )
	)

public class FrontendApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(FrontendApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(FrontendApplication.class, args);
    }
}
