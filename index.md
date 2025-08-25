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
    <li><a href="#services">Services</a></li>
    <li><a href="#projects">Projects</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
</nav>

<!-- ABOUT SECTION -->
<section id="about">
  <h2>About Me</h2>
  <div class="about-container">
    <div class="about-img">
      <img src="/assets/img/githubpics.jpg" alt="Ubong Etok">
    </div>
    <div class="about-text">
      <p>I am a data-driven and detail-oriented Business Intelligence Manager with over 4 years of experience in data analysis, reporting, and visualization. I leverage tools like Power BI, Excel, MySQL, and Python to create actionable insights.</p>
      <p>Currently leading business intelligence efforts at Micnous Service Nigeria Ltd, designing interactive dashboards, conducting risk assessments, and implementing KPI-driven performance monitoring for multi-million naira projects.</p>
      <p>Passionate about using data to solve real-world problems, I am pursuing an MSc in Data Science at the University of South Wales, focusing on machine learning, predictive analytics, and statistical modeling.</p>

      <h3>Core Skills</h3>
      <div class="skills">
        <span class="skill-badge">Data Analysis & BI</span>
        <span class="skill-badge">Power BI & Google Data Studio</span>
        <span class="skill-badge">MySQL Database Management</span>
        <span class="skill-badge">Data Cleaning & Python</span>
        <span class="skill-badge">KPI Development & Risk Assessment</span>
      </div>

      <p><strong>Career Goal:</strong> Build advanced data solutions that deliver measurable impact and help organizations make informed decisions.</p>
    </div>
  </div>
</section>

<!-- SERVICES SECTION -->
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
      <p>Design KPIs and reporting systems for organizations</p>
    </div>
  </div>
</section>

<!-- PROJECTS SECTION -->
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

<!-- CONTACT SECTION -->
<section id="contact">
  <h2>📫 Get in Touch</h2>
  <div class="contact-cards">
    <!-- Contact Info -->
    <div class="contact-card">
      <p><img src="/assets/img/whatsapp.png" class="contact-icon"> +234 816 177 7214</p>
      <p><a href="https://www.facebook.com/uby.etok.5" target="_blank"><img src="/assets/img/facebook.png" class="contact-icon"></a></p>
      <p><a href="https://www.linkedin.com/in/ubong-etok-56b4a0170/" target="_blank"><img src="/assets/img/linkedin.png" class="contact-icon"></a></p>
      <p><a href="mailto:ubyetok@gmail.com"><img src="/assets/img/email.png" class="contact-icon"></a></p>
    </div>

    <!-- Contact Form -->
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

<!-- FOOTER -->
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
