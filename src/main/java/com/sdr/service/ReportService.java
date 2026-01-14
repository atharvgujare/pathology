package com.sdr.service;

import java.util.List;

import com.sdr.dao.ReportDAO;
import com.sdr.model.Report;

public class ReportService {

    private ReportDAO dao = new ReportDAO();

    // =========================
    // ADD REPORT
    // =========================
    public void addReport(Report report) {
        dao.addReport(report);
    }

    // =========================
    // GET ALL REPORTS
    // =========================
    public List<Report> getAllReports() {
        return dao.getAllReports();
    }

    // =========================
    // GET REPORT BY ID
    // =========================
    public Report getReportById(int id) {
        return dao.getReportById(id);
    }

    // =========================
    // UPDATE REPORT
    // =========================
    public void updateReport(Report report) {
        dao.updateReport(report);
    }

    // =========================
    // DELETE REPORT
    // =========================
    public void deleteReport(int id) {
        dao.deleteReport(id);
    }
    
    
    public int getReportCount() {
        return dao.getReportCount();
    }
    
 
    public int getTotalReports() {
        return dao.getTotalReports();
    }


    
    

}
