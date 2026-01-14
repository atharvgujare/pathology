document.addEventListener("DOMContentLoaded", () => {

    const form = document.getElementById("editAppointmentForm");
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

        if (!valid) {
            e.preventDefault();
            form.classList.add("animate-fade");
            setTimeout(() => form.classList.remove("animate-fade"), 400);
        }
    });

});
