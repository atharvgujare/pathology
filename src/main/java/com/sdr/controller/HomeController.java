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

    // ================= HOME =================
    @GetMapping("/")
    public String home() {
        return "index";
    }
    @GetMapping("/about")
    public String about() {
        return "about";   // about.jsp
    }
    @GetMapping("/service")
    public String userservice() {
        return "service";   
    }
    
    

    // ================= LOGIN =================
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

 // ================= ADD PATIENT =================
    @GetMapping("/addPatient")
    public String addPatientPage(HttpSession session) {

        // Must be logged in
        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        String role = (String) session.getAttribute("userRole");

        // Allow ONLY ADMIN + STAFF
        if (!("ADMIN".equals(role)
                || "RECEPTIONIST".equals(role)
                || "TECHNICIAN".equals(role))) {
            return "redirect:/"; // USER blocked
        }

        return "addPatient"; // addPatient.jsp
    }


    @PostMapping("/savePatient")
    public String savePatient(@ModelAttribute Patient patient,
                              HttpSession session) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        String role = (String) session.getAttribute("userRole");

        // Security: only ADMIN + STAFF can save
        if (!("ADMIN".equals(role)
                || "RECEPTIONIST".equals(role)
                || "TECHNICIAN".equals(role))) {
            return "redirect:/";
        }

        patientService.addPatient(patient);

        return "redirect:/patients"; // ✅ patientList.jsp
    }


    // ================= DASHBOARD =================
    @GetMapping("/dashboard")
    public String dashboard(Model model, HttpSession session) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        // Only ADMIN allowed
        if (!"ADMIN".equals(session.getAttribute("userRole"))) {
            return "redirect:/";
        }

        model.addAttribute("totalPatients",
                patientService.getTotalPatients());

        model.addAttribute("totalAppointments",
                appointmentService.getTotalAppointments());

        model.addAttribute("totalReports",
                reportService.getTotalReports());

        model.addAttribute("recentAppointments",
                appointmentService.getRecentAppointments());

        model.addAttribute("username",
                session.getAttribute("loggedUser"));

        return "dashboard";
    }


}
