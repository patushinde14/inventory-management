package com.form1.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.form1.entity.Order;

import com.form1.repository.OrderRepository;






    import java.util.List;

    @Service
    public class OrderService {

        @Autowired
        private OrderRepository orderRepository;

        public List<Order> getAllOrders() {
            return orderRepository.findAllWithProducts(); 
    
    }                

            }