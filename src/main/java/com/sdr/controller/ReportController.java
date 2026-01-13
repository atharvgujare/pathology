package com.sdr.controller;

import java.io.File;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import com.sdr.model.Report;
import com.sdr.service.ReportService;

@Controller
public class ReportController {

    private ReportService reportService = new ReportService();

    @GetMapping("/addReport")
    public String addReport(HttpSession session) {
        if (session.getAttribute("loggedUser") == null) return "redirect:/login";
        return "addReport";
    }

    @PostMapping("/saveReport")
    public String saveReport(
            @RequestParam(required = false, defaultValue = "0") int patientId,
            @RequestParam String testName,
            @RequestParam String testCategory,
            @RequestParam String reportDate,
            @RequestParam String resultSummary,
            @RequestParam String remarks,
            @RequestParam MultipartFile reportFile,
            HttpSession session) {

        if (session.getAttribute("loggedUser") == null) return "redirect:/login";
        if (patientId == 0) return "redirect:/addReport";

        try {
            String uploadPath =
                session.getServletContext().getRealPath("/uploads/reports/");
            File dir = new File(uploadPath);
            if (!dir.exists()) dir.mkdirs();

            String fileName = reportFile.getOriginalFilename();
            reportFile.transferTo(new File(uploadPath + fileName));

            Report r = new Report();
            r.setPatientId(patientId);
            r.setTestName(testName);
            r.setTestCategory(testCategory);
            r.setReportDate(reportDate);
            r.setResultSummary(resultSummary);
            r.setRemarks(remarks);
            r.setReportFile(fileName);

            reportService.addReport(r);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "redirect:/reports";
    }

    @GetMapping("/reports")
    public String reports(Model model, HttpSession session) {
        if (session.getAttribute("loggedUser") == null) return "redirect:/login";
        model.addAttribute("reports", reportService.getAllReports());
        return "reportList";
    }

    @GetMapping("/editReport")
    public String editReport(@RequestParam int id, Model model, HttpSession session) {
        if (session.getAttribute("loggedUser") == null) return "redirect:/login";
        model.addAttribute("report", reportService.getReportById(id));
        return "editReport";
    }

    @PostMapping("/updateReport")
    public String updateReport(@ModelAttribute Report report, HttpSession session) {
        if (session.getAttribute("loggedUser") == null) return "redirect:/login";
        reportService.updateReport(report);
        return "redirect:/reports";
    }

    @GetMapping("/deleteReport")
    public String deleteReport(@RequestParam int id, HttpSession session) {
        if (session.getAttribute("loggedUser") == null) return "redirect:/login";
        reportService.deleteReport(id);
        return "redirect:/reports";
    }
}
