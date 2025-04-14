package com.form1.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.form1.entity.ProcessOrder; // ✅ Ensure correct import

@Repository
public interface ProcessOrderRepository extends JpaRepository<ProcessOrder, Long> {
}
