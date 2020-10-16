package com.oy.service.impl;

import com.oy.entity.User;
import com.oy.mapper.UserMapper;
import com.oy.service.UserServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional(rollbackFor = Exception.class)
@Service
public class UserServicesImpl implements UserServices {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User selectLogin(User user) {
        return userMapper.selectLogin(user);
    }

    @Override
    public List<User> findAll() {
        return userMapper.findAll();
    }

    @Override
    public List<User> findById(int id) {
        return userMapper.findById(id);
    }

    @Override
    public void addUser(User user) {
        userMapper.addUser(user);
    }

    @Override
    public void updateUserById(User user) {
         userMapper.updateUserById(user);
    }

    @Override
    public void deleteUserById(int id) {
        userMapper.deleteUserById(id);
    }
}
