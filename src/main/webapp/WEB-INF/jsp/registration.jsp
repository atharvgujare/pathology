<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>

<!-- Bootstrap (unchanged) -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link rel="stylesheet"
      href="${pageContext.request.contextPath}/assets/css/registration.css">
</head>

<body class="register-page">

<div class="container register-container">
  <div class="row justify-content-center">
    <div class="col-lg-6 col-md-8 col-sm-12">

      <div class="card register-card animate-fade">
        <div class="card-header text-center fw-bold">
          User Registration
        </div>

        <div class="card-body">

          <c:if test="${not empty error}">
            <div class="alert alert-danger animate-shake">${error}</div>
          </c:if>

          <form method="post"
                action="${pageContext.request.contextPath}/register"
                id="registrationForm">

            <div class="row">
              <div class="col-md-6 mb-3">
                <label>Name</label>
                <input type="text" name="name" class="form-control" required>
                <small class="error-text"></small>
              </div>

              <div class="col-md-6 mb-3">
                <label>Username</label>
                <input type="text" name="username" class="form-control" required>
                <small class="error-text"></small>
              </div>
            </div>

            <div class="row">
              <div class="col-md-6 mb-3">
                <label>Mobile</label>
                <input type="text" name="mobile" class="form-control" required>
                <small class="error-text"></small>
              </div>

              <div class="col-md-6 mb-3">
                <label>Email</label>
                <input type="email" name="email" class="form-control" required>
                <small class="error-text"></small>
              </div>
            </div>

            <div class="row">
              <div class="col-md-6 mb-3">
                <label>Birthdate</label>
                <input type="date" name="birthdate" class="form-control" required>
                <small class="error-text"></small>
              </div>

              <div class="col-md-6 mb-3">
                <label>Password</label>
                <input type="password" name="password" class="form-control" required>
                <small class="error-text"></small>
              </div>
            </div>

            <button class="btn btn-success w-100 mt-2">
              Register
            </button>
          </form>

          <div class="text-center mt-3">
            Already registered?
            <a href="${pageContext.request.contextPath}/login">Login</a>
          </div>

        </div>
      </div>

    </div>
  </div>
</div>

<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/assets/js/registration.js"></script>

</body>
</html>
