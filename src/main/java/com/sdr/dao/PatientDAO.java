package com.sdr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sdr.model.Appointment;
import com.sdr.model.Patient;
import com.sdr.util.DBUtil;

public class PatientDAO {

    // ---------------- ADD PATIENT ----------------
    public boolean addPatient(Patient p) {

        String sql = "INSERT INTO patient " +
                "(first_name, last_name, gender, birth_date, mobile, email, aadhaar, address, admission_date) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, p.getFirstName());
            ps.setString(2, p.getLastName());
            ps.setString(3, p.getGender());
            ps.setDate(4, java.sql.Date.valueOf(p.getBirthDate()));
            ps.setString(5, p.getMobile());
            ps.setString(6, p.getEmail());
            ps.setString(7, p.getAadhaar());
            ps.setString(8, p.getAddress());
            ps.setDate(9, java.sql.Date.valueOf(p.getAdmissionDate()));

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // ---------------- GET ALL PATIENTS ----------------
    public List<Patient> getAllPatients() {

        List<Patient> list = new ArrayList<>();
        String sql = "SELECT * FROM patient ORDER BY created_at DESC";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Patient p = new Patient();
                p.setId(rs.getInt("id"));
                p.setFirstName(rs.getString("first_name"));
                p.setLastName(rs.getString("last_name"));
                p.setGender(rs.getString("gender"));
                p.setBirthDate(rs.getDate("birth_date").toString());
                p.setMobile(rs.getString("mobile"));
                p.setEmail(rs.getString("email"));
                p.setAadhaar(rs.getString("aadhaar"));
                p.setAddress(rs.getString("address"));
                p.setAdmissionDate(rs.getDate("admission_date").toString());
                list.add(p);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // ---------------- GET PATIENT BY ID ----------------
    public Patient getPatientById(int id) {

        Patient p = null;
        String sql = "SELECT * FROM patient WHERE id=?";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                p = new Patient();
                p.setId(rs.getInt("id"));
                p.setFirstName(rs.getString("first_name"));
                p.setLastName(rs.getString("last_name"));
                p.setGender(rs.getString("gender"));
                p.setBirthDate(rs.getDate("birth_date").toString());
                p.setMobile(rs.getString("mobile"));
                p.setEmail(rs.getString("email"));
                p.setAadhaar(rs.getString("aadhaar"));
                p.setAddress(rs.getString("address"));
                p.setAdmissionDate(rs.getDate("admission_date").toString());
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    // ---------------- UPDATE PATIENT ----------------
    public boolean updatePatient(Patient p) {

        String sql = "UPDATE patient SET " +
                "first_name=?, last_name=?, gender=?, birth_date=?, mobile=?, email=?, aadhaar=?, address=?, admission_date=? " +
                "WHERE id=?";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, p.getFirstName());
            ps.setString(2, p.getLastName());
            ps.setString(3, p.getGender());
            ps.setDate(4, java.sql.Date.valueOf(p.getBirthDate()));
            ps.setString(5, p.getMobile());
            ps.setString(6, p.getEmail());
            ps.setString(7, p.getAadhaar());
            ps.setString(8, p.getAddress());
            ps.setDate(9, java.sql.Date.valueOf(p.getAdmissionDate()));
            ps.setInt(10, p.getId());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // ---------------- DELETE PATIENT ----------------
    public boolean deletePatient(int id) {

        String sql = "DELETE FROM patient WHERE id=?";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // ---------------- COUNT PATIENTS ----------------
    public int getTotalPatients() {

        String sql = "SELECT COUNT(*) FROM patient";

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
    
    public List<Appointment> getRecentAppointments() {

        List<Appointment> list = new ArrayList<>();
        String sql = "SELECT * FROM appointment ORDER BY created_at DESC LIMIT 5";

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
