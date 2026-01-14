package com.sdr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.sdr.model.Patient;
import com.sdr.service.AppointmentService;
import com.sdr.service.PatientService;
import com.sdr.service.ReportService;

@Controller
public class HomeController {

    private PatientService patientService = new PatientService();
    private AppointmentService appointmentService = new AppointmentService();
    private ReportService reportService = new ReportService();

    @GetMapping("/")
    public String home() {
        return "login";
    }
    
    
    // Open Add Patient page
    @GetMapping("/addPatient")
    public String addPatientPage() {
        return "addPatient";
    }

    // Save Patient
    @PostMapping("/savePatient")
    public String savePatient(@ModelAttribute Patient patient) {
        patientService.addPatient(patient);
        return "redirect:/patients";
    }

    @GetMapping("/dashboard")
    public String dashboard(Model model, HttpSession session) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        model.addAttribute("totalPatients",
                patientService.getTotalPatients());

        model.addAttribute("totalAppointments",
                appointmentService.getTotalAppointments());

        // ✅ ADD THIS
        model.addAttribute("totalReports",
                reportService.getTotalReports());

        model.addAttribute("recentAppointments",
                appointmentService.getRecentAppointments());

        model.addAttribute("username",
                session.getAttribute("loggedUser"));

        return "dashboard";
    }
    
    
    
    
}

