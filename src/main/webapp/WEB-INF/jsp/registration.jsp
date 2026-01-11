<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">

      <div class="card shadow">
        <div class="card-header text-center fw-bold">
          User Registration
        </div>

        <div class="card-body">

          <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
          </c:if>

          <form method="post" action="${pageContext.request.contextPath}/register">

            <div class="row">
              <div class="col-md-6 mb-3">
                <label>Name</label>
                <input type="text" name="name" class="form-control" required>
              </div>

              <div class="col-md-6 mb-3">
                <label>Username</label>
                <input type="text" name="username" class="form-control" required>
              </div>
            </div>

            <div class="row">
              <div class="col-md-6 mb-3">
                <label>Mobile</label>
                <input type="text" name="mobile" class="form-control" required>
              </div>

              <div class="col-md-6 mb-3">
                <label>Email</label>
                <input type="email" name="email" class="form-control" required>
              </div>
            </div>

            <div class="row">
              <div class="col-md-6 mb-3">
                <label>Birthdate</label>
                <input type="date" name="birthdate" class="form-control" required>
              </div>

              <div class="col-md-6 mb-3">
                <label>Password</label>
                <input type="password" name="password" class="form-control" required>
              </div>
            </div>

            <button class="btn btn-success w-100">Register</button>
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

</body>
</html>
