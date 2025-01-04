package javaspring.Laptopshop.service;

import java.util.List;

import org.springframework.stereotype.Service;

import javaspring.Laptopshop.domain.Product;
import javaspring.Laptopshop.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
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
}
