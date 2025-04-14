package com.form1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

import com.form1.entity.Product;
import com.form1.repository.ProductRepository;

@Service
public class ProductServiceImpl extends ProductService {

    @Autowired
    public ProductServiceImpl(ProductRepository productRepository) {
        super(productRepository);  // Explicitly call the superclass constructor
    }

    // Fetch all products
    public List<Product> getAllProducts() {
        return super.getAllProducts();
    }

    // Fetch products sorted by popularity
    public List<Product> getProductsSortedByPopularity() {
        return super.getProductsSortedByPopularity();
    }

    // Add a new product
    @Transactional
    public void addProduct(Product product) {
        super.getAllProducts().add(product);
    }

    // Update sales count
    public void updateSalesCount(Long productId, int quantity) {
        super.updateSalesCount(productId, quantity);
    }
}
