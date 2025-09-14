// Typed.js
new Typed("#typed", {
  strings: ["Business Intelligence Manager", "Data Scientist", "Data Analyst", "ML Enthusiast"],
  typeSpeed: 70,
  backSpeed: 40,
  loop: true
});

// Particles.js
particlesJS.load('particles-js', '/assets/particles.json');

// Animate skill bars
const skillBars = document.querySelectorAll('.skill-fill');
const animateSkills = () => {
  skillBars.forEach(skill => {
    const rect = skill.getBoundingClientRect();
    if(rect.top < window.innerHeight - 50){
      skill.style.width = skill.getAttribute('data-percent');
    }
  });
}
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
      } else {
        counter.innerText = target;
      }
    }
    const rect = counter.getBoundingClientRect();
    if(rect.top < window.innerHeight - 50 && !counter.classList.contains('counted')){
      counter.classList.add('counted');
      updateCount();
    }
  });
}
window.addEventListener('scroll', animateCounters);
window.addEventListener('load', animateCounters);
