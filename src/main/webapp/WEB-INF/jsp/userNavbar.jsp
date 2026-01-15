
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

<!-- ================= NAVBAR ================= -->
<nav class="user-navbar">
    <div class="nav-left">

        <!-- Mobile Toggle -->
        <button class="menu-toggle d-lg-none" id="menuToggle">
            <span></span>
            <span></span>
            <span></span>
        </button>

        <!-- Brand -->
        <a class="brand" href="${pageContext.request.contextPath}/">
            🧬 PathologyLab
        </a>
    </div>

    <!-- Desktop Links -->
    <ul class="nav-links d-none d-lg-flex">
        <li><a href="${pageContext.request.contextPath}/">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/about">About Us</a></li>
        <li><a href="${pageContext.request.contextPath}/service">Services</a></li>
        <li><a href="${pageContext.request.contextPath}/features">Features</a></li>
        <li><a href="${pageContext.request.contextPath}/contact">Contact</a></li>
    </ul>

    <!-- Login -->
    <div class="nav-right">
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
    </div>
</nav>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- ================= SIDEBAR (MOBILE) ================= -->
<div class="sidebar" id="sidebar">

    <div class="sidebar-header">
        <span class="sidebar-brand">🧬 PathologyLab</span>
        <button class="sidebar-close" id="closeSidebar">✕</button>
    </div>

    <div class="sidebar-links">
        <a href="${pageContext.request.contextPath}/">Home</a>
        <a href="${pageContext.request.contextPath}/about">About Us</a>
        <a href="${pageContext.request.contextPath}/services">Services</a>
        <a href="${pageContext.request.contextPath}/features">Features</a>
        <a href="${pageContext.request.contextPath}/contact">Contact</a>

        <c:choose>
            <c:when test="${not empty sessionScope.loggedUser and sessionScope.userRole eq 'USER'}">
                <a href="${pageContext.request.contextPath}/addPatient">
                    Add Patient
                </a>
                <a href="${pageContext.request.contextPath}/dashboard">
                    Dashboard
                </a>
            </c:when>

            <c:otherwise>
                <a href="#" class="protected-link">Add Patient</a>
                <a href="#" class="protected-link">Dashboard</a>
            </c:otherwise>
        </c:choose>
    </div>
</div>

<!-- ================= LOGIN REQUIRED POPUP ================= -->
<div class="login-popup" id="loginRequiredPopup">
    <h5>Login Required</h5>
    <p>Please sign in to continue.</p>

    <a href="${pageContext.request.contextPath}/login"
       class="btn btn-primary w-100">
        Go to Login
    </a>
</div>

<div class="overlay" id="overlay"></div>


<!-- ================= LOGIN POPUP ================= -->
<div class="login-popup" id="loginPopup">
    <h5>Login Required</h5>
    <p>Login to book appointments and track reports.</p>

    <a href="${pageContext.request.contextPath}/login"
       class="btn btn-primary w-100">
        Go to Login
    </a>
</div>

<!-- Overlay -->
<div class="overlay" id="overlay"></div>
</body>
</html>