<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Edit Patient</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/editPatient.css">
</head>
<body>

<h2>Edit Patient</h2>

<form action="updatePatient" method="post">

    <input type="hidden" name="id" value="${patient.id}"/>

    First Name:
    <input type="text" name="firstName" value="${patient.firstName}" required/>

    Last Name:
    <input type="text" name="lastName" value="${patient.lastName}" required/>

    Gender:
    <select name="gender">
        <option ${patient.gender=='Male'?'selected':''}>Male</option>
        <option ${patient.gender=='Female'?'selected':''}>Female</option>
    </select>

    Mobile:
    <input type="text" name="mobile" value="${patient.mobile}" required/>

    Email:
    <input type="email" name="email" value="${patient.email}"/>

    Address:
    <textarea name="address">${patient.address}</textarea>

    <button type="submit">Update Patient</button>
</form>

</body>
</html>
