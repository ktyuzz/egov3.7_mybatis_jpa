package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.domain.CustomerCode;

public interface CustomerCodeRepository extends JpaRepository<CustomerCode, Integer> {
    
}
