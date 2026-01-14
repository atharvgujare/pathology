<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>PathologyLab | Management System</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css">
</head>

<body class="light-theme">

<!-- ================= NAVBAR ================= -->
<nav class="navbar custom-navbar fixed-top">
    <div class="container-fluid nav-container">

        <button class="mobile-toggle d-lg-none" id="menuToggle">
          <span></span>
          <span></span>
          <span></span>
        </button>


        <!-- Brand -->
        <a class="navbar-brand mx-lg-0 mx-auto" href="${pageContext.request.contextPath}/">
            🧬 PathologyLab
        </a>

        <!-- Desktop Nav -->
        <ul class="nav-links d-none d-lg-flex">
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/addPatient">Add Patient</a></li>
            <li><a href="${pageContext.request.contextPath}/patients">View Patients</a></li>
            <li><a href="${pageContext.request.contextPath}/addReport">Add Reports</a></li>
            <li><a href="${pageContext.request.contextPath}/dashboard">Dashboard</a></li>
            <li><a href="${pageContext.request.contextPath}/addAppointment">Appointment</a></li>
            <li><a href="#">Staff</a></li>
            <li><a href="#">Billing</a></li>
        </ul>

        <!-- Profile -->
        <div class="profile-section" id="profileBtn">
            <div class="profile-circle">A</div>
        </div>
    </div>
</nav>

<!-- ================= SIDEBAR (MOBILE) ================= -->
<div class="sidebar" id="sidebar">
    <a href="${pageContext.request.contextPath}/">Home</a>
    <a href="${pageContext.request.contextPath}/addPatient">Add Patient</a>
    <a href="${pageContext.request.contextPath}/patients">View Patients</a>
    <a href="${pageContext.request.contextPath}/addReport">Add Reports</a>
    <a href="${pageContext.request.contextPath}/dashboard">Dashboard</a>
    <a href="${pageContext.request.contextPath}/addAppointment">Appointment</a>
    <a href="#">Staff</a>
    <a href="#">Billing</a>
</div>

<!-- ================= PROFILE POPUP ================= -->
<div class="profile-popup" id="profilePopup">
    <h6>User Profile</h6>
    <p><strong>Name:</strong> Atharv</p>
    <p><strong>Email:</strong> user@email.com</p>

    <div class="theme-toggle">
        <label>Dark Mode</label>
        <input type="checkbox" id="themeSwitch">
    </div>

    <button class="btn btn-danger w-100 mt-2">Logout</button>
</div>

<!-- ================= CAROUSEL ================= -->
<section class="carousel-section">
    <div id="heroCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">

            <div class="carousel-item active">
                <div class="carousel-overlay">
                    <h1>Digital Pathology Solution</h1>
                    <p>Smart, Secure & Fast laboratory management</p>
                </div>
            </div>

            <div class="carousel-item">
                <div class="carousel-overlay">
                    <h1>Patient & Report Management</h1>
                    <p>Everything organized, accessible & safe</p>
                </div>
            </div>

        </div>
    </div>
</section>



<!-- ================= ACTION CARDS ================= -->
<section class="action-section">
    <div class="container">
        <div class="row g-4">

            <div class="col-md-6">
                <div class="action-card animate-on-scroll">
                    <h3>Add Patient</h3>
                    <p>Register and manage patient records efficiently</p>
                    <a href="${pageContext.request.contextPath}/addPatient"
                       class="btn btn-warning">Add Patient</a>
                </div>
            </div>

            <div class="col-md-6">
                <div class="action-card animate-on-scroll">
                    <h3>Dashboard</h3>
                    <p>View analytics, reports and performance insights</p>
                    <a href="${pageContext.request.contextPath}/dashboard"
                       class="btn btn-outline-light">Open Dashboard</a>
                </div>
            </div>

        </div>
    </div>
</section>


