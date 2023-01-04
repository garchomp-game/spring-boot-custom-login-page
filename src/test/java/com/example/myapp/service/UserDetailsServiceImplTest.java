package com.example.myapp.service;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.example.myapp.config.UserDetailsServicelmpl;
import com.example.myapp.model.SiteUser;
import com.example.myapp.repository.SiteUserRepository;
import com.example.myapp.util.Authority;

import jakarta.transaction.Transactional;

@SpringBootTest
@Transactional
class UserDetailsServicelmplTest {

  @Autowired
  SiteUserRepository repository;

  @Autowired
  UserDetailsServicelmpl servicelmpl;

	@Test
  @DisplayName("ユーザ名が存在する時、ユーザ詳細を取得することを期待します")
	void whenUsernameExists_expectToGetUserDetails() {
    SiteUser user = new SiteUser();
    user.setUsername("harada");
    user.setPassword("password");
    user.setEmail("harada@example.com");
    user.setAuthority(Authority.USER);
    repository.save(user);

    UserDetails actual = servicelmpl.loadUserByUsername("harada");

    assertEquals(user.getUsername(), actual.getUsername());
	}
  @Test
  @DisplayName("ユーザ名が存在しない時、例外をスローします")
  void whenUsernameDoesNotExist_throwException() {
    assertThrows(
      UsernameNotFoundException.class,
    () -> servicelmpl.loadUserByUsername("Takeda")
    );
  }
}
