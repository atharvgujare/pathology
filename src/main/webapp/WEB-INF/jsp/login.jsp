<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-4">

      <div class="card shadow">
        <div class="card-header text-center fw-bold">
          Login
        </div>

        <div class="card-body">

          <c:if test="${not empty success}">
            <div class="alert alert-success">${success}</div>
          </c:if>

          <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
          </c:if>

          <form method="post" action="${pageContext.request.contextPath}/login">

            <div class="mb-3">
              <label>Username</label>
              <input type="text" name="username" class="form-control" required>
            </div>

            <div class="mb-3">
              <label>Password</label>
              <input type="password" name="password" class="form-control" required>
            </div>

            <button class="btn btn-primary w-100">Login</button>
          </form>

          <div class="text-center mt-3">
            
            <a href="${pageContext.request.contextPath}/register">Not a User? | Sign up</a>
          </div>

        </div>
      </div>

    </div>
  </div>
</div>

</body>
</html>
