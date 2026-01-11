package com.sdr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.sdr.dao.UserDAO;

@Controller
@RequestMapping("/login")
public class LoginController {

    @GetMapping
    public String loginPage() {
        return "login";
    }

    @PostMapping
    public String loginUser(
            @RequestParam("username") String username,
            @RequestParam("password") String password,
            Model model,
            HttpSession session) {

        if (UserDAO.login(username, password)) {
            session.setAttribute("loggedUser", username);
            model.addAttribute("success", "Login successful!");
            return "index";
        }

        model.addAttribute("error", "Invalid username or password");
        return "login";
    }
}
