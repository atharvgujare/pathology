package com.sdr.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.sdr.model.Report;
import com.sdr.util.DBUtil;

public class ReportDAO {

    // =========================
    // ADD REPORT
    // =========================
    public boolean addReport(Report r) {
        String sql = "INSERT INTO report " +
                "(patient_id, test_name, sample_type, result_value, normal_range, status, " +
                "report_date, doctor_name, technician_name, remarks) " +
                "VALUES (?,?,?,?,?,?,?,?,?,?)";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, r.getPatientId());
            ps.setString(2, r.getTestName());
            ps.setString(3, r.getSampleType());
            ps.setString(4, r.getResultValue());
            ps.setString(5, r.getNormalRange());
            ps.setString(6, r.getStatus());
            ps.setDate(7, Date.valueOf(r.getReportDate()));
            ps.setString(8, r.getDoctorName());
            ps.setString(9, r.getTechnicianName());
            ps.setString(10, r.getRemarks());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // =========================
    // GET ALL REPORTS
    // =========================
    public List<Report> getAllReports() {
        List<Report> list = new ArrayList<>();
        String sql = "SELECT * FROM report ORDER BY id DESC";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Report r = new Report();

                r.setId(rs.getInt("id"));
                r.setPatientId(rs.getInt("patient_id"));
                r.setTestName(rs.getString("test_name"));
                r.setSampleType(rs.getString("sample_type"));
                r.setResultValue(rs.getString("result_value"));
                r.setNormalRange(rs.getString("normal_range"));
                r.setStatus(rs.getString("status"));
                r.setReportDate(rs.getDate("report_date").toString());
                r.setDoctorName(rs.getString("doctor_name"));
                r.setTechnicianName(rs.getString("technician_name"));
                r.setRemarks(rs.getString("remarks"));

                list.add(r);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // =========================
    // GET REPORT BY ID
    // =========================
    public Report getReportById(int id) {
        String sql = "SELECT * FROM report WHERE id=?";
        Report r = null;

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                r = new Report();

                r.setId(rs.getInt("id"));
                r.setPatientId(rs.getInt("patient_id"));
                r.setTestName(rs.getString("test_name"));
                r.setSampleType(rs.getString("sample_type"));
                r.setResultValue(rs.getString("result_value"));
                r.setNormalRange(rs.getString("normal_range"));
                r.setStatus(rs.getString("status"));
                r.setReportDate(rs.getDate("report_date").toString());
                r.setDoctorName(rs.getString("doctor_name"));
                r.setTechnicianName(rs.getString("technician_name"));
                r.setRemarks(rs.getString("remarks"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return r;
    }

    // =========================
    // UPDATE REPORT
    // =========================
    public boolean updateReport(Report r) {
        String sql = "UPDATE report SET " +
                "patient_id=?, test_name=?, sample_type=?, result_value=?, " +
                "normal_range=?, status=?, report_date=?, doctor_name=?, " +
                "technician_name=?, remarks=? WHERE id=?";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, r.getPatientId());
            ps.setString(2, r.getTestName());
            ps.setString(3, r.getSampleType());
            ps.setString(4, r.getResultValue());
            ps.setString(5, r.getNormalRange());
            ps.setString(6, r.getStatus());
            ps.setDate(7, Date.valueOf(r.getReportDate()));
            ps.setString(8, r.getDoctorName());
            ps.setString(9, r.getTechnicianName());
            ps.setString(10, r.getRemarks());
            ps.setInt(11, r.getId());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // =========================
    // DELETE REPORT
    // =========================
    public boolean deleteReport(int id) {
        String sql = "DELETE FROM report WHERE id=?";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    
    // =========================

  public int getReportCount() {

    int count = 0;
    String sql = "SELECT COUNT(*) FROM report";

    try (Connection con = DBUtil.getConnection();
         PreparedStatement ps = con.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        if (rs.next()) {
            count = rs.getInt(1);
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

    return count;
}
  
//ReportDAO.java
public int getTotalReports() {

   int count = 0;
   String sql = "SELECT COUNT(*) FROM report";

   try (Connection con = DBUtil.getConnection();
        PreparedStatement ps = con.prepareStatement(sql);
        ResultSet rs = ps.executeQuery()) {

       if (rs.next()) {
           count = rs.getInt(1);
       }

   } catch (Exception e) {
       e.printStackTrace();
   }

   return count;
}


  
  

}
