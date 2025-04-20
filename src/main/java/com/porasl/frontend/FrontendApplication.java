package com.porasl.frontend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

import com.porasl.frontend.FrontendApplication;

@SpringBootApplication(
		exclude= {
				org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration.class,
				org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration.class
		})

@ComponentScan(basePackages = "com.porasl")
public class FrontendApplication extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(FrontendApplication.class);
    }

    public static void main(String[] args) throws Exception {
        SpringApplication.run(FrontendApplication.class, args);
    }
}
