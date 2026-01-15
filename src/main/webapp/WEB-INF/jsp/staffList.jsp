<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Staff List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-4">
    <h3 class="text-center mb-3">Staff List</h3>

    <a href="${pageContext.request.contextPath}/staff/add" class="btn btn-success mb-3">
        Add Staff
    </a>

    <table class="table table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Role</th>
                <th>Status</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach var="s" items="${staffList}">
            <tr>
                <td>${s.staffId}</td>
                <td>${s.firstName} ${s.lastName}</td>
                <td>${s.role}</td>
                <td>${s.status}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/staff/edit/${s.staffId}"
                       class="btn btn-warning btn-sm">Edit</a>
                    <a href="${pageContext.request.contextPath}/staff/delete/${s.staffId}"
                       class="btn btn-danger btn-sm"
                       onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
