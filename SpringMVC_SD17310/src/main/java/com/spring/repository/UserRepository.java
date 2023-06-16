package com.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.spring.entity.Users;

@Repository
public interface UserRepository extends JpaRepository<Users, Integer>{
	Users findByUsernameAndPassword(String username, String password);
    Users findByUsername(String username);
}
