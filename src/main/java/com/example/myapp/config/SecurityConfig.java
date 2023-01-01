package com.example.myapp.config;

import org.springframework.boot.autoconfigure.security.servlet.PathRequest;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.example.myapp.model.SiteUser;
import com.example.myapp.repository.SiteUserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Configuration
public class SecurityConfig {
  private final SiteUserRepository repository;
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
      .rememberMe();
    return http.build();
  }
  @Bean
  public UserDetailsService userDetailsService() {
    return username -> {
      SiteUser user = repository.findByUsername(username)
      .orElseThrow(()
        -> new UsernameNotFoundException(username + " not found"));
      return new User(user.getUsername(), user.getPassword(),
        AuthorityUtils.createAuthorityList("ADMIN")
      );
    };
  }
}
