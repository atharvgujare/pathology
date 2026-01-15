
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

<body class="light-theme" data-loggedin="${not empty sessionScope.loggedUser}">
<c:choose>
    <c:when test="${not empty sessionScope.loggedUser 
                   and sessionScope.userRole eq 'USER'}">
        <div class="d-flex align-items-center gap-2">
            <span>👤 ${sessionScope.loggedUser}</span>
            <a href="${pageContext.request.contextPath}/logout"
               class="btn btn-sm btn-danger">
                Logout
            </a>
        </div>
    </c:when>

    <c:otherwise>
        <a href="${pageContext.request.contextPath}/login"
           class="login-btn">
            Login
        </a>
    </c:otherwise>
</c:choose>

<jsp:include page="/WEB-INF/jsp/userNavbar.jsp"/>



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

<section class="py-5 text-center bg-light">
    <div class="container">
        <h1 class="fw-bold">Trusted Digital Pathology Services</h1>
        <p class="mt-3">
            Accurate diagnostics, secure reports, and easy appointment booking.
        </p>
    </div>
</section>

<jsp:include page="signupCTA.jsp"/>




<!-- ================= ACTION CARDS ================= -->
<section class="action-section">
    <div class="container">
        <div class="row g-4">

            <!-- BOOK APPOINTMENT -->
            <div class="col-md-6">
                <div class="action-card">
                    <h3>Book Appointment</h3>
                    <p>Schedule lab tests and appointments easily</p>

                    <c:choose>
                        <c:when test="${not empty sessionScope.loggedUser 
                                       and sessionScope.userRole eq 'USER'}">
                            <a href="${pageContext.request.contextPath}/addAppointment"
                               class="btn btn-primary">
                                Book Now
                            </a>
                        </c:when>
                        <c:otherwise>
                            <button class="btn btn-primary protected-btn">
                                Book Now
                            </button>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

            <!-- TRACK REPORT -->
            <div class="col-md-6">
                <div class="action-card">
                    <h3>Track Report</h3>
                    <p>View and download pathology reports</p>

                    <c:choose>
                        <c:when test="${not empty sessionScope.loggedUser 
                                       and sessionScope.userRole eq 'USER'}">
                            <a href="${pageContext.request.contextPath}/reports"
                               class="btn btn-outline-primary">
                                Track Report
                            </a>
                        </c:when>
                        <c:otherwise>
                            <button class="btn btn-outline-primary protected-btn">
                                Track Report
                            </button>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- ================= LOGIN REQUIRED POPUP ================= -->
<c:if test="${empty sessionScope.loggedUser}">
    <div class="login-popup" id="loginPopup">
        <h5>Login Required</h5>
        <p>Please sign in to continue.</p>

        <a href="${pageContext.request.contextPath}/login"
           class="btn btn-primary w-100">
            Go to Login
        </a>
    </div>
    <div class="overlay" id="overlay"></div>
</c:if>



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

<footer class="bg-dark text-light mt-5">
    <div class="container py-4 text-center">
        <a href="${pageContext.request.contextPath}/privacy" class="text-light me-3">
            Privacy Policy
        </a>
        <a href="${pageContext.request.contextPath}/terms" class="text-light me-3">
            Terms
        </a>
        <a href="${pageContext.request.contextPath}/faq" class="text-light">
            FAQ
        </a>

        <p class="mt-3 mb-0 text-secondary">
            © 2026 PathologyLab
        </p>
    </div>
</footer>




<!-- LOGIN REQUIRED POPUP -->
<div class="login-popup" id="loginRequiredPopup">
    <h5>Login Required</h5>
    <p>Please sign in to continue.</p>

    <a href="${pageContext.request.contextPath}/login"
       class="btn btn-primary w-100">
        Go to Login
    </a>
</div>

<div class="overlay" id="loginOverlay"></div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/index.js"></script>


</body>
</html>
