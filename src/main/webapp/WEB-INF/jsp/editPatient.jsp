<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Patient</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <style>
        body {
            background: linear-gradient(120deg, #0f2027, #203a43, #2c5364);
            min-height: 100vh;
            display: flex;
            align-items: center;
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
        }

        .card-header {
            background: #ffc107;
            font-weight: 600;
            font-size: 1.2rem;
            border-radius: 15px 15px 0 0;
        }

        label {
            font-weight: 500;
        }

        .btn-custom {
            min-width: 120px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-lg-8 col-md-10">

            <div class="card">
                <div class="card-header text-center">
                    Edit Patient Details
                </div>

                <div class="card-body">
                    <form action="updatePatient" method="post">

                        <input type="hidden" name="id" value="${patient.id}" />

                        <div class="row g-3">

                            <div class="col-md-6">
                                <label>First Name</label>
                                <input type="text" name="firstName"
                                       value="${patient.firstName}"
                                       class="form-control" required>
                            </div>

                            <div class="col-md-6">
                                <label>Last Name</label>
                                <input type="text" name="lastName"
                                       value="${patient.lastName}"
                                       class="form-control" required>
                            </div>

                            <div class="col-md-6">
                                <label>Gender</label>
                                <select name="gender" class="form-select">
                                    <option value="Male" ${patient.gender == 'Male' ? 'selected' : ''}>Male</option>
                                    <option value="Female" ${patient.gender == 'Female' ? 'selected' : ''}>Female</option>
                                    <option value="Other" ${patient.gender == 'Other' ? 'selected' : ''}>Other</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label>Mobile</label>
                                <input type="text" name="mobile"
                                       value="${patient.mobile}"
                                       class="form-control">
                            </div>

                            <div class="col-md-6">
                                <label>Email</label>
                                <input type="email" name="email"
                                       value="${patient.email}"
                                       class="form-control">
                            </div>

                            <div class="col-md-6">
                                <label>Aadhaar</label>
                                <input type="text" name="aadhaar"
                                       value="${patient.aadhaar}"
                                       class="form-control">
                            </div>

                            <div class="col-12">
                                <label>Address</label>
                                <textarea name="address"
                                          class="form-control"
                                          rows="3">${patient.address}</textarea>
                            </div>

                            <div class="col-md-6">
                                <label>Birth Date</label>
                                <input type="date" name="birthDate"
                                       value="${patient.birthDate}"
                                       class="form-control">
                            </div>

                            <div class="col-md-6">
                                <label>Admission Date</label>
                                <input type="date" name="admissionDate"
                                       value="${patient.admissionDate}"
                                       class="form-control">
                            </div>

                        </div>

                        <div class="text-center mt-4">
                            <button type="submit"
                                    class="btn btn-success btn-custom me-2">
                                Update
                            </button>

                            <a href="patients"
                               class="btn btn-secondary btn-custom">
                                Cancel
                            </a>
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
