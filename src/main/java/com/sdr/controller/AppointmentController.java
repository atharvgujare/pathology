package com.sdr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.sdr.model.Appointment;
import com.sdr.service.AppointmentService;

@Controller
public class AppointmentController {

    private AppointmentService appointmentService = new AppointmentService();

    @GetMapping("/addAppointment")
    public String showAppointmentForm(HttpSession session) {
        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }
        return "addAppointment";
    }

    @PostMapping("/saveAppointment")
    public String saveAppointment(@ModelAttribute Appointment appointment,
                                  HttpSession session,
                                  Model model) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        appointmentService.addAppointment(appointment);
        return "redirect:/appointments";
    }
    
    @GetMapping("/appointments")
    public String viewAppointments(Model model, HttpSession session) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        model.addAttribute("appointments", appointmentService.getAllAppointments());
        return "appointmentList";
    }
    
 // EDIT PAGE
    @GetMapping("/editAppointment")
    public String editAppointment(@RequestParam int id,
                                  Model model,
                                  HttpSession session) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        model.addAttribute("appointment",
                appointmentService.getAppointmentById(id));

        return "editAppointment";
    }

    // UPDATE
    @PostMapping("/updateAppointment")
    public String updateAppointment(@ModelAttribute Appointment appointment,
                                    HttpSession session) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        appointmentService.updateAppointment(appointment);
        return "redirect:/appointments";
    }

    // DELETE
    @GetMapping("/deleteAppointment")
    public String deleteAppointment(@RequestParam int id,
                                    HttpSession session) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        appointmentService.deleteAppointment(id);
        return "redirect:/appointments";
    }


}
