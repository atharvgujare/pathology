<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Patient List</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/patientList.css">
</head>
<body class="patient-list-page">

<div class="container patient-list-container">

    <div class="page-header">
        <h2>Patient List</h2>
        <p>Manage and review registered patients</p>
    </div>

    <!-- SEARCH BAR -->
    <div class="search-bar mb-3">
        <input type="text" id="searchInput"
               class="form-control"
               placeholder="Search by name, mobile or email...">
    </div>

    <div class="table-responsive patient-table-wrapper">
        <table class="table patient-table align-middle">
            <thead>
                <tr>
                    <th>Sr. No.</th>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Gender</th>
                    <th>Mobile</th>
                    <th>Email</th>
                    <th>Admission Date</th>
                    <th>Actions</th>
                </tr>
            </thead>

            <tbody id="patientTableBody">
                <c:choose>
                    <c:when test="${empty patients}">
                        <tr>
                            <td colspan="9" class="text-center text-danger">
                                No patients found.
                            </td>
                        </tr>
                    </c:when>

                    <c:otherwise>
                        <c:forEach var="p" items="${patients}" varStatus="status">
                            <tr class="row-animate">
                                <td>${status.index + 1}</td>
                                <td>${p.id}</td>
                                <td>${p.firstName}</td>
                                <td>${p.lastName}</td>
                                <td>${p.gender}</td>
                                <td>${p.mobile}</td>
                                <td>${p.email}</td>
                                <td>${p.admissionDate}</td>
                                <td>
                                    <a href="editPatient?id=${p.id}"
                                       class="btn btn-warning btn-sm">
                                        Edit
                                    </a>

                                    <a href="deletePatient?id=${p.id}"
                                       onclick="return confirm('Delete this patient?')"
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

    <div class="text-center mt-4">
        <a href="addPatient" class="btn btn-success me-2">
            Add Patient
        </a>
        <a href="dashboard" class="btn btn-outline-secondary">
            Back to Dashboard
        </a>
    </div>

</div>

<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/assets/js/patientList.js"></script>
</body>
</html>
