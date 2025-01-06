package javaspring.Laptopshop.service.validator;

import org.springframework.stereotype.Service;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import javaspring.Laptopshop.domain.dto.RegisterDTO;
import javaspring.Laptopshop.service.UserService;

@Service
public class RegisterValidator implements ConstraintValidator<RegisterChecked, RegisterDTO> {

    private UserService userService;

    public RegisterValidator(UserService userService) {
        this.userService = userService;
    }

    @Override
    public boolean isValid(RegisterDTO user, ConstraintValidatorContext context) {
        boolean isValid = true;

        if (!user.getPassword().equals(user.getConfirmPassword())) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate("Password incorrect")
                    .addPropertyNode("confirmPassword")
                    .addConstraintViolation();

            return false;
        }
        if (this.userService.handleCheckExistEmail(user.getEmail())) {
            context.disableDefaultConstraintViolation();
            context.buildConstraintViolationWithTemplate("Email already exist")
                    .addPropertyNode("email")
                    .addConstraintViolation();

            return false;
        }

        return isValid;
    }

}
