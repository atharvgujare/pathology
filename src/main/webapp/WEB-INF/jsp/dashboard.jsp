<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <style>
        body {
            background: linear-gradient(120deg, #141e30, #243b55);
            min-height: 100vh;
            color: #fff;
        }

        .card {
            border-radius: 15px;
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .stat-card {
            background: linear-gradient(135deg, #ffc107, #ff9800);
            color: #000;
        }

        .welcome-card {
            background: linear-gradient(135deg, #00c6ff, #0072ff);
        }
    </style>
</head>
<body>

<div class="container py-5">

    <!-- HEADER -->
    <div class="row mb-4">
        <div class="col text-center">
            <h2>Pathology Management Dashboard</h2>
            <p class="opacity-75">Welcome, ${username}</p>
        </div>
    </div>

    <!-- DASHBOARD CARDS -->
    <div class="row g-4 justify-content-center">

        <!-- Welcome Card -->
        <div class="col-md-4">
            <div class="card welcome-card text-center p-4 shadow">
                <h5>Hello 👋</h5>
                <p class="mt-2">
                    Manage patients, appointments, and reports easily.
                </p>
            </div>
        </div>

        <!-- Total Patients -->
        <div class="col-md-4">
            <div class="card stat-card text-center p-4 shadow">
                <h5>Total Patients</h5>
                <h1 class="fw-bold">${totalPatients}</h1>
                <a href="patients" class="btn btn-dark btn-sm mt-2">
                    View Patients
                </a>
            </div>
        </div>
        
        <div class="col-md-4">
            <div class="card text-center p-4 shadow"
               style="background: linear-gradient(135deg, #6f42c1, #845ef7); color:white;">
               <h5>Total Reports</h5>
               <h1 class="fw-bold">${totalReports}</h1>
               <a href="reports" class="btn btn-light btn-sm mt-2">
               View Reports
              </a>
           </div>
        </div>


        <!-- Total Appointments -->
        <div class="col-md-4">
            <div class="card text-center p-4 shadow"
                 style="background: linear-gradient(135deg, #28a745, #20c997); color:white;">
                <h5>Total Appointments</h5>
                <h1 class="fw-bold">${totalAppointments}</h1>
                <a href="appointments" class="btn btn-light btn-sm mt-2">
                    View Appointments
                </a>
            </div>
        </div>
        
        
        

    </div>

    <!-- RECENT APPOINTMENTS -->
    <div class="row mt-5">
        <div class="col-md-10 mx-auto">
            <div class="card shadow">
                <div class="card-header bg-dark text-white">
                    Recent Appointments
                </div>

                <table class="table mb-0">
                    <thead>
                        <tr>
                            <th>Patient</th>
                            <th>Date</th>
                            <th>Doctor</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>

                        <c:choose>
                            <c:when test="${empty recentAppointments}">
                                <tr>
                                    <td colspan="4" class="text-center text-danger">
                                        No recent appointments found.
                                    </td>
                                </tr>
                            </c:when>

                            <c:otherwise>
                                <c:forEach var="a" items="${recentAppointments}">
                                    <tr>
                                        <td>${a.patientName}</td>
                                        <td>${a.appointmentDate}</td>
                                        <td>${a.doctorName}</td>
                                        <td>${a.status}</td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>

                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- ACTION BUTTONS -->
    <div class="text-center mt-5">
        <a href="addPatient" class="btn btn-success me-2">Add Patient</a>
        <a href="patients" class="btn btn-primary me-2">Patient List</a>
        <a href="appointments" class="btn btn-info me-2">Appointments</a>
        <a href="login" class="btn btn-danger">Logout</a>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
