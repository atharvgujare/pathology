document.addEventListener("DOMContentLoaded", () => {

    const form = document.getElementById("loginForm");
    const inputs = form.querySelectorAll("input");

    form.addEventListener("submit", (e) => {
        let valid = true;

        inputs.forEach(input => {
            const error = input.nextElementSibling;

            if (input.value.trim() === "") {
                error.textContent = input.name + " is required";
                input.classList.add("is-invalid");
                valid = false;
            } else {
                error.textContent = "";
                input.classList.remove("is-invalid");
            }
        });

        if (!valid) {
            e.preventDefault();
            form.classList.add("animate-shake");
            setTimeout(() => form.classList.remove("animate-shake"), 400);
        }
    });

    inputs.forEach(input => {
        input.addEventListener("input", () => {
            input.classList.remove("is-invalid");
            input.nextElementSibling.textContent = "";
        });
    });

});
