package com.porasl.frontend.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
public class SecurityConfig {

    @Bean
    public UserDetailsService userDetailsService() {
        return new InMemoryUserDetailsManager(
            User.withUsername("admin")
                .password(passwordEncoder().encode("password"))
                .roles("USER")
                .build()
        );
    }

 
    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
       http
            .authorizeHttpRequests(auth -> auth
                .requestMatchers(
                    "/frontend/assets/**",         // Allow React built JS/CSS/images
                    "/frontend/**/*.js",           // JS files
                    "/frontend/**/*.css",          // CSS files
                    "/frontend/**/*.map",          // Source maps
                    "/frontend/**/*.json",         // JSON files
                    "/frontend/favicon.ico",       // Favicon
                    "/frontend/manifest.json",     // PWA support
                    "/frontend/index.html",        // Main entry point
                    "/api/**",                     // API routes
                    "/registration",               // Registration
                    "/activate",                   // Activation
                    "/forgot-password",            // Forgot Password
                    "/webrtc"                      // WebRTC endpoint
                ).permitAll() 
                .anyRequest().authenticated()
            )
            .headers(headers -> headers
                .xssProtection(xss -> xss.disable()) // Optional: Adjust as needed
                .contentTypeOptions(contentType -> contentType.disable()) // Disable "nosniff" (optional)
            )
            .formLogin(form -> form
                .loginPage("/frontend/index.html") // Let React handle login page
                .permitAll()
            )
            .logout(logout -> logout
                .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
                .permitAll()
            )
            .csrf(csrf -> csrf.disable()); // Optional: Disable CSRF for development/testing
   
        return http.build();
    }



        
    @Bean
    public DaoAuthenticationProvider authenticationProvider(UserDetailsService userDetailsService) {
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(userDetailsService);
        provider.setPasswordEncoder(passwordEncoder());
        return provider;
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration config) throws Exception {
        return config.getAuthenticationManager();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