<!-- ================= STATS ================= -->
<section class="stats-section">
    <div class="container">
        <div class="row text-center g-4">

            <div class="col-md-3">
                <div class="stat-box">
                    <h2 class="counter" data-target="1200">0</h2>
                    <p>Patients Registered</p>
                </div>
            </div>

            <div class="col-md-3">
                <div class="stat-box">
                    <h2 class="counter" data-target="350">0</h2>
                    <p>Lab Reports</p>
                </div>
            </div>

            <div class="col-md-3">
                <div class="stat-box">
                    <h2 class="counter" data-target="45">0</h2>
                    <p>Staff Members</p>
                </div>
            </div>

            <div class="col-md-3">
                <div class="stat-box">
                    <h2 class="counter" data-target="98">0%</h2>
                    <p>Success Rate</p>
                </div>
            </div>

        </div>
    </div>
</section>


<!-- ================= SMART FEATURES ================= -->
<section class="smart-features">
    <div class="container">
        <h2 class="section-title">Smart Features</h2>

        <div class="row g-4">
            <div class="col-md-4">
                <div class="feature-glass scroll-up">
                    <h4>Digital Patient Records</h4>
                    <p>Secure, searchable and centralized patient data.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="feature-glass scroll-up delay-1">
                    <h4>Automated Reports</h4>
                    <p>Generate pathology reports with zero manual errors.</p>
                </div>
            </div>

            <div class="col-md-4">
                <div class="feature-glass scroll-up delay-2">
                    <h4>Appointment Scheduling</h4>
                    <p>Manage lab appointments efficiently and digitally.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- ================= TESTIMONIALS ================= -->
<section class="testimonials-section">
    <div class="container">
        <h2 class="section-title">What Our Users Say</h2>

        <div class="testimonial-slider">

            <div class="testimonial active">
                <p>
                    “PathologyLab has simplified patient record management
                    and report handling. The interface is clean and very easy to use.”
                </p>
                <h5>Dr. Amit Kulkarni</h5>
                <span>Senior Pathologist</span>
            </div>

            <div class="testimonial">
                <p>
                    “Managing appointments and reports digitally has saved
                    us a lot of time. Highly reliable system.”
                </p>
                <h5>Rohit Sharma</h5>
                <span>Lab Administrator</span>
            </div>

            <div class="testimonial">
                <p>
                    “The dashboard and workflow are very intuitive.
                    Even non-technical staff can use it easily.”
                </p>
                <h5>Neha Deshmukh</h5>
                <span>Reception Manager</span>
            </div>

            <div class="testimonial">
                <p>
                    “Secure data handling and smooth performance.
                    A well-designed pathology management solution.”
                </p>
                <h5>Dr. Snehal Patil</h5>
                <span>Consultant Doctor</span>
            </div>

        </div>
    </div>
</section>



<!-- ================= EXPERIENCE FLOW ================= -->
<section class="experience-flow">
    <div class="container">
        <h2 class="section-title">Seamless Experience Flow</h2>

        <div class="flow">
            <div class="flow-step reveal-left">
                <span>01</span>
                <p>Register patient details securely</p>
            </div>

            <div class="flow-step reveal-right">
                <span>02</span>
                <p>Conduct tests & upload reports</p>
            </div>

            <div class="flow-step reveal-left">
                <span>03</span>
                <p>Manage billing & appointments</p>
            </div>

            <div class="flow-step reveal-right">
                <span>04</span>
                <p>Analyze data through dashboard</p>
            </div>
        </div>
    </div>
</section>

<!-- ================= FAQ ================= -->
<section class="faq-section">
    <div class="container">
        <h2 class="section-title">Frequently Asked Questions</h2>

        <div class="faq-item">
            <h5>Is patient data secure?</h5>
            <p>Yes, data is protected using role-based access control.</p>
        </div>

        <div class="faq-item">
            <h5>Can multiple staff use the system?</h5>
            <p>Yes, the system supports multiple user roles.</p>
        </div>

        <div class="faq-item">
            <h5>Are reports downloadable?</h5>
            <p>Yes, reports can be downloaded and shared securely.</p>
        </div>
    </div>
</section>



<!-- ================= EXTRA SECTIONS ================= -->
<section class="info-section">
    <div class="container text-center">
        <h2>Why PathologyLab?</h2>
        <p>✔ Secure Data ✔ Scalable ✔ Fast ✔ User Friendly</p>
    </div>
</section>

<footer class="footer">
    <p>© 2026 PathologyLab | Developed by Atharv</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/index.js"></script>
</body>
</html>
