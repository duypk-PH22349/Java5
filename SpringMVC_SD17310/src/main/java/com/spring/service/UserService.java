package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.entity.Users;
import com.spring.repository.UserRepository;

 

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public void register(Users user) {
        userRepository.save(user);
    }

    public boolean userNameExists(String usersname) {
        Users user = userRepository.findByUsername(usersname);
        return user != null;
    }
    
    public void updatePassword(Users user, String newPassword) {
        user.setPassword(newPassword);
        userRepository.save(user);
    }

 

}