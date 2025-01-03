package javaspring.Laptopshop.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomePageController {
    @GetMapping("/")
    public String getHomePage() {
        return "/client/homepage/show";
    }
    
}
