package javaspring.Laptopshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javaspring.Laptopshop.domain.Cart;
import javaspring.Laptopshop.domain.Product;
import javaspring.Laptopshop.domain.User;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {
    Cart findByUser(User user);
}
