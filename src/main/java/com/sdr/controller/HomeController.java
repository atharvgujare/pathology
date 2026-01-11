package com.sdr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.sdr.model.Patient;
import com.sdr.service.PatientService;

@Controller
public class HomeController {

    // Service object
    private PatientService patientService = new PatientService();

    // Default page
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

    // Dashboard page
    @GetMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }
    
   
}
