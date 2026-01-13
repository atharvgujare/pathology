<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>PathologyLab | Management System</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/index.css">
</head>

<body>

<!-- ================= NAVBAR ================= -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top shadow">
    <div class="container">
        <a class="navbar-brand fw-bold" href="${pageContext.request.contextPath}/">
            🧬 PathologyLab
        </a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navMenu">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navMenu">
            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/">Home</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/addPatient">Add Patient</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/patients">View Patients</a>

                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/addReport">Add Reports</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/dashboard">Dashboard</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/addAppointment">Make Appointment</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">Staff</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">Billing</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>

            </ul>
        </div>
    </div>
</nav>

<!-- ================= HERO ================= -->
<section class="hero">
    <div class="container text-center">
        <h1>Pathology Management System</h1>
        <p>
            Smart, Secure & Digital solution for patients, reports, billing
            and laboratory operations
        </p>

        <div class="hero-buttons">
            <a href="${pageContext.request.contextPath}/addPatient"
               class="btn btn-warning btn-lg me-3">
                ➕ Add Patient
            </a>

            <a href="${pageContext.request.contextPath}/dashboard"
               class="btn btn-outline-light btn-lg">
                📊 Dashboard
            </a>
        </div>
    </div>
</section>

<!-- ================= FEATURES ================= -->
<section class="section bg-light">
    <div class="container">
        <div class="row text-center">

            <div class="col-md-4">
                <div class="feature-card">
                    <h4>Patient Management</h4>
                    <p>
                        Store patient records securely with full medical history
                        and test details.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="feature-card">
                    <h4>Lab Reports</h4>
                    <p>
                        Generate, upload and manage pathology reports digitally
                        with ease.
                    </p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="feature-card">
                    <h4>Billing & Payments</h4>
                    <p>
                        Automated billing, invoices and payment tracking
                        for patients.
                    </p>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- ================= MODULES ================= -->
<section class="section">
    <div class="container">
        <h2 class="text-center mb-5">System Modules</h2>

        <div class="row g-4">

            <div class="col-md-3">
                <div class="module-box">Patient Registration</div>
            </div>

            <div class="col-md-3">
                <div class="module-box">Test Management</div>
            </div>

            <div class="col-md-3">
                <div class="module-box">Report Upload</div>
            </div>

            <div class="col-md-3">
                <div class="module-box">Doctor Access</div>
            </div>

            <div class="col-md-3">
                <div class="module-box">Appointments</div>
            </div>

            <div class="col-md-3">
                <div class="module-box">Staff Management</div>
            </div>

            <div class="col-md-3">
                <div class="module-box">Billing System</div>
            </div>

            <div class="col-md-3">
                <div class="module-box">Analytics Dashboard</div>
            </div>

        </div>
    </div>
</section>

<!-- ================= WHY US ================= -->
<section class="section bg-dark text-light">
    <div class="container text-center">
        <h2>Why Choose PathologyLab?</h2>
        <p class="mt-3">
            ✔ Secure Data <br>
            ✔ Fast Performance <br>
            ✔ Easy UI <br>
            ✔ Scalable Architecture <br>
            ✔ Built using Spring MVC + Bootstrap
        </p>
    </div>
</section>

<!-- ================= FOOTER ================= -->
<footer class="footer">
    <div class="container text-center">
        <p>© 2026 PathologyLab | Developed by Atharv</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
