document.addEventListener("DOMContentLoaded", () => {

    const form = document.getElementById("registerForm");
    const inputs = form.querySelectorAll("input");

    form.addEventListener("submit", (e) => {
        let valid = true;

        const password = form.querySelector('input[name="password"]').value;
        const confirmPassword = form.querySelector('input[name="confirmPassword"]').value;

        inputs.forEach(input => {
            const error = input.nextElementSibling;

            if (input.value.trim() === "") {
                error.textContent = input.name + " is required";
                valid = false;
            } else {
                error.textContent = "";
            }
        });

        if (password !== confirmPassword) {
            form.querySelector('input[name="confirmPassword"]')
                .nextElementSibling.textContent = "Passwords do not match";
            valid = false;
        }

        if (!valid) {
            e.preventDefault();
            form.classList.add("animate-shake");
            setTimeout(() => form.classList.remove("animate-shake"), 400);
        }
    });

});	document.addEventListener("DOMContentLoaded", () => {

	    const form = document.getElementById("registrationForm");
	    const inputs = form.querySelectorAll("input");

	    form.addEventListener("submit", (e) => {
	        let valid = true;

	        inputs.forEach(input => {
	            const error = input.nextElementSibling;

	            if (input.value.trim() === "") {
	                error.textContent = input.name + " is required";
	                valid = false;
	            } else {
	                error.textContent = "";
	            }
	        });

	        const mobile = form.querySelector('input[name="mobile"]');
	        if (!/^[0-9]{10}$/.test(mobile.value)) {
	            mobile.nextElementSibling.textContent = "Enter valid 10-digit mobile number";
	            valid = false;
	        }

	        if (!valid) {
	            e.preventDefault();
	            form.classList.add("animate-shake");
	            setTimeout(() => form.classList.remove("animate-shake"), 400);
	        }
	    });

	});

