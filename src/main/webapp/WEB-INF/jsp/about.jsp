<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>About Us | PathologyLab</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<jsp:include page="/WEB-INF/jsp/userNavbar.jsp"/>


<section class="container py-5 mt-5">
    <h1 class="fw-bold mb-3">About PathologyLab</h1>

    <p>
        PathologyLab is a modern diagnostic center committed to delivering
        accurate, reliable, and timely medical test results.
    </p>

    <p>
        With advanced laboratory infrastructure and certified professionals,
        we ensure high-quality diagnostic services while maintaining complete
        data privacy and security.
    </p>

    <h4 class="mt-4">Our Mission</h4>
    <p>
        To provide accessible and trustworthy diagnostic solutions using
        technology-driven healthcare systems.
    </p>

    <h4 class="mt-4">Our Vision</h4>
    <p>
        To become a leading digital pathology service ensuring excellence
        in diagnostics and patient care.
    </p>
</section>

<!-- CTA -->
<section class="bg-primary text-light text-center py-5">
    <h2 class="fw-bold">Book Appointments & Track Reports Online</h2>
    <p>Create a free account to access digital pathology services</p>
    <a href="${pageContext.request.contextPath}/register"
       class="btn btn-light btn-lg mt-2">
        Sign Up Now
    </a>
</section>



</body>
</html>
