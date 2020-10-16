package com.oy.service;

import com.oy.entity.User;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface UserServices {
    User selectLogin(User user);
    List<User> findAll();
    List<User> findById(int id);
    void addUser(User user);
    void updateUserById(User user);
    void deleteUserById(int id);
}
