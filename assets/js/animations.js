// Animate skill bars
const skillBars = document.querySelectorAll('.skill-bar');
window.addEventListener('scroll', () => {
  skillBars.forEach(bar => {
    const rect = bar.getBoundingClientRect();
    if (rect.top < window.innerHeight - 50) {
      bar.style.setProperty('--skill-width', bar.dataset.skill + '%');
      bar.style.width = bar.dataset.skill + '%';
    }
  });
});

// Counter animation
const counters = document.querySelectorAll('.counter');
counters.forEach(counter => {
  counter.innerText = '0';
  const updateCounter = () => {
    const target = +counter.getAttribute('data-target');
    const current = +counter.innerText;
    const increment = target / 100;
    if (current < target) {
      counter.innerText = `${Math.ceil(current + increment)}`;
      setTimeout(updateCounter, 30);
    } else {
      counter.innerText = target;
    }
  };
  window.addEventListener('scroll', () => {
    const rect = counter.getBoundingClientRect();
    if (rect.top < window.innerHeight - 50) {
      updateCounter();
    }
  });
});
