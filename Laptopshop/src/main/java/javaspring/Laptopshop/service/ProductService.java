package javaspring.Laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import jakarta.servlet.http.HttpSession;
import javaspring.Laptopshop.domain.Cart;
import javaspring.Laptopshop.domain.CartDetail;
import javaspring.Laptopshop.domain.Product;
import javaspring.Laptopshop.domain.User;
import javaspring.Laptopshop.repository.CartDetailRepository;
import javaspring.Laptopshop.repository.CartRepository;
import javaspring.Laptopshop.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;
    private final UserService userService;
    private final CartRepository cartRepository;
    private final CartDetailRepository cartDetailRepository;

    public ProductService(ProductRepository productRepository, UserService userService, CartRepository cartRepository,
            CartDetailRepository cartDetailRepository) {
        this.productRepository = productRepository;
        this.userService = userService;
        this.cartRepository = cartRepository;
        this.cartDetailRepository = cartDetailRepository;
    }

    public Product handleSaveProduct(Product product) {
        Product newProduct = this.productRepository.save(product);
        return newProduct;
    }

    public List<Product> handleGetAllProduct() {
        return this.productRepository.findAll();
    }

    public Product getProductById(long id) {
        Product product = this.productRepository.findById(id);
        return product;
    }

    public void handleDeleteProductById(long id) {
        this.productRepository.deleteById(id);
    }

    public void handleAddProductToCart(String email, long productId, HttpSession session) {

        User user = this.userService.getUserByEmail(email);

        if (user != null) {
            Cart cart = this.cartRepository.findByUser(user);

            // if cart is null -> create new cart
            if (cart == null) {
                Cart cartOther = new Cart();
                cartOther.setUser(user);
                cartOther.setSum(0);

                cart = this.cartRepository.save(cartOther);
            }

            // if cart not null
            Product product = this.productRepository.findById(productId);
            if (product != null) {
                CartDetail cartDetail = this.cartDetailRepository.findByCartAndProduct(cart, product);

                // Check if the product has been added before or not
                if (cartDetail == null) {
                    CartDetail cartDetailOther = new CartDetail();
                    cartDetailOther.setCart(cart);
                    cartDetailOther.setProduct(product);
                    cartDetailOther.setPrice(product.getPrice());
                    cartDetailOther.setQuantity(1);
                    this.cartDetailRepository.save(cartDetailOther);

                    int sum = cart.getSum() + 1;
                    cart.setSum(sum);
                    this.cartRepository.save(cart);
                    session.setAttribute("sum", sum);
                } else {
                    cartDetail.setQuantity(cartDetail.getQuantity() + 1);
                    this.cartDetailRepository.save(cartDetail);
                }

            }
        }
    }
}
