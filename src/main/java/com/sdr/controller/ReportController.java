package com.sdr.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.sdr.model.Report;
import com.sdr.service.ReportService;

@Controller
public class ReportController {

    private final ReportService reportService = new ReportService();
    
    // =========================
    // SESSION CHECK (SAFE)
    // =========================
    private boolean isLoggedIn(HttpSession session) {
        return session.getAttribute("username") != null
            || session.getAttribute("loggedUser") != null;
    }

    // =========================
    // ADD REPORT PAGE
    // =========================
    @GetMapping("/addReport")
    public String addReport(HttpSession session) {
        if (!isLoggedIn(session)) {
            return "redirect:/login";
        }
        return "addReport";
    }

    // =========================
    // SAVE REPORT
    // =========================
    @PostMapping("/saveReport")
    public String saveReport(@ModelAttribute Report report,
                             HttpSession session) {

        if (!isLoggedIn(session)) {
            return "redirect:/login";
        }

        reportService.addReport(report);
        return "redirect:/reports";
    }

    // =========================
    // REPORT LIST
    // =========================
    @GetMapping("/reports")
    public String reportList(Model model,
                             HttpSession session) {

        if (!isLoggedIn(session)) {
            return "redirect:/login";
        }

        model.addAttribute("reports",
                reportService.getAllReports());

        return "reportList";
    }

    // =========================
    // EDIT REPORT PAGE  ✅ FIXED
    // =========================
    @GetMapping("/editReport")
    public String editReport(@RequestParam("id") int id,
                             Model model,
                             HttpSession session) {

        System.out.println("EDIT REPORT HIT → id = " + id);

        if (!isLoggedIn(session)) {
            System.out.println("SESSION INVALID → REDIRECT");
            return "redirect:/reports";
        }

        Report report = reportService.getReportById(id);

        if (report == null) {
            System.out.println("REPORT NOT FOUND → REDIRECT");
            return "redirect:/reports";
        }

        model.addAttribute("report", report);
        return "editReport";   // opens editReport.jsp
    }

    // =========================
    // UPDATE REPORT
    // =========================
    @PostMapping("/updateReport")
    public String updateReport(@ModelAttribute Report report,
                               HttpSession session) {

        if (!isLoggedIn(session)) {
            return "redirect:/login";
        }

        reportService.updateReport(report);
        return "redirect:/reports";
    }

    // =========================
    // DELETE REPORT
    // =========================
    @GetMapping("/deleteReport")
    public String deleteReport(@RequestParam("id") int id,
                               HttpSession session) {

        if (!isLoggedIn(session)) {
            return "redirect:/login";
        }

        reportService.deleteReport(id);
        return "redirect:/reports";
    }
    
    
    
}
