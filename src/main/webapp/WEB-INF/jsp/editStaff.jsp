<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Staff</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">
    <h3>Edit Staff</h3>

    <form method="post" action="${pageContext.request.contextPath}/staff/update">

        <input type="hidden" name="staffId" value="${staff.staffId}">

        <input name="firstName" value="${staff.firstName}" class="form-control mb-2">
        <input name="lastName" value="${staff.lastName}" class="form-control mb-2">

        <select name="role" class="form-control mb-2">
            <option ${staff.role=='ADMIN'?'selected':''}>ADMIN</option>
            <option ${staff.role=='TECHNICIAN'?'selected':''}>TECHNICIAN</option>
            <option ${staff.role=='RECEPTIONIST'?'selected':''}>RECEPTIONIST</option>
        </select>

        <select name="status" class="form-control mb-3">
            <option ${staff.status=='ACTIVE'?'selected':''}>ACTIVE</option>
            <option ${staff.status=='INACTIVE'?'selected':''}>INACTIVE</option>
        </select>

        <button class="btn btn-primary">Update</button>
        <a href="${pageContext.request.contextPath}/staff/list" class="btn btn-secondary">Cancel</a>
    </form>
</div>

</body>
</html>
