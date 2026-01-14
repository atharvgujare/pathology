<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Pathology Report</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <style>
        body {
            background: linear-gradient(120deg, #141e30, #243b55);
            min-height: 100vh;
        }
        .card {
            border-radius: 15px;
        }
        label {
            font-weight: 600;
        }
    </style>
</head>

<body>

<div class="container py-5">

    <div class="row justify-content-center">
        <div class="col-md-10 col-lg-8">

            <div class="card shadow">
                <div class="card-header bg-dark text-white text-center">
                    <h4>Add Pathology Report</h4>
                </div>

                <div class="card-body">

                    <form action="saveReport" method="post">

                        <!-- ========================= -->
                        <!-- Patient Information -->
                        <!-- ========================= -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label>Patient ID</label>
                                <input type="number" name="patientId"
                                       class="form-control" required>
                            </div>

                            <div class="col-md-6">
                                <label>Report Date</label>
                                <input type="date" name="reportDate"
                                       class="form-control" required>
                            </div>
                        </div>

                        <!-- ========================= -->
                        <!-- Test Information -->
                        <!-- ========================= -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label>Test Name</label>
                                <input type="text" name="testName"
                                       class="form-control"
                                       placeholder="e.g. CBC, Blood Sugar"
                                       required>
                            </div>

                            <div class="col-md-6">
                                <label>Sample Type</label>
                                <select name="sampleType" class="form-select">
                                    <option>Blood</option>
                                    <option>Urine</option>
                                    <option>Saliva</option>
                                    <option>Tissue</option>
                                </select>
                            </div>
                        </div>

                        <!-- ========================= -->
                        <!-- Result Section -->
                        <!-- ========================= -->
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label>Result Value</label>
                                <input type="text" name="resultValue"
                                       class="form-control"
                                       placeholder="e.g. 110 mg/dL">
                            </div>

                            <div class="col-md-4">
                                <label>Normal Range</label>
                                <input type="text" name="normalRange"
                                       class="form-control"
                                       placeholder="e.g. 70 - 110">
                            </div>

                            <div class="col-md-4">
                                <label>Status</label>
                                <select name="status" class="form-select">
                                    <option>Normal</option>
                                    <option>Abnormal</option>
                                    <option>Critical</option>
                                </select>
                            </div>
                        </div>

                        <!-- ========================= -->
                        <!-- Doctor & Remarks -->
                        <!-- ========================= -->
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label>Referred Doctor</label>
                                <input type="text" name="doctorName"
                                       class="form-control"
                                       placeholder="Doctor Name">
                            </div>

                            <div class="col-md-6">
                                <label>Technician Name</label>
                                <input type="text" name="technicianName"
                                       class="form-control">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label>Remarks</label>
                            <textarea name="remarks"
                                      class="form-control"
                                      rows="3"
                                      placeholder="Any observations or notes"></textarea>
                        </div>

                        <!-- ========================= -->
                        <!-- Buttons -->
                        <!-- ========================= -->
                        <div class="text-center mt-4">
                            <button type="submit"
                                    class="btn btn-success px-4">
                                Save Report
                            </button>

                            <a href="reports"
                               class="btn btn-secondary px-4 ms-2">
                                Cancel
                            </a>
                        </div>

                    </form>

                </div>
            </div>

        </div>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
