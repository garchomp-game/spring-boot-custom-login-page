package com.example.myapp.config;

import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.example.myapp.util.Authority;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Configuration
public class SecurityConfig {
  @Bean
  public PasswordEncoder passwordEncoder() {
    return new BCryptPasswordEncoder();
  }
  @Bean
  public SecurityFilterChain filterChain(HttpSecurity http)
  throws Exception {
    http.authorizeHttpRequests(auth -> auth
      .requestMatchers(PathRequest.toStaticResources().atCommonLocations())
      .permitAll()
      .requestMatchers("/register", "/login", "/h2-console/**")
      .permitAll()
      .requestMatchers("/admin").hasAuthority(Authority.ADMIN.name())
      .anyRequest()
      .authenticated()
    )
      .formLogin(login -> login
        .loginPage("/login")
        .defaultSuccessUrl("/")
        .permitAll()
      )
      .logout(logout -> logout
        .logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
        .permitAll()
      )
      .rememberMe().key("Unique and Secret");
    http.csrf().disable();	// H2DBデバッグ用
    http.headers().frameOptions().disable();
    return http.build();
  }
}
