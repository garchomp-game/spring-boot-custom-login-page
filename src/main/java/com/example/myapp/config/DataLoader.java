package com.example.myapp.config;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.example.myapp.model.SiteUser;
import com.example.myapp.repository.SiteUserRepository;
import com.example.myapp.util.Authority;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Component
/**
 * DataLoader
 */
public class DataLoader implements ApplicationRunner {
  private final PasswordEncoder passwordEncoder;
  private final SiteUserRepository userRepository;

  @Override
  public void run(ApplicationArguments args) throws Exception {
    SiteUser user = new SiteUser();
    user.setUsername("admin");
    user.setPassword(passwordEncoder.encode("password"));
    user.setEmail("admin@example.com");
    user.setGender(0);
    user.setAdmin(true);
    user.setAuthority(Authority.ADMIN);

    if (userRepository.findByUsername(user.getUsername()).isEmpty()) {
      userRepository.save(user);
    }
  }
}
