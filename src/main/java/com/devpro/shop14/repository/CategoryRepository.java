package com.devpro.shop14.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import com.devpro.shop14.entities.Categories;

@Repository
public interface CategoryRepository extends JpaRepository<Categories, Integer> {

}
