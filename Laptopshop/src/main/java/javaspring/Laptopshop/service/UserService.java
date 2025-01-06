package javaspring.Laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import javaspring.Laptopshop.domain.Role;
import javaspring.Laptopshop.domain.User;
import javaspring.Laptopshop.domain.dto.RegisterDTO;
import javaspring.Laptopshop.repository.RoleRepository;
import javaspring.Laptopshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public User handleSaveUser(User user) {
        User newUser = this.userRepository.save(user);
        return newUser;
    }

    public Role handleFindRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public List<User> handleGetAllUser() {
        return this.userRepository.findAll();
    }

    public User handleGetUserById(long id) {
        User user = this.userRepository.findById(id);
        return user;
    }

    public void handleDeleteUserById(long id) {
        this.userRepository.deleteById(id);
    }

    // convert DTOUser to user
    public User registerDTOUserToUSer(RegisterDTO userDTO) {
        User user = new User();
        user.setFullName(userDTO.getFirstName() + " " + userDTO.getLastName());
        user.setEmail(userDTO.getEmail());
        user.setPassword(userDTO.getPassword());
        return user;
    }

    public boolean handleCheckExistEmail(String email) {
        return this.userRepository.existsByEmail(email);
    }

}
