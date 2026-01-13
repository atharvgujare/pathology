package com.sdr.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import com.sdr.model.Report;
import com.sdr.util.DBUtil;

public class ReportDAO {

    public boolean addReport(Report r) {

        String sql = "INSERT INTO report " +
                "(patient_id, test_name, test_category, report_date, result_summary, remarks, report_file) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, r.getPatientId());
            ps.setString(2, r.getTestName());
            ps.setString(3, r.getTestCategory());
            ps.setDate(4, Date.valueOf(r.getReportDate()));
            ps.setString(5, r.getResultSummary());
            ps.setString(6, r.getRemarks());
            ps.setString(7, r.getReportFile());

            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Report> getAllReports() {

        List<Report> list = new ArrayList<>();

        String sql =
            "SELECT r.*, p.first_name, p.last_name " +
            "FROM report r JOIN patient p ON r.patient_id = p.id " +
            "ORDER BY r.created_at DESC";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Report r = new Report();
                r.setId(rs.getInt("id"));
                r.setPatientId(rs.getInt("patient_id"));
                r.setPatientName(
                        rs.getString("first_name") + " " + rs.getString("last_name")
                );
                r.setTestName(rs.getString("test_name"));
                r.setTestCategory(rs.getString("test_category"));
                r.setReportDate(rs.getDate("report_date").toString());
                r.setResultSummary(rs.getString("result_summary"));
                r.setRemarks(rs.getString("remarks"));
                r.setReportFile(rs.getString("report_file"));
                list.add(r);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Report getReportById(int id) {

        Report r = null;

        String sql =
            "SELECT r.*, p.first_name, p.last_name " +
            "FROM report r JOIN patient p ON r.patient_id = p.id WHERE r.id=?";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                r = new Report();
                r.setId(rs.getInt("id"));
                r.setPatientId(rs.getInt("patient_id"));
                r.setPatientName(
                        rs.getString("first_name") + " " + rs.getString("last_name")
                );
                r.setTestName(rs.getString("test_name"));
                r.setTestCategory(rs.getString("test_category"));
                r.setReportDate(rs.getDate("report_date").toString());
                r.setResultSummary(rs.getString("result_summary"));
                r.setRemarks(rs.getString("remarks"));
                r.setReportFile(rs.getString("report_file"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return r;
    }

    public boolean updateReport(Report r) {

        String sql =
            "UPDATE report SET patient_id=?, test_name=?, test_category=?, report_date=?, " +
            "result_summary=?, remarks=? WHERE id=?";

        try (Connection con = DBUtil.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, r.getPatientId());
            ps.setString(2, r.getTestName());
            ps.setString(3, r.getTestCategory());
            ps.setDate(4, Date.valueOf(r.getReportDate()));
            ps.setString(5, r.getResultSummary());
            ps.setString(6, r.getRemarks());
            ps.setInt(7, r.getId());

            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

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
}
