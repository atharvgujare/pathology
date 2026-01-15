<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/login.css">
</head>

<body class="login-page">

<div class="login-wrapper">
    <div class="login-card animate-fade">

        <!-- ROLE HEADER -->
        <div class="login-header">
            <h3 id="roleTitle">Admin Login</h3>
            <p id="roleDesc">System administrator access</p>
        </div>

        <!-- FORM -->
        <div class="login-body">
            <form action="${pageContext.request.contextPath}/login"
                  method="post"
                  id="loginForm">

                <input type="hidden" name="role" id="roleInput" value="ADMIN">

                <div class="mb-3">
                    <label>Username</label>
                    <input name="username"
                           class="form-control"
                           required>
                </div>

                <div class="mb-3">
                    <label>Password</label>
                    <input type="password"
                           name="password"
                           class="form-control"
                           required>
                </div>

                <button type="submit" class="btn btn-primary w-100">
                    Login
                </button>
            </form>

            <!-- ROLE SWITCH -->
            <div class="role-switch">
                <button id="prevRole" type="button">←</button>
                <span id="roleName">ADMIN</span>
                <button id="nextRole" type="button">→</button>
            </div>

        </div>
    </div>
</div>

<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/assets/js/login.js"></script>
</body>
</html>
