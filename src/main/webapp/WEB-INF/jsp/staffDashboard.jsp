<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>PathologyLab | Staff Panel</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/staffDashboard.css">

</head>

<body class="light-theme">

<!-- ================= NAVBAR ================= -->
<nav class="navbar custom-navbar fixed-top">
    <div class="container-fluid nav-container">

        <button class="mobile-toggle d-lg-none" id="menuToggle">
            <span></span><span></span><span></span>
        </button>

        <a class="navbar-brand mx-lg-0 mx-auto" href="#">
            🧬 PathologyLab | Staff
        </a>

        <!-- Desktop Nav -->
        <ul class="nav-links d-none d-lg-flex">
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/addPatient">Add Patient</a></li>
            <li><a href="${pageContext.request.contextPath}/patients">View Patients</a></li>
            <li><a href="${pageContext.request.contextPath}/addReport">Add Reports</a></li>
            <li><a href="${pageContext.request.contextPath}/addAppointment">Appointments</a></li>
            <li><a href="${pageContext.request.contextPath}/billing">Billing</a></li>
        </ul>

        <!-- Profile -->
        <div class="profile-section" id="profileBtn">
            <div class="profile-circle">S</div>
        </div>
    </div>
</nav>

<!-- ================= SIDEBAR (MOBILE) ================= -->
<div class="sidebar" id="sidebar">
    <a href="${pageContext.request.contextPath}/">Home</a>
    <a href="${pageContext.request.contextPath}/addPatient">Add Patient</a>
    <a href="${pageContext.request.contextPath}/patients">View Patients</a>
    <a href="${pageContext.request.contextPath}/addReport">Add Reports</a>
    <a href="${pageContext.request.contextPath}/addAppointment">Appointments</a>
    <a href="${pageContext.request.contextPath}/billing">Billing</a>
</div>

<!-- ================= PROFILE POPUP ================= -->
<div class="profile-popup" id="profilePopup">
    <h6>Staff Profile</h6>
    <p><strong>Role:</strong> ${sessionScope.staffRole}</p>

    <button class="btn btn-danger w-100 mt-2"
            onclick="location.href='${pageContext.request.contextPath}/logout'">
        Logout
    </button>
</div>

<!-- ================= HERO ================= -->
<section class="carousel-section">
    <div class="carousel-overlay">
        <h3>Welcome, ${staff.firstName}</h3>
        <h1>Staff Operations Panel</h1>
        <p>Efficient patient handling & laboratory workflow</p>
    </div>
</section>

<!-- ================= STAFF ACTION CARDS ================= -->
<section class="action-section">
    <div class="container">
        <div class="row g-4">

            <div class="col-md-4">
                <div class="action-card">
                    <h3>Add Patient</h3>
                    <p>Register patient details quickly</p>
                    <a href="${pageContext.request.contextPath}/addPatient"
                       class="btn btn-warning">Add Patient</a>
                </div>
            </div>

            <div class="col-md-4">
                <div class="action-card">
                    <h3>Upload Reports</h3>
                    <p>Create & upload lab test reports</p>
                    <a href="${pageContext.request.contextPath}/addReport"
                       class="btn btn-dark">Add Report</a>
                </div>
            </div>

            <div class="col-md-4">
                <div class="action-card">
                    <h3>Appointments</h3>
                    <p>Manage patient appointments</p>
                    <a href="${pageContext.request.contextPath}/addAppointment"
                       class="btn btn-success">Appointments</a>
                </div>
            </div>

        </div>
    </div>
    
    
</section>

<!-- ================= STAFF QUICK ACCESS ================= -->
<section class="staff-quick-section">
    <div class="container">
        <h2 class="section-title">Quick Access</h2>

        <div class="row g-4">

            <!-- VIEW PATIENTS -->
            <div class="col-md-4">
                <div class="staff-card">
                    <div class="staff-card-icon">👥</div>
                    <h4>View Patients</h4>
                    <p>Browse and manage registered patients</p>
                    <a href="${pageContext.request.contextPath}/patients"
                       class="btn btn-outline-primary">
                        Open
                    </a>
                </div>
            </div>

            <!-- VIEW REPORTS -->
            <div class="col-md-4">
                <div class="staff-card">
                    <div class="staff-card-icon">🧪</div>
                    <h4>View Reports</h4>
                    <p>Access uploaded lab test reports</p>
                    <a href="${pageContext.request.contextPath}/reports"
                       class="btn btn-outline-primary">
                        Open
                    </a>
                </div>
            </div>

            <!-- VIEW APPOINTMENTS -->
            <div class="col-md-4">
                <div class="staff-card">
                    <div class="staff-card-icon">📅</div>
                    <h4>View Appointments</h4>
                    <p>Check scheduled patient appointments</p>
                    <a href="${pageContext.request.contextPath}/appointments"
                       class="btn btn-outline-primary">
                        Open
                    </a>
                </div>
            </div>

        </div>
    </div>
</section>


<!-- ================= STAFF STATS ================= -->
<section class="stats-section">
    <div class="container">
        <div class="row text-center g-4">

            <div class="col-md-4">
                <div class="stat-box">
                    <h2 class="counter">Patients</h2>
                    <p>Registered Today</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="stat-box">
                    <h2 class="counter">Reports</h2>
                    <p>Pending Uploads</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="stat-box">
                    <h2 class="counter">Appointments</h2>
                    <p>Scheduled</p>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- ================= WORKFLOW ================= -->
<section class="experience-flow">
    <div class="container">
        <h2 class="section-title">Staff Workflow</h2>

        <div class="flow">
            <div class="flow-step">
                <span>01</span>
                <p>Register patient</p>
            </div>

            <div class="flow-step">
                <span>02</span>
                <p>Conduct lab tests</p>
            </div>

            <div class="flow-step">
                <span>03</span>
                <p>Upload reports</p>
            </div>

            <div class="flow-step">
                <span>04</span>
                <p>Handle billing & appointments</p>
            </div>
        </div>
    </div>
</section>

<footer class="footer">
    <p>© 2026 PathologyLab | Staff Panel</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/index.js"></script>
</body>
</html>
