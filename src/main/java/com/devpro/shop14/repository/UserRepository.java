package com.devpro.shop14.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.shop14.entities.Users;

@Repository
public interface UserRepository extends JpaRepository<Users, Long>{

}
