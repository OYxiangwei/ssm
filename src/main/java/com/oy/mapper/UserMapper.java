package com.oy.mapper;

import com.oy.entity.User;

import java.util.List;

public interface UserMapper {
    User selectLogin(User user);
    List<User> findAll();
    List<User> findById(int id);
    void addUser(User user);
    void updateUserById(User user);
    void deleteUserById(int id);

}
