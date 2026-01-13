<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Appointment List</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>

<div class="container mt-4">

    <h2 class="text-center mb-4">Appointment List</h2>

    <div class="table-responsive">
        <table class="table table-bordered table-hover align-middle">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Patient ID</th>
                    <th>Patient Name</th>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Doctor</th>
                    <th>Department</th>
                    <th>Status</th>
                    <th style="width:160px;">Actions</th>
                </tr>
            </thead>
            <tbody>

                <c:choose>
                    <c:when test="${empty appointments}">
                        <tr>
                            <td colspan="9" class="text-center text-danger">
                                No appointments found.
                            </td>
                        </tr>
                    </c:when>

                    <c:otherwise>
                        <c:forEach var="a" items="${appointments}" varStatus="status">
                            <tr>
                                <td>${status.index + 1}</td>
                                <td>${a.patientId}</td>
                                <td>${a.patientName}</td>
                                <td>${a.appointmentDate}</td>
                                <td>${a.appointmentTime}</td>
                                <td>${a.doctorName}</td>
                                <td>${a.department}</td>
                                <td>${a.status}</td>
                                <td>
                                    <a href="editAppointment?id=${a.id}"
                                       class="btn btn-warning btn-sm">
                                        Edit
                                    </a>

                                    <a href="deleteAppointment?id=${a.id}"
                                       onclick="return confirm('Are you sure you want to delete this appointment?')"
                                       class="btn btn-danger btn-sm ms-1">
                                        Delete
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>

            </tbody>
        </table>
    </div>

    <div class="text-center mt-3">
        <a href="addAppointment" class="btn btn-success me-2">Add Appointment</a>
        <a href="dashboard" class="btn btn-secondary">Back to Dashboard</a>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
