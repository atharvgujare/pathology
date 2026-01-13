<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Appointment</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(120deg, #0f2027, #203a43, #2c5364);
            min-height: 100vh;
        }
        .card {
            border-radius: 15px;
        }
        .card-header {
            background: #0dcaf0;
            color: #000;
            font-weight: 600;
        }
        label {
            font-weight: 500;
        }
    </style>
</head>

<body>

<div class="container py-5">
    <div class="row justify-content-center">
        <div class="col-lg-9">

            <div class="card shadow">
                <div class="card-header text-center">
                    Book Appointment
                </div>

                <div class="card-body">
                    <form action="saveAppointment" method="post">

                        <div class="row g-3">

                            <div class="col-md-4">
                                <label>Patient ID</label>
                                <input type="number" name="patientId" class="form-control" required>
                            </div>

                            <div class="col-md-8">
                                <label>Patient Name</label>
                                <input type="text" name="patientName" class="form-control" required>
                            </div>

                            <div class="col-md-6">
                                <label>Appointment Date</label>
                                <input type="date" name="appointmentDate" class="form-control" required>
                            </div>

                            <div class="col-md-6">
                                <label>Appointment Time</label>
                                <input type="time" name="appointmentTime" class="form-control" required>
                            </div>

                            <div class="col-md-6">
                                <label>Doctor Name</label>
                                <input type="text" name="doctorName" class="form-control" required>
                            </div>

                            <div class="col-md-6">
                                <label>Department</label>
                                <select name="department" class="form-select">
                                    <option>Pathology</option>
                                    <option>Radiology</option>
                                    <option>Cardiology</option>
                                    <option>Neurology</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label>Visit Type</label>
                                <select name="visitType" class="form-select">
                                    <option>OPD</option>
                                    <option>Follow-up</option>
                                    <option>Emergency</option>
                                </select>
                            </div>

                            <div class="col-md-6">
                                <label>Status</label>
                                <select name="status" class="form-select">
                                    <option>Scheduled</option>
                                    <option>Completed</option>
                                    <option>Cancelled</option>
                                </select>
                            </div>

                            <div class="col-12">
                                <label>Symptoms</label>
                                <textarea name="symptoms" class="form-control" rows="3"></textarea>
                            </div>

                            <div class="col-12">
                                <label>Remarks</label>
                                <textarea name="remarks" class="form-control" rows="3"></textarea>
                            </div>

                        </div>

                        <div class="text-center mt-4">
                            <button type="submit" class="btn btn-success px-4">
                                Save Appointment
                            </button>
                            <a href="appointments" class="btn btn-secondary px-4 ms-2">
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
