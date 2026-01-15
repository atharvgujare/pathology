const roles = [
    {
        name: "ADMIN",
        title: "Admin Login",
        desc: "System administrator access"
    },
    {
        name: "RECEPTIONIST",
        title: "Reception Login",
        desc: "Patient & appointment management"
    },
    {
        name: "TECHNICIAN",
        title: "Technician Login",
        desc: "Lab reports & diagnostics"
    },
    {
        name: "USER",
        title: "User Login",
        desc: "General system access"
    }
];

let current = 0;

const roleTitle = document.getElementById("roleTitle");
const roleDesc = document.getElementById("roleDesc");
const roleName = document.getElementById("roleName");
const roleInput = document.getElementById("roleInput");
const card = document.querySelector(".login-card");

function updateRole() {
    card.classList.remove("animate-fade");
    void card.offsetWidth; // restart animation
    card.classList.add("animate-fade");

    roleTitle.innerText = roles[current].title;
    roleDesc.innerText = roles[current].desc;
    roleName.innerText = roles[current].name;
    roleInput.value = roles[current].name;
}

document.getElementById("nextRole").onclick = () => {
    current = (current + 1) % roles.length;
    updateRole();
};

document.getElementById("prevRole").onclick = () => {
    current = (current - 1 + roles.length) % roles.length;
    updateRole();
};
