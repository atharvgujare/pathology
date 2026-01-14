document.addEventListener("DOMContentLoaded", () => {

    const form = document.getElementById("appointmentForm");
    const inputs = form.querySelectorAll("input[required]");

    form.addEventListener("submit", (e) => {
        let valid = true;

        inputs.forEach(input => {
            const error = input.nextElementSibling;

            if (input.value.trim() === "") {
                error.textContent = "This field is required";
                valid = false;
            } else {
                error.textContent = "";
            }
        });

        // Prevent past dates
        const dateInput = form.querySelector('input[name="appointmentDate"]');
        const today = new Date().toISOString().split("T")[0];

        if (dateInput.value < today) {
            dateInput.nextElementSibling.textContent =
                "Appointment date cannot be in the past";
            valid = false;
        }

        if (!valid) {
            e.preventDefault();
            form.classList.add("animate-fade");
            setTimeout(() => form.classList.remove("animate-fade"), 400);
        }
    });

});

document.addEventListener("DOMContentLoaded", () => {

    const form = document.getElementById("appointmentForm");
    const modal = new bootstrap.Modal(
        document.getElementById("confirmModal")
    );
    const toast = new bootstrap.Toast(
        document.getElementById("successToast")
    );

    /* SUMMARY UPDATE */
    const updateSummary = () => {
        document.getElementById("sumPatient").innerText =
            form.patientName.value || "—";
        document.getElementById("sumDate").innerText =
            form.appointmentDate.value || "—";
        document.getElementById("sumTime").innerText =
            form.appointmentTime.value || "—";
        document.getElementById("sumDoctor").innerText =
            form.doctorName.value || "—";

        const status = form.status.value;
        const badge = document.getElementById("sumStatus");
        badge.innerText = status;
        badge.className = "status-badge status-" + status;
    };

    form.querySelectorAll("input, select").forEach(el => {
        el.addEventListener("change", updateSummary);
    });

    /* INTERCEPT SUBMIT */
    form.addEventListener("submit", (e) => {
        e.preventDefault();
        modal.show();
    });

    /* CONFIRM SUBMIT */
    document.getElementById("confirmSubmit").onclick = () => {
        modal.hide();
        toast.show();
        setTimeout(() => form.submit(), 1200);
    };
});

