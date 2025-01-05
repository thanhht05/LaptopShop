package javaspring.Laptopshop.controller.admin;

import java.io.IOException;
import java.util.List;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javaspring.Laptopshop.domain.User;
import javaspring.Laptopshop.service.UploadService;
import javaspring.Laptopshop.service.UserService;

@Controller
public class UserController {
    private final UserService userService;
    private final UploadService uploadService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, UploadService uploadService, PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadService = uploadService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping("/admin/user/create")
    public String handleCreateUser(Model model, @ModelAttribute User newUser,
            @RequestParam("avatarFile") MultipartFile file) throws IOException {
        String roleName = newUser.getRole().getName();
        String avatar = this.uploadService.handleUpLoadFile(file, "avatar");
        String hashPassword = this.passwordEncoder.encode(newUser.getPassword());
        newUser.setPassword(hashPassword);

        newUser.setRole(this.userService.handleFindRoleByName(roleName));
        newUser.setAvatar(avatar);
        this.userService.handleSaveUser(newUser);
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user")
    public String getUserPage(Model model) {
        List<User> users = this.userService.handleGetAllUser();
        model.addAttribute("users", users);
        return "admin/user/show";
    }

    @GetMapping("/admin/user/{id}")
    public String getUserDetailPage(Model model, @PathVariable Long id) {

        User user = this.userService.handleGetUserById(id);
        model.addAttribute("user", user);

        return "admin/user/detail";
    }

    @GetMapping("/admin/user/update/{id}")
    public String getUpdateUserPage(Model model, @PathVariable Long id) {

        User user = this.userService.handleGetUserById(id);
        model.addAttribute("user", user);
        return "admin/user/update";
    }

    @PostMapping("/admin/user/update")
    public String handleUpdateUser(@ModelAttribute User user) {
        User userUpdate = this.userService.handleGetUserById(user.getId());
        if (userUpdate != null) {
            userUpdate.setFullName(user.getFullName());
            userUpdate.setAddress(user.getAddress());
            userUpdate.setPhone(user.getPhone());
            userUpdate.setRole(user.getRole());

            this.userService.handleSaveUser(userUpdate);
        }
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String getDeleteUserPage(Model model, @PathVariable Long id) {
        model.addAttribute("user", new User());
        model.addAttribute("id", id);
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String handleDeleteUser(Model model, @ModelAttribute User user) {
        this.userService.handleDeleteUserById(user.getId());
        return "redirect:/admin/user";
    }

}
