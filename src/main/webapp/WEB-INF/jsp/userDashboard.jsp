<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>

<!DOCTYPE html>
<html>
<head>
    <title>User Dashboard</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body class="bg-light">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container-fluid">
        <span class="navbar-brand">User Dashboard</span>

        <div class="d-flex">
            <a href="${pageContext.request.contextPath}/user/logout"
               class="btn btn-danger btn-sm">
                Logout
            </a>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container mt-4">

    <div class="alert alert-success">
        <h5>Welcome, <strong>${sessionScope.user}</strong> 👋</h5>
        <p>You are successfully logged in as a user.</p>
    </div>

    <div class="row mt-4">

        <!-- Profile -->
        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body text-center">
                    <h5 class="card-title">My Profile</h5>
                    <p class="card-text">View and update your profile</p>
                    <a href="#" class="btn btn-outline-success btn-sm">View</a>
                </div>
            </div>
        </div>

        <!-- Appointments -->
        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body text-center">
                    <h5 class="card-title">Appointments</h5>
                    <p class="card-text">Book or view appointments</p>
                    <a href="#" class="btn btn-outline-primary btn-sm">Open</a>
                </div>
            </div>
        </div>

        <!-- Reports -->
        <div class="col-md-4">
            <div class="card shadow-sm">
                <div class="card-body text-center">
                    <h5 class="card-title">Reports</h5>
                    <p class="card-text">View your test reports</p>
                    <a href="#" class="btn btn-outline-dark btn-sm">View</a>
                </div>
            </div>
        </div>

    </div>
</div>

</body>
</html>
