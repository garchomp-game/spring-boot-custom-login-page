package com.example.myapp.config;

import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.myapp.repository.SiteUserRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class UserDetailsServicelmpl implements UserDetailsService {
  private final SiteUserRepository userRepository;

  @Override
  public UserDetails loadUserByUsername(String username)
    throws UsernameNotFoundException {
    var user = userRepository.findByUsername(username)
    .orElseThrow(()
      -> new UsernameNotFoundException(username + " not found"));

    return new User(
      user.getUsername(),
      user.getPassword(),
      AuthorityUtils.createAuthorityList(user.getAuthority().name())
    );
  }
}
