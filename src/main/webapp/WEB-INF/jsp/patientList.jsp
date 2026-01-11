<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Patients List</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/patientList.css">
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow">
    <div class="container">
        <a class="navbar-brand fw-bold" href="#">Pathology System</a>

        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/dashboard">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="${pageContext.request.contextPath}/patients">View Patients</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/addPatient">Add Patient</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<!-- MAIN CONTAINER -->
<div class="container mt-5">

    <div class="card shadow-lg">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0">👨‍⚕️ Patient Records</h4>
        </div>

        <div class="card-body">

            <!-- SEARCH BAR -->
            <form method="get" action="${pageContext.request.contextPath}/patients" class="row mb-4">
                <div class="col-md-8">
                    <input type="text" name="keyword" class="form-control"
                           placeholder="Search by name or mobile"
                           value="${keyword}">
                </div>
                <div class="col-md-4">
                    <button class="btn btn-primary w-100">Search</button>
                </div>
            </form>

            <!-- TABLE -->
            <div class="table-responsive">
                <table class="table table-hover table-bordered align-middle">
                    <thead class="table-dark text-center">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Mobile</th>
                        <th>Address</th>
                        <th>Actions</th>
                    </tr>
                    </thead>

                    <tbody>
                    <c:forEach var="p" items="${patients}">
                        <tr>
                            <td class="text-center">${p.id}</td>
                            <td>${p.name}</td>
                            <td class="text-center">${p.age}</td>
                            <td class="text-center">${p.gender}</td>
                            <td>${p.mobile}</td>
                            <td>${p.address}</td>
                            <td class="text-center">
                                <a href="${pageContext.request.contextPath}/editPatient?id=${p.id}"
                                   class="btn btn-sm btn-warning">Edit</a>

                                <button class="btn btn-sm btn-danger"
                                        onclick="confirmDelete(${p.id})">
                                    Delete
                                </button>
                            </td>
                        </tr>
                    </c:forEach>

                    <c:if test="${empty patients}">
                        <tr>
                            <td colspan="7" class="text-center text-muted">
                                No patient records found
                            </td>
                        </tr>
                    </c:if>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/assets/js/patientList.js"></script>

</body>
</html>
