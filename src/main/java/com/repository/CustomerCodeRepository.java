package com.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.domain.CustomerCode;

//@RepositoryRestResource(collectionResourceRel = "customercodes", path = "customercodes")
public interface CustomerCodeRepository extends JpaRepository<CustomerCode, Integer> {
    
}
