<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Report List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body style="background:linear-gradient(120deg,#141e30,#243b55);min-height:100vh">

<div class="container py-5">

    <div class="card shadow">
        <div class="card-header bg-dark text-white d-flex justify-content-between">
            <h4>Report List</h4>
            <a href="addReport" class="btn btn-success btn-sm">+ Add Report</a>
        </div>

        <div class="card-body p-0">
            <table class="table table-striped mb-0">
                <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Patient ID</th>
                    <th>Test Name</th>
                    <th>Sample</th>
                    <th>Result</th>
                    <th>Normal Range</th>
                    <th>Status</th>
                    <th>Report Date</th>
                    <th>Doctor</th>
                    <th>Actions</th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${reports}" var="r" varStatus="i">
                    <tr>
                        <td>${i.count}</td>
                        <td>${r.patientId}</td>
                        <td>${r.testName}</td>
                        <td>${r.sampleType}</td>
                        <td>${r.resultValue}</td>
                        <td>${r.normalRange}</td>
                        <td>${r.status}</td>
                        <td>${r.reportDate}</td>
                        <td>${r.doctorName}</td>
                        <td>
                            

                            
                            <a href="${pageContext.request.contextPath}/deleteReport?id=${r.id}"
                                class="btn btn-danger btn-sm"
                                onclick="return confirm('Are you sure?');">
                                Delete
                             </a>

                        </td>
                    </tr>
                </c:forEach>

                <c:if test="${empty reports}">
                    <tr>
                        <td colspan="10" class="text-center text-muted">
                            No reports found
                        </td>
                    </tr>
                </c:if>

                </tbody>
            </table>
        </div>
    </div>

    <div class="text-center mt-4">
        <a href="dashboard" class="btn btn-secondary">Back to Dashboard</a>
    </div>

</div>

</body>
</html>
