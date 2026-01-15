<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    
      <!-- Custom CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css">

    <!-- Bootstrap (UNCHANGED) -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

  
</head>

<body class="bg-light login-page">

<div class="login-wrapper">
    <div class="login-card animate-fade">

        <div class="login-header">
            <h3>🧪 Pathology Login</h3>
            <p>Secure access to your dashboard</p>
        </div>

        <div class="login-body">

            <!-- SUCCESS MESSAGE -->
            <c:if test="${not empty success}">
                <div class="alert alert-success animate-slide">${success}</div>
            </c:if>

            <!-- ERROR MESSAGE -->
            <c:if test="${not empty error}">
                <div class="alert alert-danger animate-shake">${error}</div>
            </c:if>

            <!-- FORM (UNCHANGED ACTION & NAMES) -->
            <form method="post" action="${pageContext.request.contextPath}/login" id="loginForm">

                <div class="form-group">
                    <label>Username</label>
                    <input type="text" name="username" class="form-control" required>
                    <small class="error-text"></small>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" required>
                    <small class="error-text"></small>
                </div>

                <button type="submit" class="btn btn-primary w-100 mt-3">
                    Login
                </button>
            </form>

            <div class="text-center mt-3">
                <a href="${pageContext.request.contextPath}/register">
                    Not a User? | Sign up
                </a>
            </div>

        </div>
    </div>
</div>

<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/assets/js/login.js"></script>


</body>
</html>
