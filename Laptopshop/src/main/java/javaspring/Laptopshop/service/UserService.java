package javaspring.Laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import javaspring.Laptopshop.domain.Role;
import javaspring.Laptopshop.domain.User;
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

}
