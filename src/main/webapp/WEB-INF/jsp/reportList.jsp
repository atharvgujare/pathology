<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Reports</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>

<div class="container mt-4">

    <h2 class="text-center mb-4">Patient Reports</h2>

    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Patient</th>
                <th>Test</th>
                <th>Category</th>
                <th>Date</th>
                <th>Result</th>
                <th>File</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>

            <c:forEach var="r" items="${reports}" varStatus="status">
                <tr>
                    <td>${status.index + 1}</td>
                    <td>${r.patientName}</td>
                    <td>${r.testName}</td>
                    <td>${r.testCategory}</td>
                    <td>${r.reportDate}</td>
                    <td>${r.resultSummary}</td>
                    <td>
                        <a href="uploads/reports/${r.reportFile}" target="_blank">
                            View
                        </a>
                    </td>
                    <td>
                        <a href="editReport?id=${r.id}"
                           class="btn btn-warning btn-sm">Edit</a>
                        <a href="deleteReport?id=${r.id}"
                           onclick="return confirm('Delete this report?')"
                           class="btn btn-danger btn-sm ms-1">Delete</a>
                    </td>
                </tr>
            </c:forEach>

        </tbody>
    </table>

    <div class="text-center">
        <a href="addReport" class="btn btn-success">Add Report</a>
        <a href="dashboard" class="btn btn-secondary ms-2">Back</a>
    </div>

</div>

</body>
</html>
