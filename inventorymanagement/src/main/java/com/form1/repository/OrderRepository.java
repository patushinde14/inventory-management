package com.form1.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.form1.entity.Order;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Long> {
    
    @Query("SELECT o FROM Order o JOIN FETCH o.product")
    List<Order> findAllWithProducts();
    
    @Modifying
    @Query("DELETE FROM Order o WHERE o.product.id = :productId")
    void deleteByProductId(@Param("productId") Long productId);

}
	
