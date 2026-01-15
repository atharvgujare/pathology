/* ================= ELEMENTS ================= */
const body = document.body;

const menuToggle = document.getElementById("menuToggle");
const sidebar = document.getElementById("sidebar");
const closeSidebar = document.getElementById("closeSidebar");
const overlay = document.getElementById("overlay");

const profileBtn = document.getElementById("profileBtn");
const profilePopup = document.getElementById("profilePopup");

const loginPopup = document.getElementById("loginRequiredPopup");
const themeSwitch = document.getElementById("themeSwitch");

/* ================= LOGIN STATE ================= */
/* Body must contain:
   <body data-loggedin="${not empty sessionScope.loggedUser}">
*/
const isLoggedIn = body.dataset.loggedin === "true";

let sidebarOpen = false;

/* ================= SIDEBAR ================= */
function openSidebar() {
    sidebar.classList.add("open");
    overlay.classList.add("show");
    body.classList.add("no-scroll");
    sidebarOpen = true;
}

function closeAll() {
    sidebar.classList.remove("open");
    profilePopup?.classList.remove("show");
    loginPopup?.classList.remove("show");
    overlay.classList.remove("show");
    body.classList.remove("no-scroll");
    sidebarOpen = false;
}

menuToggle?.addEventListener("click", (e) => {
    e.stopPropagation();
    sidebarOpen ? closeAll() : openSidebar();
});

closeSidebar?.addEventListener("click", closeAll);
overlay?.addEventListener("click", closeAll);

/* ================= SIDEBAR LINK NAVIGATION FIX ================= */
document.querySelectorAll("#sidebar a").forEach(link => {
    link.addEventListener("click", () => {
        // close sidebar but DO NOT prevent navigation
        closeAll();
    });
});




/* ================= PROFILE POPUP ================= */
profileBtn?.addEventListener("click", (e) => {
    e.stopPropagation();
    profilePopup.classList.toggle("show");
    overlay.classList.toggle("show");
});

/* ================= PROTECTED LINKS ================= */
document.querySelectorAll(".protected-link, .protected-btn").forEach(el => {
    el.addEventListener("click", (e) => {
        if (!isLoggedIn) {
            e.preventDefault();
            e.stopPropagation();
            loginPopup.classList.add("show");
            overlay.classList.add("show");
            body.classList.add("no-scroll");
        }
    });
});


/* ================= THEME TOGGLE ================= */
themeSwitch?.addEventListener("change", () => {
    body.classList.toggle("dark-theme");
    body.classList.toggle("light-theme");
});

/* ================= CLICK OUTSIDE ================= */
document.addEventListener("click", (e) => {
    if (
        sidebarOpen &&
        overlay.classList.contains("show") &&
        !sidebar.contains(e.target) &&
        !menuToggle.contains(e.target)
    ) {
        closeAll();
    }
});

/* ================= FIX SIDEBAR LINK CLICKS ================= */
document.querySelectorAll("#sidebar a").forEach(link => {
    link.addEventListener("click", (e) => {
        e.stopPropagation();   // 🔥 THIS IS THE KEY
        closeAll();            // close sidebar
        // DO NOT preventDefault
    });
});


