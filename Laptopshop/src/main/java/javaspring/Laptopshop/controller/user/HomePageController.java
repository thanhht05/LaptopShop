package javaspring.Laptopshop.controller.user;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javaspring.Laptopshop.domain.Product;
import javaspring.Laptopshop.service.ProductService;

@Controller
public class HomePageController {
    private final ProductService productService;

    public HomePageController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Product> products = this.productService.handleGetAllProduct();
        model.addAttribute("products", products);
        return "/client/homepage/show";
    }

}
