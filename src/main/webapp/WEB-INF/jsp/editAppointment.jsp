<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Appointment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>

<body>

<div class="container mt-4">
    <h2 class="text-center mb-4">Edit Appointment</h2>

    <form action="updateAppointment" method="post" class="card p-4 shadow">

        <input type="hidden" name="id" value="${appointment.id}">

        <div class="row g-3">

            <div class="col-md-4">
                <label>Patient ID</label>
                <input type="number" name="patientId"
                       value="${appointment.patientId}"
                       class="form-control" required>
            </div>

            <div class="col-md-8">
                <label>Patient Name</label>
                <input type="text" name="patientName"
                       value="${appointment.patientName}"
                       class="form-control" required>
            </div>

            <div class="col-md-6">
                <label>Date</label>
                <input type="date" name="appointmentDate"
                       value="${appointment.appointmentDate}"
                       class="form-control" required>
            </div>

            <div class="col-md-6">
                <label>Time</label>
                <input type="time" name="appointmentTime"
                       value="${appointment.appointmentTime}"
                       class="form-control" required>
            </div>

            <div class="col-md-6">
                <label>Doctor</label>
                <input type="text" name="doctorName"
                       value="${appointment.doctorName}"
                       class="form-control" required>
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
                    <option ${appointment.status=='Scheduled'?'selected':''}>Scheduled</option>
                    <option ${appointment.status=='Completed'?'selected':''}>Completed</option>
                    <option ${appointment.status=='Cancelled'?'selected':''}>Cancelled</option>
                </select>
            </div>

            <div class="col-12">
                <label>Symptoms</label>
                <textarea name="symptoms"
                          class="form-control">${appointment.symptoms}</textarea>
            </div>

            <div class="col-12">
                <label>Remarks</label>
                <textarea name="remarks"
                          class="form-control">${appointment.remarks}</textarea>
            </div>

        </div>

        <div class="text-center mt-4">
            <button class="btn btn-success">Update</button>
            <a href="appointments" class="btn btn-secondary ms-2">Cancel</a>
        </div>

    </form>
</div>

</body>
</html>
