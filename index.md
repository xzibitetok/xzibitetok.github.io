---
layout: default
title: Home
full-width: true
---

<!-- Hero Section -->
<section class="hero" id="home">
  <div class="hero-content">
    <img src="/assets/img/githubpics.jpg" alt="Ubong Etok" class="profile-img">
    <h1>Hi, I'm Ubong Etok</h1>
    <p>Data Scientist | Data Analyst | ML Enthusiast | BI Specialist</p>
    <a href="/assets/myresume.pdf" class="resume-btn" download>Download Resume</a>
  </div>
</section>

<!-- About Section -->
<section id="about">
  <h2>About Me</h2>
  <p>
    I am a data-driven and detail-oriented Business Intelligence Manager with over 4 years of experience in data analysis, reporting, and visualization. I have a strong foundation in tools like Power BI, Excel, MySQL, and Python for creating actionable insights that drive strategic decisions.
  </p>
  <p>
    Currently, I lead business intelligence efforts at Micnous Service Nigeria Ltd, designing interactive dashboards, conducting risk assessments, and implementing KPI-driven performance monitoring for multi-million naira projects. I am pursuing an MSc in Data Science at the University of South Wales.
  </p>
  <div class="skills">
    <span class="skill-badge">Data Analysis</span>
    <span class="skill-badge">Power BI</span>
    <span class="skill-badge">Excel</span>
    <span class="skill-badge">SQL</span>
    <span class="skill-badge">Python</span>
    <span class="skill-badge">KPI Development</span>
  </div>
</section>

<!-- Projects Section -->
<section id="projects">
  <h2>My Projects</h2>
  <div class="projects-grid">
    <div class="project-card">
      <h3>Data Visualization Dashboard</h3>
      <p>Full Excel-based analysis with pivots and dashboards.</p>
      <a href="https://github.com/xzibitetok/Xzibit-Sales-Analysis" target="_blank">View on GitHub</a>
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

<!-- Services Section -->
<section id="services">
  <h2>💼 Services</h2>
  <div class="projects-grid">
    <div class="project-card">
      <h3>Data Visualization</h3>
      <p>Build interactive dashboards with Power BI & Tableau</p>
    </div>
    <div class="project-card">
      <h3>Data Cleaning & Analysis</h3>
      <p>Transform raw data into actionable insights</p>
    </div>
    <div class="project-card">
      <h3>Business Intelligence Consulting</h3>
      <p>Design KPIs and reporting systems</p>
    </div>
  </div>
</section>

<!-- Contact Section -->
<section id="contact">
  <h2>📫 Get in Touch</h2>
  <div class="contact-cards">
    <div class="contact-card">
      <p><img src="/assets/img/whatsapp.png" class="contact-icon"> +234 816 177 7214</p>
      <p><img src="/assets/img/facebook.png" class="contact-icon"> <a href="https://www.facebook.com/uby.etok.5" target="_blank">Facebook</a></p>
      <p><img src="/assets/img/linkedin.png" class="contact-icon"> <a href="https://www.linkedin.com/in/ubong-etok-56b4a0170/" target="_blank">LinkedIn</a></p>
      <p><img src="/assets/img/email.png" class="contact-icon"> <a href="mailto:ubyetok@gmail.com">ubyetok@gmail.com</a></p>
    </div>
    <div class="contact-card">
      <form action="https://formspree.io/f/xwpnkevb" method="POST">
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="email" name="_replyto" placeholder="Your Email" required>
        <textarea name="message" rows="6" placeholder="Your Message" required></textarea>
        <button type="submit">Send Message</button>
      </form>
    </div>
  </div>
</section>

<!-- Footer -->
<footer>
  <p>&copy; {{ site.time | date: '%Y' }} Ubong Etok | Built with ❤️ using Jekyll</p>
</footer>

<!-- Typed.js -->
<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
<script>
  new Typed("#typed", {
    strings: ["Ubong Etok", "Data Scientist", "BI Specialist", "ML Enthusiast"],
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
