package javaspring.Laptopshop.controller.user;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import javaspring.Laptopshop.domain.Product;
import javaspring.Laptopshop.service.ProductService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ItemController {
    private final ProductService productService;

    public ItemController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/product/{id}")
    public String getProductDetailPage(Model model, @PathVariable Long id) {

        Product product = this.productService.getProductById(id);
        model.addAttribute("product", product);

        return "client/product/detail";
    }

    @PostMapping("/add/product/{id}")
    public String handleAddProduct(@PathVariable Long id, HttpServletRequest httpServletRequest) {
        HttpSession session = httpServletRequest.getSession(false);

        String email = (String) session.getAttribute("email");

        long productId = id;
        this.productService.handleAddProductToCart(email, productId, session);

        return "redirect:/";
    }

}
