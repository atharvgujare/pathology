package com.sdr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sdr.dao.UserDAO;
import com.sdr.model.Staff;
import com.sdr.service.StaffService;

@Controller
public class LoginController {

    @Autowired
    private StaffService staffService;

    @PostMapping("/login")
    public String login(
            @RequestParam String username,
            @RequestParam String password,
            @RequestParam String role,
            HttpSession session,
            Model model) {

        // ---------- USER LOGIN ----------
        if ("USER".equals(role)) {

            // Example: if you have UserService
            // User user = userService.login(username, password);

            if (username != null && !username.isEmpty()) {
                session.setAttribute("loggedUser", username);
                session.setAttribute("userRole", "USER");

                return "redirect:/"; // ✅ index.jsp
            }

            model.addAttribute("error", "Invalid user credentials");
            return "login";
        }

        // ---------- ADMIN & STAFF LOGIN ----------
        if ("ADMIN".equals(role)
                || "RECEPTIONIST".equals(role)
                || "TECHNICIAN".equals(role)) {

            Staff staff = staffService.login(username, password);

            if (staff != null && staff.getRole().equals(role)) {

                session.setAttribute("staff", staff);
                session.setAttribute("staffRole", staff.getRole());
                session.setAttribute("loggedUser", staff.getUsername());
                session.setAttribute("userRole", staff.getRole());

                // 🔥 ROLE BASED REDIRECT
                if ("ADMIN".equals(role)) {
                    return "redirect:/dashboard";
                } else {
                    return "redirect:/staff/dashboard";
                }
            }

            model.addAttribute("error", "Invalid staff credentials");
            return "login";
        }

        // ---------- FALLBACK ----------
        model.addAttribute("error", "Invalid role selected");
        return "login";
    }

}
