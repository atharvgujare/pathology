<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Report</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>

<div class="container mt-4">
    <h2 class="text-center mb-4">Edit Report</h2>

    <form action="updateReport" method="post"
          class="card p-4 shadow">

        <input type="hidden" name="id" value="${report.id}">

        <div class="row g-3">

            <div class="col-md-4">
                <label>Patient ID</label>
                <input type="number" name="patientId"
                       value="${report.patientId}"
                       class="form-control" required>
            </div>

            <div class="col-md-8">
                <label>Test Name</label>
                <input type="text" name="testName"
                       value="${report.testName}"
                       class="form-control" required>
            </div>

            <div class="col-md-6">
                <label>Test Category</label>
                <input type="text" name="testCategory"
                       value="${report.testCategory}"
                       class="form-control">
            </div>

            <div class="col-md-6">
                <label>Report Date</label>
                <input type="date" name="reportDate"
                       value="${report.reportDate}"
                       class="form-control">
            </div>

            <div class="col-12">
                <label>Result Summary</label>
                <input type="text" name="resultSummary"
                       value="${report.resultSummary}"
                       class="form-control">
            </div>

            <div class="col-12">
                <label>Remarks</label>
                <textarea name="remarks"
                          class="form-control">${report.remarks}</textarea>
            </div>

        </div>

        <div class="text-center mt-4">
            <button class="btn btn-success">Update</button>
            <a href="reports" class="btn btn-secondary ms-2">Cancel</a>
        </div>

    </form>
</div>

</body>
</html>
