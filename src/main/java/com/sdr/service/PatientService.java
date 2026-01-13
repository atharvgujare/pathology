package com.sdr.service;

import java.util.List;
import com.sdr.dao.PatientDAO;
import com.sdr.model.Patient;

public class PatientService {

    private PatientDAO patientDAO = new PatientDAO();

    public boolean addPatient(Patient p) {
        return patientDAO.addPatient(p);
    }

    public List<Patient> getAllPatients() {
        return patientDAO.getAllPatients();
    }

    public Patient getPatientById(int id) {
        return patientDAO.getPatientById(id);
    }

    public boolean updatePatient(Patient p) {
        return patientDAO.updatePatient(p);
    }
    
    public boolean deletePatient(int id) {
        return patientDAO.deletePatient(id);
    }
    
    public int getTotalPatients() {
        return patientDAO.getTotalPatients();
    }
    
    


}
