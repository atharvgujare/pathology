function confirmDelete(id) {
    if (confirm("Are you sure you want to delete this patient?")) {
        window.location.href = "deletePatient?id=" + id;
    }
}

// Live search filter
const searchInput = document.getElementById("searchInput");
const rows = document.querySelectorAll("#patientTableBody tr");

searchInput.addEventListener("keyup", () => {
    const query = searchInput.value.toLowerCase();

    rows.forEach(row => {
        const text = row.innerText.toLowerCase();
        row.style.display = text.includes(query) ? "" : "none";
    });
});

