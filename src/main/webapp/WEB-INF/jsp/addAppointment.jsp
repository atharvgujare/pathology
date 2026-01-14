<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Appointment</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Custom CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/assets/css/addAppointment.css">
</head>

<body class="appointment-page">

<div class="container appointment-container">
    <div class="row justify-content-center">
        <div class="col-lg-10 col-md-11">

            <div class="card appointment-card animate-fade">
                <div class="card-header text-center">
                    Book Appointment
                </div>

                <div class="card-body">

                    <form action="saveAppointment"
                          method="post"
                          id="appointmentForm">

                        <!-- ================= PATIENT DETAILS ================= -->
                        <h5 class="form-section-title">Patient Details</h5>
                        <div class="row g-4">

                            <div class="col-md-4">
                                <label>Patient ID</label>
                                <input type="number" name="patientId"
                                       class="form-control" required>
                                <small class="error-text"></small>
                            </div>

                            <div class="col-md-8">
                                <label>Patient Name</label>
                                <input type="text" name="patientName"
                                       class="form-control" required>
                                <small class="error-text"></small>
                            </div>

                        </div>

                        <!-- ================= APPOINTMENT DETAILS ================= -->
                        <h5 class="form-section-title mt-4">Appointment Details</h5>
                        <div class="row g-4">

                            <div class="col-md-6">
                                <label>Appointment Date</label>
                                <input type="date" name="appointmentDate"
                                       class="form-control" required>
                                <small class="error-text"></small>
                            </div>

                            <div class="col-md-6">
                                <label>Appointment Time</label>
                                <input type="time" name="appointmentTime"
                                       class="form-control" required>
                                <small class="error-text"></small>
                            </div>

                            <div class="col-md-6">
                                <label>Doctor Name</label>
                                <input type="text" name="doctorName"
                                       class="form-control" required>
                                <small class="error-text"></small>
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

                        </div>

                        <!-- ================= MEDICAL NOTES ================= -->
                        <h5 class="form-section-title mt-4">Medical Notes</h5>
                        <div class="row g-4">

                            <div class="col-12">
                                <label>Symptoms</label>
                                <textarea name="symptoms"
                                          class="form-control"
                                          rows="3"></textarea>
                            </div>

                            <div class="col-12">
                                <label>Remarks</label>
                                <textarea name="remarks"
                                          class="form-control"
                                          rows="3"></textarea>
                            </div>

                        </div>

                        <!-- ================= BUTTONS ================= -->
                        <div class="text-center mt-4">
                            <button type="submit"
                                    class="btn btn-success px-4">
                                Save Appointment
                            </button>
                            <a href="appointments"
                               class="btn btn-outline-secondary px-4 ms-2">
                                Cancel
                            </a>
                        </div>

                    </form>

                    <!-- ================= APPOINTMENT SUMMARY ================= -->
                    <div class="appointment-summary mt-5">
                        <h5>Appointment Summary</h5>

                        <p><strong>Patient:</strong>
                            <span id="sumPatient">—</span></p>

                        <p><strong>Date:</strong>
                            <span id="sumDate">—</span></p>

                        <p><strong>Time:</strong>
                            <span id="sumTime">—</span></p>

                        <p><strong>Doctor:</strong>
                            <span id="sumDoctor">—</span></p>

                        <p><strong>Status:</strong>
                            <span id="sumStatus"
                                  class="status-badge">—</span></p>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

<!-- ================= CONFIRM MODAL ================= -->
<div class="modal fade" id="confirmModal" tabindex="-1">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title">Confirm Appointment</h5>
                <button class="btn-close"
                        data-bs-dismiss="modal"></button>
            </div>

            <div class="modal-body">
                Are you sure you want to save this appointment?
            </div>

            <div class="modal-footer">
                <button class="btn btn-secondary"
                        data-bs-dismiss="modal">
                    Cancel
                </button>
                <button class="btn btn-success"
                        id="confirmSubmit">
                    Yes, Save
                </button>
            </div>

        </div>
    </div>
</div>

<!-- ================= SUCCESS TOAST ================= -->
<div class="toast-container position-fixed bottom-0 end-0 p-3">
    <div class="toast text-bg-success"
         id="successToast">
        <div class="toast-body">
            ✅ Appointment saved successfully
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<!-- Custom JS -->
<script src="${pageContext.request.contextPath}/assets/js/addAppointment.js"></script>

</body>
</html>
