const menuToggle = document.getElementById("menuToggle");
const sidebar = document.getElementById("sidebar");

let sidebarOpen = false;

menuToggle.addEventListener("click", () => {
    sidebarOpen = !sidebarOpen;

    if (sidebarOpen) {
        sidebar.classList.add("open");
        document.body.classList.add("no-scroll");
    } else {
        sidebar.classList.remove("open");
        document.body.classList.remove("no-scroll");
    }
});

/* Close sidebar when clicking outside */
document.addEventListener("click", (e) => {
    if (
        sidebarOpen &&
        !sidebar.contains(e.target) &&
        !menuToggle.contains(e.target)
    ) {
        sidebar.classList.remove("open");
        document.body.classList.remove("no-scroll");
        sidebarOpen = false;
    }
});


// Profile popup
const profileBtn = document.getElementById("profileBtn");
const popup = document.getElementById("profilePopup");

profileBtn.onclick = () => {
    popup.style.display = popup.style.display === "block" ? "none" : "block";
};

// Theme toggle
document.getElementById("themeSwitch").addEventListener("change", e => {
    document.body.classList.toggle("dark-theme");
    document.body.classList.toggle("light-theme");
});

// Scroll animation
const cards = document.querySelectorAll(".animate-on-scroll");
window.addEventListener("scroll", () => {
    cards.forEach(card => {
        const pos = card.getBoundingClientRect().top;
        if (pos < window.innerHeight - 100) {
            card.style.opacity = "1";
            card.style.transform = "translateY(0)";
        }
    });
});

// Counter animation
const counters = document.querySelectorAll(".counter");

const runCounter = () => {
    counters.forEach(counter => {
        const target = +counter.dataset.target;
        let count = 0;

        const update = () => {
            if (count < target) {
                count += Math.ceil(target / 60);
                counter.innerText = count;
                setTimeout(update, 30);
            } else {
                counter.innerText = target;
            }
        };
        update();
    });
};

window.addEventListener("scroll", () => {
    const section = document.querySelector(".stats-section");
    if (section.getBoundingClientRect().top < window.innerHeight) {
        runCounter();
    }
});
// Scroll Up Animation for Smart Features
const scrollElements = document.querySelectorAll(".scroll-up");

const elementInView = (el, offset = 150) => {
    const elementTop = el.getBoundingClientRect().top;
    return elementTop < window.innerHeight - offset;
};

const displayScrollElement = (el) => {
    el.classList.add("active");
};

const hideScrollElement = (el) => {
    el.classList.remove("active");
};

const handleScrollAnimation = () => {
    scrollElements.forEach(el => {
        if (elementInView(el)) {
            displayScrollElement(el);
        }
    });
};

window.addEventListener("scroll", handleScrollAnimation);
handleScrollAnimation(); // run once on load


// Scroll animations
const animated = document.querySelectorAll(
    ".scroll-up, .reveal-left, .reveal-right"
);

const animateOnScroll = () => {
    animated.forEach(el => {
        if (el.getBoundingClientRect().top < window.innerHeight - 120) {
            el.classList.add("active");
        }
    });
};
window.addEventListener("scroll", animateOnScroll);
animateOnScroll();

// FAQ toggle
document.querySelectorAll(".faq-item").forEach(item => {
    item.addEventListener("click", () => {
        const p = item.querySelector("p");
        p.style.display = p.style.display === "block" ? "none" : "block";
    });
});

// Testimonials auto slider
const testimonials = document.querySelectorAll(".testimonial");
let currentTestimonial = 0;

function showTestimonial(index) {
    testimonials.forEach(t => t.classList.remove("active"));
    testimonials[index].classList.add("active");
}

setInterval(() => {
    currentTestimonial = (currentTestimonial + 1) % testimonials.length;
    showTestimonial(currentTestimonial);
}, 4500); // 4.5 seconds



