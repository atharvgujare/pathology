package com.sdr.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.sdr.model.Patient;
import com.sdr.service.PatientService;

@Controller
public class PatientController {

    private PatientService patientService = new PatientService();

    @GetMapping("/patients")
    public String viewPatients(Model model, HttpSession session) {
        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }
        model.addAttribute("patients", patientService.getAllPatients());
        return "patientList";
    }

    @GetMapping("/editPatient")
    public String editPatient(@RequestParam int id, Model model) {
        model.addAttribute("patient", patientService.getPatientById(id));
        return "editPatient";
    }

    @PostMapping("/updatePatient")
    public String updatePatient(@ModelAttribute Patient patient) {
        patientService.updatePatient(patient);
        return "redirect:/patients";
    }
    
    @GetMapping("/deletePatient")
    public String deletePatient(@RequestParam int id, HttpSession session) {

        if (session.getAttribute("loggedUser") == null) {
            return "redirect:/login";
        }

        patientService.deletePatient(id);
        return "redirect:/patients";
    }

}
