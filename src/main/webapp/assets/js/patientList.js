function confirmDelete(id) {
    if (confirm("Are you sure you want to delete this patient?")) {
        window.location.href = "deletePatient?id=" + id;
    }
}
