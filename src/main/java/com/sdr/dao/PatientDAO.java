package com.sdr.dao;

import java.sql.*;
import java.util.*;

import com.sdr.model.Patient;
import com.sdr.util.DBUtil;

public class PatientDAO {

    // ================= CREATE (ADD PATIENT) =================
    public boolean addPatient(Patient p) {
        String sql = "INSERT INTO patient " +
                "(first_name, last_name, gender, birth_date, mobile, email, aadhar, address, admission_date) " +
                "VALUES (?,?,?,?,?,?,?,?,?)";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, p.getFirstName());
            ps.setString(2, p.getLastName());
            ps.setString(3, p.getGender());
            ps.setDate(4, p.getBirthDate());
            ps.setString(5, p.getMobile());
            ps.setString(6, p.getEmail());
            ps.setString(7, p.getAadhaar()); // column = aadhar
            ps.setString(8, p.getAddress());
            ps.setDate(9, p.getAdmissionDate());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // ================= READ (ALL PATIENTS) =================
    public List<Patient> getAllPatients() {
        List<Patient> list = new ArrayList<>();
        String sql = "SELECT * FROM patient";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Patient p = new Patient();
                p.setId(rs.getInt("id"));
                p.setFirstName(rs.getString("first_name"));
                p.setLastName(rs.getString("last_name"));
                p.setGender(rs.getString("gender"));
                p.setBirthDate(rs.getDate("birth_date"));
                p.setMobile(rs.getString("mobile"));
                p.setEmail(rs.getString("email"));
                p.setAadhaar(rs.getString("aadhar"));
                p.setAddress(rs.getString("address"));
                p.setAdmissionDate(rs.getDate("admission_date"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // ================= READ (BY ID) =================
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
                p.setBirthDate(rs.getDate("birth_date"));
                p.setMobile(rs.getString("mobile"));
                p.setEmail(rs.getString("email"));
                p.setAadhaar(rs.getString("aadhar"));
                p.setAddress(rs.getString("address"));
                p.setAdmissionDate(rs.getDate("admission_date"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return p;
    }

    // ================= UPDATE =================
    public boolean updatePatient(Patient p) {
        String sql = "UPDATE patient SET " +
                "first_name=?, last_name=?, gender=?, birth_date=?, mobile=?, email=?, aadhar=?, address=?, admission_date=? " +
                "WHERE id=?";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, p.getFirstName());
            ps.setString(2, p.getLastName());
            ps.setString(3, p.getGender());
            ps.setDate(4, p.getBirthDate());
            ps.setString(5, p.getMobile());
            ps.setString(6, p.getEmail());
            ps.setString(7, p.getAadhaar());
            ps.setString(8, p.getAddress());
            ps.setDate(9, p.getAdmissionDate());
            ps.setInt(10, p.getId());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // ================= DELETE =================
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
}
