package com.sdr.service;

import java.util.List;
import com.sdr.dao.ReportDAO;
import com.sdr.model.Report;

public class ReportService {

    private ReportDAO reportDAO = new ReportDAO();

    public boolean addReport(Report r) {
        return reportDAO.addReport(r);
    }

    public List<Report> getAllReports() {
        return reportDAO.getAllReports();
    }

    public Report getReportById(int id) {
        return reportDAO.getReportById(id);
    }

    public boolean updateReport(Report r) {
        return reportDAO.updateReport(r);
    }

    public boolean deleteReport(int id) {
        return reportDAO.deleteReport(id);
    }
}
