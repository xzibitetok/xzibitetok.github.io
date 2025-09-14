// Typed.js hero
new Typed("#typed", {
  strings: ["Business Intelligence Manager", "Data Scientist", "Data Analyst", "ML Enthusiast"],
  typeSpeed: 70,
  backSpeed: 40,
  loop: true
});

// Particles.js
particlesJS.load('particles-js', '/assets/particles.json', function(){
  console.log('particles.js loaded');
});

// Animate skill bars
const skillBars = document.querySelectorAll('.skill-fill');
const animateSkills = () => {
  skillBars.forEach(skill => {
    const rect = skill.getBoundingClientRect();
    if(rect.top < window.innerHeight - 50){
      skill.style.width = skill.getAttribute('data-percent');
    }
  });
};
window.addEventListener('scroll', animateSkills);
window.addEventListener('load', animateSkills);

// Animate counters
const counters = document.querySelectorAll('.counter');
const speed = 200;
const animateCounters = () => {
  counters.forEach(counter => {
    const updateCount = () => {
      const target = +counter.getAttribute('data-target');
      const count = +counter.innerText;
      const increment = Math.ceil(target / speed);
      if(count < target){
        counter.innerText = count + increment;
        setTimeout(updateCount, 20);
      } else { counter.innerText = target; }
    }
    const rect = counter.getBoundingClientRect();
    if(rect.top < window.innerHeight - 50 && !counter.classList.contains('counted')){
      counter.classList.add('counted');
      updateCount();
    }
  });
};
window.addEventListener('scroll', animateCounters);
window.addEventListener('load', animateCounters);

// Smooth scroll & scroll spy
document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener('click', function(e){
    e.preventDefault();
    document.querySelector(this.getAttribute('href'))
      .scrollIntoView({ behavior: 'smooth', block: 'start' });
  });
});

const sections = document.querySelectorAll("section");
const navLinks = document.querySelectorAll(".nav-links li a");
window.addEventListener("scroll", () => {
  let current = "";
  sections.forEach(section => {
    const sectionTop = section.offsetTop - 90;
    if (pageYOffset >= sectionTop) current = section.getAttribute("id");
  });
  navLinks.forEach(link => {
    link.classList.remove("active");
    if(link.getAttribute("href") === "#" + current) link.classList.add("active");
  });
});
