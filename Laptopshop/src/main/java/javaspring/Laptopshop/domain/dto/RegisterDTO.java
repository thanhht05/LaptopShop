package javaspring.Laptopshop.domain.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Size;
import javaspring.Laptopshop.service.validator.RegisterChecked;
import javaspring.Laptopshop.service.validator.StrongPassword;

@RegisterChecked
public class RegisterDTO {
    @Size(min = 2, message = "First name must have at least 2 characters")
    private String firstName;
    private String lastName;
    @Email(message = "Email invalid", regexp = "^[a-zA-Z0-9_!#$%&'*+/=?`{|}~^.-]+@[a-zA-Z0-9.-]+$")
    private String email;
    @StrongPassword
    private String password;
    private String confirmPassword;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}
