package com.sdr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sdr.model.Appointment;
import com.sdr.util.DBUtil;

public class AppointmentDAO {

    // ---------------- ADD APPOINTMENT ----------------
    public boolean addAppointment(Appointment a) {

        String sql = "INSERT INTO appointment " +
                "(patient_id, patient_name, appointment_date, appointment_time, doctor_name, department, visit_type, status, symptoms, remarks) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, a.getPatientId());
            ps.setString(2, a.getPatientName());
            ps.setDate(3, java.sql.Date.valueOf(a.getAppointmentDate()));
            ps.setTime(4, java.sql.Time.valueOf(a.getAppointmentTime() + ":00"));
            ps.setString(5, a.getDoctorName());
            ps.setString(6, a.getDepartment());
            ps.setString(7, a.getVisitType());
            ps.setString(8, a.getStatus());
            ps.setString(9, a.getSymptoms());
            ps.setString(10, a.getRemarks());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace(); // IMPORTANT
        }
        return false;
    }

    // ---------------- VIEW ALL APPOINTMENTS ----------------
    public List<Appointment> getAllAppointments() {

        List<Appointment> list = new ArrayList<>();

        String sql = "SELECT * FROM appointment ORDER BY created_at DESC";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Appointment a = new Appointment();

                a.setId(rs.getInt("id"));
                a.setPatientId(rs.getInt("patient_id"));
                a.setPatientName(rs.getString("patient_name"));
                a.setAppointmentDate(rs.getDate("appointment_date").toString());
                a.setAppointmentTime(rs.getTime("appointment_time").toString());
                a.setDoctorName(rs.getString("doctor_name"));
                a.setDepartment(rs.getString("department"));
                a.setVisitType(rs.getString("visit_type"));
                a.setStatus(rs.getString("status"));
                a.setSymptoms(rs.getString("symptoms"));
                a.setRemarks(rs.getString("remarks"));

                list.add(a);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
    
    
 // ---------------- GET APPOINTMENT BY ID ----------------
    public Appointment getAppointmentById(int id) {

        Appointment a = null;
        String sql = "SELECT * FROM appointment WHERE id=?";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                a = new Appointment();
                a.setId(rs.getInt("id"));
                a.setPatientId(rs.getInt("patient_id"));
                a.setPatientName(rs.getString("patient_name"));
                a.setAppointmentDate(rs.getDate("appointment_date").toString());
                a.setAppointmentTime(rs.getTime("appointment_time").toString());
                a.setDoctorName(rs.getString("doctor_name"));
                a.setDepartment(rs.getString("department"));
                a.setVisitType(rs.getString("visit_type"));
                a.setStatus(rs.getString("status"));
                a.setSymptoms(rs.getString("symptoms"));
                a.setRemarks(rs.getString("remarks"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return a;
    }

    // ---------------- UPDATE APPOINTMENT ----------------
    public boolean updateAppointment(Appointment a) {

        String sql = "UPDATE appointment SET " +
                "patient_id=?, patient_name=?, appointment_date=?, appointment_time=?, doctor_name=?, department=?, visit_type=?, status=?, symptoms=?, remarks=? " +
                "WHERE id=?";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, a.getPatientId());
            ps.setString(2, a.getPatientName());
            ps.setDate(3, java.sql.Date.valueOf(a.getAppointmentDate()));
            ps.setTime(4, java.sql.Time.valueOf(a.getAppointmentTime() + ":00"));
            ps.setString(5, a.getDoctorName());
            ps.setString(6, a.getDepartment());
            ps.setString(7, a.getVisitType());
            ps.setString(8, a.getStatus());
            ps.setString(9, a.getSymptoms());
            ps.setString(10, a.getRemarks());
            ps.setInt(11, a.getId());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    // ---------------- DELETE APPOINTMENT ----------------
    public boolean deleteAppointment(int id) {

        String sql = "DELETE FROM appointment WHERE id=?";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
    
    
    public int getTotalAppointments() {

        String sql = "SELECT COUNT(*) FROM appointment";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return 0;
    }
    
 // ---------------- RECENT APPOINTMENTS ----------------
    public List<Appointment> getRecentAppointments() {

        List<Appointment> list = new ArrayList<>();
        String sql = "SELECT patient_name, appointment_date, doctor_name, status " +
                     "FROM appointment ORDER BY id DESC LIMIT 5";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Appointment a = new Appointment();
                a.setPatientName(rs.getString("patient_name"));
                a.setAppointmentDate(rs.getDate("appointment_date").toString());
                a.setDoctorName(rs.getString("doctor_name"));
                a.setStatus(rs.getString("status"));
                list.add(a);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }




}
