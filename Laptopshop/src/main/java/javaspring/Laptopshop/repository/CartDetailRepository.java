package javaspring.Laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import javaspring.Laptopshop.domain.Cart;
import javaspring.Laptopshop.domain.CartDetail;
import javaspring.Laptopshop.domain.Product;

public interface CartDetailRepository extends JpaRepository<CartDetail, Long> {
    CartDetail findByCartAndProduct(Cart cart, Product product);
}
