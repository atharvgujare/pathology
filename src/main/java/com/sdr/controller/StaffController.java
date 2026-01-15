package com.sdr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.sdr.model.Staff;
import com.sdr.service.StaffService;

@Controller
@RequestMapping("/staff")
public class StaffController {

    @Autowired
    private StaffService staffService;

    // -------------------- STAFF LOGIN --------------------

  

    // -------------------- STAFF DASHBOARD --------------------

    @GetMapping("/dashboard")
    public String staffDashboard(HttpSession session) {
        if (session.getAttribute("staff") == null) {
            return "redirect:/staff/login";
        }
        return "staffDashboard";
    }

    // -------------------- STAFF LIST --------------------

    @GetMapping("/list")
    public String staffList(Model model, HttpSession session) {

        if (!isAdmin(session)) {
            return "error";
        }

        model.addAttribute("staffList", staffService.getAllStaff());
        return "staffList";
    }

    // -------------------- ADD STAFF --------------------

    @GetMapping("/add")
    public String addStaffPage(Model model, HttpSession session) {

        if (!isAdmin(session)) {
            return "error";
        }

        model.addAttribute("staff", new Staff());
        return "addStaff";
    }

    @PostMapping("/save")
    public String saveStaff(@ModelAttribute Staff staff, HttpSession session) {

        if (!isAdmin(session)) {
            return "error";
        }

        staffService.addStaff(staff);
        return "redirect:/staff/list";
    }

    // -------------------- EDIT STAFF --------------------

    @GetMapping("/edit/{id}")
    public String editStaff(@PathVariable("id") int id,
                            Model model,
                            HttpSession session) {

        if (!isAdmin(session)) {
            return "error";
        }

        model.addAttribute("staff", staffService.getStaffById(id));
        return "editStaff";
    }

    @PostMapping("/update")
    public String updateStaff(@ModelAttribute Staff staff,
                              HttpSession session) {

        if (!isAdmin(session)) {
            return "error";
        }

        staffService.updateStaff(staff);
        return "redirect:/staff/list";
    }

    // -------------------- DELETE STAFF --------------------

    @GetMapping("/delete/{id}")
    public String deleteStaff(@PathVariable("id") int id,
                              HttpSession session) {

        if (!isAdmin(session)) {
            return "error";
        }

        staffService.deleteStaff(id);
        return "redirect:/staff/list";
    }

    // -------------------- LOGOUT --------------------

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/staff/login";
    }

    // -------------------- ROLE CHECK --------------------

    private boolean isAdmin(HttpSession session) {
        Object role = session.getAttribute("staffRole");
        return role != null && role.equals("ADMIN");
    }
}
