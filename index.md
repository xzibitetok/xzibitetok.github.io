---
layout: default
title: Home
full-width: true
---

<!-- HERO SECTION -->
<section class="hero">
  <div class="hero-content">
    <img src="/assets/img/githubpics.jpg" alt="Ubong Etok" class="hero-profile">
    <div class="hero-right">
      <h1>Hi, I’m <span>Ubong Etok</span></h1>
      <p id="typed"></p>
      <a href="/assets/Ubong_Etok_Resume.pdf" class="resume-btn" download>Download Resume</a>
    </div>
  </div>
</section>

<!-- ABOUT SECTION -->
<section id="about">
  <h2>About Me</h2>
  <p>
    I am a data-driven and detail-oriented Business Intelligence Manager with over 4 years of experience in data analysis, reporting, and visualization. 
    Currently pursuing an MSc in Data Science at the University of South Wales, I specialize in turning raw data into actionable insights.
  </p>

  <div class="skills">
    <span class="skill-badge">Python</span>
    <span class="skill-badge">Power BI</span>
    <span class="skill-badge">SQL</span>
    <span class="skill-badge">Machine Learning</span>
    <span class="skill-badge">Excel</span>
  </div>
</section>

<!-- SERVICES SECTION -->
<section id="services">
  <h2>💼 Services</h2>
  <div class="projects-grid">
    <div class="project-card">
      <h3>Data Visualization</h3>
      <p>Build interactive dashboards with Power BI & Tableau.</p>
    </div>
    <div class="project-card">
      <h3>Data Cleaning & Analysis</h3>
      <p>Transform raw data into actionable insights.</p>
    </div>
    <div class="project-card">
      <h3>Business Intelligence Consulting</h3>
      <p>Design KPIs and reporting systems.</p>
    </div>
  </div>
</section>

<!-- PROJECTS SECTION -->
<section id="projects">
  <h2>My Projects</h2>
  <div class="projects-grid">
    <div class="project-card">
      <h3>Data Visualization Dashboard</h3>
      <p>Excel-based analysis with pivots and dashboards.</p>
      <a href="https://github.com/xzibitetok/Xzibit-Sales-Analysis" target="_blank">View Project →</a>
    </div>
    <div class="project-card">
      <h3>Machine Learning Model</h3>
      <p>Predictive model for customer churn using Python.</p>
      <a href="https://github.com/xzibitetok/project2" target="_blank">View Project →</a>
    </div>
    <div class="project-card">
      <h3>Web Portfolio</h3>
      <p>Custom Jekyll-based portfolio with modern design.</p>
      <a href="https://xzibitetok.github.io" target="_blank">View Live →</a>
    </div>
  </div>
</section>

<!-- CONTACT SECTION -->
<section id="contact">
  <h2>📫 Get in Touch</h2>
  <div class="contact-grid">
    <div class="contact-card">
      <img src="/assets/img/whatsapp.png" alt="Whatsapp">
      <a href="https://wa.me/2348161777214" target="_blank">+234 816 177 7214</a>
    </div>
    <div class="contact-card">
      <img src="/assets/img/linkedin.png" alt="LinkedIn">
      <a href="https://www.linkedin.com/in/ubong-etok-56b4a0170/" target="_blank">LinkedIn</a>
    </div>
    <div class="contact-card">
      <img src="/assets/img/facebook.png" alt="Facebook">
      <a href="https://www.facebook.com/uby.etok.5" target="_blank">Facebook</a>
    </div>
    <div class="contact-card">
      <img src="/assets/img/email.png" alt="Email">
      <a href="mailto:ubyetok@gmail.com">ubyetok@gmail.com</a>
    </div>
  </div>

  <form action="https://formspree.io/f/xwpnkevb" method="POST">
    <input type="text" name="name" placeholder="Your Name" required>
    <input type="email" name="_replyto" placeholder="Your Email" required>
    <textarea name="message" rows="6" placeholder="Your Message" required></textarea>
    <button type="submit">Send Message</button>
  </form>
</section>

<!-- Footer -->
<footer>
  <p>&copy; {{ site.time | date: '%Y' }} Ubong Etok | Built with ❤️ using Jekyll</p>
</footer>

<!-- Typed.js -->
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
<script>
  new Typed("#typed", {
    strings: ["Business Intelligence Manager", "Data Scientist", "Data Analyst", "ML Enthusiast"],
    typeSpeed: 70,
    backSpeed: 40,
    loop: true
  });
</script>

<!-- Particles.js -->
<script src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
<script>
  particlesJS.load('particles-js', '/assets/particles.json', function() {
    console.log('particles.js loaded');
  });
</script>
