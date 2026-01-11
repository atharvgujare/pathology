package com.sdr.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.sdr.model.Patient;
import com.sdr.service.PatientService;

@Controller
@RequestMapping("/patients")
public class PatientController {

    private PatientService patientService = new PatientService();

    // VIEW ALL PATIENTS
    @GetMapping("/list")
    public String patientList(Model model) {
        List<Patient> list = patientService.getAllPatients();
        model.addAttribute("patients", list);
        return "patientList";
    }

    // OPEN EDIT PAGE
    @GetMapping("/edit/{id}")
    public String editPatient(@PathVariable int id, Model model) {
        Patient patient = patientService.getPatientById(id);
        model.addAttribute("patient", patient);
        return "editPatient";
    }

    // UPDATE PATIENT
    @PostMapping("/update")
    public String updatePatient(@ModelAttribute Patient patient) {
        patientService.updatePatient(patient);
        return "redirect:/patients/list";
    }

    // DELETE PATIENT
    @GetMapping("/delete/{id}")
    public String deletePatient(@PathVariable int id) {
        patientService.deletePatient(id);
        return "redirect:/patients/list";
    }
}
