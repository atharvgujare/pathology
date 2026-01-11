package com.sdr.service;

import java.util.List;
import com.sdr.dao.PatientDAO;
import com.sdr.model.Patient;

public class PatientService {

    private PatientDAO patientDAO = new PatientDAO();

    // CREATE
    public void addPatient(Patient patient) {
        patientDAO.addPatient(patient);
    }

    // READ (ALL)
    public List<Patient> getAllPatients() {
        return patientDAO.getAllPatients();
    }

    // READ (BY ID)
    public Patient getPatientById(int id) {
        return patientDAO.getPatientById(id);
    }

    // UPDATE
    public void updatePatient(Patient patient) {
        patientDAO.updatePatient(patient);
    }

    // DELETE
    public void deletePatient(int id) {
        patientDAO.deletePatient(id);
    }
}
