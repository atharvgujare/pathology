<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Staff</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">
    <h3>Add Staff</h3>

    <form method="post" action="${pageContext.request.contextPath}/staff/save">

        <input name="firstName" class="form-control mb-2" placeholder="First Name" required>
        <input name="lastName" class="form-control mb-2" placeholder="Last Name" required>

        <select name="gender" class="form-control mb-2">
            <option>Male</option>
            <option>Female</option>
        </select>

        <input name="email" class="form-control mb-2" placeholder="Email">
        <input name="mobile" class="form-control mb-2" placeholder="Mobile">

        <select name="role" class="form-control mb-2">
            <option>ADMIN</option>
            <option>TECHNICIAN</option>
            <option>RECEPTIONIST</option>
        </select>

        <input name="username" class="form-control mb-2" placeholder="Username" required>
        <input type="password" name="password" class="form-control mb-3" placeholder="Password" required>

        <button class="btn btn-success">Save</button>
        <a href="${pageContext.request.contextPath}/staff/list" class="btn btn-secondary">Cancel</a>
    </form>
</div>

</body>
</html>
