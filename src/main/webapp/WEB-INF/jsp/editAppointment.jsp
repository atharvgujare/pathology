<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Appointment</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/editAppointment.css">
</head>

<body class="appointment-page">

<div class="container appointment-container">
    <div class="row justify-content-center">
        <div class="col-lg-10 col-md-11">

            <div class="card appointment-card animate-fade">
                <div class="card-header text-center">
                    Edit Appointment
                </div>

                <div class="card-body">

                    <form action="updateAppointment"
                          method="post"
                          id="editAppointmentForm">

                        <!-- HIDDEN ID -->
                        <input type="hidden" name="id"
                               value="${appointment.id}">

                        <!-- ================= PATIENT DETAILS ================= -->
                        <h5 class="form-section-title">Patient Details</h5>
                        <div class="row g-4">

                            <div class="col-md-4">
                                <label>Patient ID</label>
                                <input type="number" name="patientId"
                                       value="${appointment.patientId}"
                                       class="form-control" required>
                                <small class="error-text"></small>
                            </div>

                            <div class="col-md-8">
                                <label>Patient Name</label>
                                <input type="text" name="patientName"
                                       value="${appointment.patientName}"
                                       class="form-control" required>
                                <small class="error-text"></small>
                            </div>

                        </div>

                        <!-- ================= APPOINTMENT DETAILS ================= -->
                        <h5 class="form-section-title mt-4">Appointment Details</h5>
                        <div class="row g-4">

                            <div class="col-md-6">
                                <label>Date</label>
                                <input type="date" name="appointmentDate"
                                       value="${appointment.appointmentDate}"
                                       class="form-control" required>
                                <small class="error-text"></small>
                            </div>

                            <div class="col-md-6">
                                <label>Time</label>
                                <input type="time" name="appointmentTime"
                                       value="${appointment.appointmentTime}"
                                       class="form-control" required>
                                <small class="error-text"></small>
                            </div>

                            <div class="col-md-6">
                                <label>Doctor</label>
                                <input type="text" name="doctorName"
                                       value="${appointment.doctorName}"
                                       class="form-control" required>
                                <small class="error-text"></small>
                            </div>

                            <div class="col-md-6">
                                <label>Department</label>
                                <input type="text" name="department"
                                       value="${appointment.department}"
                                       class="form-control">
                            </div>

                            <div class="col-md-6">
                                <label>Visit Type</label>
                                <input type="text" name="visitType"
                                       value="${appointment.visitType}"
                                       class="form-control">
                            </div>

                            <div class="col-md-6">
                                <label>Status</label>
                                <select name="status" class="form-select">
                                    <option ${appointment.status=='Scheduled'?'selected':''}>
                                        Scheduled
                                    </option>
                                    <option ${appointment.status=='Completed'?'selected':''}>
                                        Completed
                                    </option>
                                    <option ${appointment.status=='Cancelled'?'selected':''}>
                                        Cancelled
                                    </option>
                                </select>
                            </div>

                        </div>

                        <!-- ================= MEDICAL NOTES ================= -->
                        <h5 class="form-section-title mt-4">Medical Notes</h5>
                        <div class="row g-4">

                            <div class="col-12">
                                <label>Symptoms</label>
                                <textarea name="symptoms"
                                          class="form-control"
                                          rows="3">${appointment.symptoms}</textarea>
                            </div>

                            <div class="col-12">
                                <label>Remarks</label>
                                <textarea name="remarks"
                                          class="form-control"
                                          rows="3">${appointment.remarks}</textarea>
                            </div>

                        </div>

                        <!-- ================= BUTTONS ================= -->
                        <div class="text-center mt-4">
                            <button type="submit"
                                    class="btn btn-success px-4">
                                Update Appointment
                            </button>
                            <a href="appointments"
                               class="btn btn-outline-secondary px-4 ms-2">
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

<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/assets/js/editAppointment.js"></script>

</body>
</html>
