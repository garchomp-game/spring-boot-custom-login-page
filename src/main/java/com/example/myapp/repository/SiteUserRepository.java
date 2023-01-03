package com.example.myapp.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.myapp.model.SiteUser;

/**
 * SiteUserRepository
 */
public interface SiteUserRepository extends JpaRepository<SiteUser, Long>{
  Optional<SiteUser> findByUsername(String username);
  List<SiteUser> streamByUsername(String username);  
}
