package com.form1.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.form1.entity.Product;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.Query;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    
    @Query("SELECT p FROM Product p WHERE SIZE(p.orders) > 0") 
    List<Product> findAllOrdersWithProducts();

    List<Product> findAllByOrderByStockQuantityDesc();

    List<Product> findAllByOrderBySalesCountDesc();
    
  
}
