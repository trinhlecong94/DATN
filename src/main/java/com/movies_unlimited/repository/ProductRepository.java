package com.movies_unlimited.repository;

import com.movies_unlimited.entity.CategoryEntity;
import com.movies_unlimited.entity.ProductEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<ProductEntity, Integer> {
    CategoryEntity findByName(String name);
}