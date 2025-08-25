---
layout: default
title: Home
full-width: true
---

<!-- Particles.js Container -->
<div id="particles-js"></div>

<!-- HERO SECTION -->
<section class="hero" id="home">
  <div class="hero-content">
    <h1>Hi, I'm <span>Ubong Etok</span></h1>
    <p><span id="typed"></span></p>
    <a href="/assets/myresume.pdf" class="resume-btn" download>Download Resume</a>
  </div>
</section>

<!-- NAVIGATION -->
<nav>
  <ul>
    <li><a href="#home">Home</a></li>
    <li><a href="#about">About</a></li>
    <li><a href="#projects">Projects</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
</nav>

<!-- ABOUT SECTION -->
<section id="about">
  <h2>About Me</h2>
  <p>
    I’m a passionate Data Scientist and Analyst with a strong foundation in
    data analytics, visualization, and machine learning. Currently pursuing an MSc in
    Data Science at the University of South Wales, I specialize in turning raw data into
    actionable insights.
  </p>
  <div class="skills">
    <span class="skill-badge">Python</span>
    <span class="skill-badge">Power BI</span>
    <span class="skill-badge">SQL</span>
    <span class="skill-badge">Machine Learning</span>
    <span class="skill-badge">GitHub</span>
  </div>
</section>

<!-- PROJECTS SECTION -->
<section id="projects">
  <h2>My Projects</h2>
  <div class="projects-grid">
    <div class="project-card">
      <h3>Data Visualization Dashboard</h3>
      <p>Interactive Power BI dashboard for analyzing financial data trends.</p>
      <a href="https://github.com/xzibitetok/project1" target="_blank">View on GitHub</a>
    </div>
    <div class="project-card">
      <h3>Machine Learning Model</h3>
      <p>Predictive model for customer churn using Python and scikit-learn.</p>
      <a href="https://github.com/xzibitetok/project2" target="_blank">View on GitHub</a>
    </div>
    <div class="project-card">
      <h3>Web Portfolio</h3>
      <p>Custom Jekyll-based portfolio with modern design and responsive layout.</p>
      <a href="https://xzibitetok.github.io" target="_blank">View Live</a>
    </div>
  </div>
</section>

<!-- CONTACT SECTION -->
<section id="contact">
  <h2>Contact Me</h2>
  <form action="https://formspree.io/f/xwpnkevb" method="POST">
    <input type="text" name="name" placeholder="Your Name" required>
    <input type="email" name="_replyto" placeholder="Your Email" required>
    <textarea name="message" rows="6" placeholder="Your Message" required></textarea>
    <button type="submit">Send Message</button>
  </form>
</section>

<!-- FOOTER -->
<footer>
  <p>&copy; {{ site.time | date: '%Y' }} Ubong Etok | Built with ❤️ using Jekyll</p>
</footer>

<!-- TYPED.JS -->
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
<script>
  new Typed("#typed", {
    strings: ["Data Scientist", "Data Analyst", "ML Enthusiast", "Tech Innovator"],
    typeSpeed: 70,
    backSpeed: 40,
    loop: true
  });
</script>

<!-- PARTICLES.JS -->
<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
<script>
  particlesJS.load('particles-js', 'assets/particles.json', function() {
    console.log('particles.js loaded');
  });
</script>
