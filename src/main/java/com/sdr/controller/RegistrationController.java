package com.sdr.controller;

import java.sql.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.sdr.dao.UserDAO;
import com.sdr.model.User;

@Controller
@RequestMapping("/register")
public class RegistrationController {

    @GetMapping
    public String registerPage() {
        return "registration";
    }

    @PostMapping
    public String registerUser(
            @RequestParam("name") String name,
            @RequestParam("username") String username,
            @RequestParam("mobile") String mobile,
            @RequestParam("email") String email,
            @RequestParam("birthdate") String birthdate,
            @RequestParam("password") String password,
            Model model) {

        User user = new User();
        user.setName(name);
        user.setUsername(username);
        user.setMobile(mobile);
        user.setEmail(email);
        user.setBirthdate(Date.valueOf(birthdate));
        user.setPassword(password);

        boolean success = UserDAO.register(user);

        if (success) {
            model.addAttribute("success", "Registration successful! Please login.");
            return "login";
        }

        model.addAttribute("error", "Registration failed. Username may already exist.");
        return "registration";
    }
}
