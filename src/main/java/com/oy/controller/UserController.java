package com.oy.controller;

import com.oy.entity.User;
import com.oy.service.UserServices;
import com.sun.deploy.net.HttpResponse;
import com.sun.org.glassfish.gmbal.ParameterNames;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;



@Controller
@RequestMapping("user")
public class UserController {
    @Autowired(required = true)
    private UserServices userServices;

    @RequestMapping("/login")
    public String login(User user, HttpSession session, Model model){
        User loginUser = userServices.selectLogin(user);
        if(loginUser!=null){
            session.setAttribute("user",user);
            return "redirect:findAll";
        }else {
            session.setAttribute("message","username or password are wrong");
            return "redirect:/";
        }
    }
    @RequestMapping("/findAll")
    public String findAll(HttpServletRequest request) {
        List<User> list =userServices.findAll();
        request.setAttribute("userList",list);
        return "userlist";
    }
    @RequestMapping("logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }
    @RequestMapping("/findById")
    public String findById(int id ,HttpServletRequest request) {
        List<User> user = userServices.findById(id);
        System.out.println("--------------------------");
        request.setAttribute("userList",user);
        System.out.println("-----------7777---------------");
        return "userlist";
    }
    @RequestMapping("toAddUser")
    public String toAdd(){
        return "adduser";
    }
    @RequestMapping("/add")
    public String addUser(User user,HttpServletRequest request) {
        userServices.addUser(user);
        List<User> userList = userServices.findAll();
        request.setAttribute("userList",userList);
        return "userlist";
    }
    @RequestMapping("/toUpdate")
    public String toUpdate(@Param("id") int id,HttpServletRequest request,Model model){
        List<User> list = userServices.findAll();
        request.setAttribute("userList",list);
        model.addAttribute("user_id",id);
        return "updateUser";
    }
    @RequestMapping("/update")
    public String updateUserById(User user,HttpServletRequest request){
        userServices.updateUserById(user);
        List<User> list = userServices.findAll();
        request.setAttribute("userList",list);
        return "userlist";
    }
    @RequestMapping("/delete")
    public String deleteUserById(@Param("id") int id,HttpServletRequest request) {
        userServices.deleteUserById(id);
        List<User> list = userServices.findAll();
        request.setAttribute("userList",list);
        return "userlist";
    }

}
