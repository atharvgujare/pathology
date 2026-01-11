<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Patient</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/addPatient.css">
</head>

<body>

<!-- NAVBAR -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/">PathologyLab</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/">Home</a></li>
                <li class="nav-item"><a class="nav-link active" href="#">Add Patient</a></li>
                <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/dashboard">Dashboard</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- FORM -->
<div class="container form-container">
    <div class="card shadow-lg">
        <div class="card-header text-center">
            <h3>Add New Patient</h3>
        </div>

        <div class="card-body">
            <form action="${pageContext.request.contextPath}/savePatient" method="post">

                <div class="row g-3">
                    <div class="col-md-6">
                        <label>First Name</label>
                        <input type="text" name="firstName" class="form-control" required>
                    </div>

                    <div class="col-md-6">
                        <label>Last Name</label>
                        <input type="text" name="lastName" class="form-control">
                    </div>

                    <div class="col-md-4">
                        <label>Gender</label>
                        <select name="gender" class="form-select">
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                        </select>
                    </div>

                    <div class="col-md-4">
                        <label>Birth Date</label>
                        <input type="date" name="birthDate" class="form-control">
                    </div>

                    <div class="col-md-4">
                        <label>Admission Date</label>
                        <input type="date" name="admissionDate" class="form-control">
                    </div>

                    <div class="col-md-6">
                        <label>Mobile No</label>
                        <input type="text" name="mobile" class="form-control">
                    </div>

                    <div class="col-md-6">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control">
                    </div>

                    <div class="col-md-6">
                        <label>Aadhaar No</label>
                        <input type="text" name="aadhaar" class="form-control">
                    </div>

                    <div class="col-md-12">
                        <label>Address</label>
                        <textarea name="address" class="form-control" rows="3"></textarea>
                    </div>
                </div>

                <div class="text-center mt-4">
                    <button class="btn btn-warning btn-lg px-5">Save Patient</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- FOOTER -->
<footer class="footer text-center">
    <p>© 2026 Pathology Management System</p>
</footer>

</body>
</html>
