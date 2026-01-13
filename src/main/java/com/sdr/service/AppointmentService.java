package com.sdr.service;

import java.util.List;

import com.sdr.dao.AppointmentDAO;
import com.sdr.model.Appointment;

public class AppointmentService {

    private AppointmentDAO appointmentDAO = new AppointmentDAO();

    public boolean addAppointment(Appointment a) {
        return appointmentDAO.addAppointment(a);
    }

    // 🔴 THIS METHOD WAS MISSING
    public List<Appointment> getAllAppointments() {
        return appointmentDAO.getAllAppointments();
    }
    
    public Appointment getAppointmentById(int id) {
        return appointmentDAO.getAppointmentById(id);
    }

    public boolean updateAppointment(Appointment a) {
        return appointmentDAO.updateAppointment(a);
    }

    public boolean deleteAppointment(int id) {
        return appointmentDAO.deleteAppointment(id);
    }
    
    public int getTotalAppointments() {
        return appointmentDAO.getTotalAppointments();
    }
    
    public List<Appointment> getRecentAppointments() {
        return appointmentDAO.getRecentAppointments();
    }




}
