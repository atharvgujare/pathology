<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Services | PathologyLab</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<jsp:include page="userNavbar.jsp"/>

<section class="container py-5 mt-5">
    <h1 class="fw-bold mb-4">Our Diagnostic Services</h1>

    <div class="row g-4">
        <div class="col-md-4">
            <div class="card p-4 shadow-sm">
                <h5>Blood Tests</h5>
                <p>Comprehensive blood testing with accurate results.</p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card p-4 shadow-sm">
                <h5>Urine & Stool Tests</h5>
                <p>Routine and specialized pathology tests.</p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card p-4 shadow-sm">
                <h5>Health Checkup Packages</h5>
                <p>Preventive health screening packages.</p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card p-4 shadow-sm">
                <h5>Imaging Support</h5>
                <p>Diagnostic imaging and test coordination.</p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card p-4 shadow-sm">
                <h5>Home Sample Collection</h5>
                <p>Convenient doorstep sample collection.</p>
            </div>
        </div>
    </div>
</section>

<section class="bg-light text-center py-5">
    <h2 class="fw-bold">Digital Services for Patients</h2>
    <p>Book appointments & access reports online</p>
    <a href="${pageContext.request.contextPath}/register"
       class="btn btn-primary btn-lg">
        Get Started
    </a>
</section>



</body>
</html>
