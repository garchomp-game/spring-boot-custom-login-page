package com.example.myapp.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.myapp.model.SiteUser;
import com.example.myapp.repository.SiteUserRepository;
import com.example.myapp.util.Authority;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
/**
 * SecurityController
 */
public class SecurityController {
  private final SiteUserRepository userRepository;
  private final PasswordEncoder passwordEncoder;

  @GetMapping("/login")
  public String login() {
    return "login";
  }
  @GetMapping("/")
  public String showList(Authentication loginUser, Model model) {
    model.addAttribute("username", loginUser.getName());
    model.addAttribute("authority", loginUser.getAuthorities());
    return "user";
  }
  
  @GetMapping("/admin/list")
  public String showAdminList(Model model) {
    model.addAttribute("users", this.userRepository.findAll());
    return "list";
  } 

  @GetMapping("/register")
  public String register(@ModelAttribute("user") SiteUser user) {
    return "register";
  }

  @PostMapping("/register")
  public String process(
  @Validated @ModelAttribute("user") SiteUser user,
  BindingResult result
  ) {
    if(result.hasErrors()) {
      return "register";
    }
    user.setPassword(this.passwordEncoder.encode(user.getPassword()));
    if (user.isAdmin()) {
      user.setAuthority(Authority.ADMIN);
    } else {
      user.setAuthority(Authority.USER);
    }
    this.userRepository.save(user);

    return "redirect:/login?register";
  }
}
