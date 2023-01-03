package com.example.myapp.validator;
import org.springframework.beans.factory.annotation.Autowired;
import com.example.myapp.repository.SiteUserRepository;
import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
public class UniqueLoginValidator
implements ConstraintValidator<UniqueLogin, String> {
  private final SiteUserRepository siteUserRepository;
  public UniqueLoginValidator() {
    this.siteUserRepository = null;
  }
  @Autowired
  public UniqueLoginValidator(SiteUserRepository siteUserRepository) {
    this.siteUserRepository = siteUserRepository;
  }
  @Override
  public boolean isValid(String value, ConstraintValidatorContext context) {
    return this.siteUserRepository == null
    || this.siteUserRepository.streamByUsername(value).isEmpty();
    // return this.siteUserRepository == null
    // || !this.siteUserRepository.findAll().isEmpty();
  }
}
