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
    <!-- Circular Avatar -->
    <img src="/assets/img/githubpics.jpg" alt="Ubong Etok" class="hero-avatar">

    <h1>Hi, I'm <span>Ubong Etok</span></h1>

    <!-- Typed.js Roles Card -->
    <div class="typed-card">
      <span id="typed"></span>
    </div>

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

<!-- SERVICES SECTION -->
<section id="services">
  <h2>💼 Services</h2>
  <div class="services-grid">
    <div class="service-card">
      <h3>Data Visualization</h3>
      <p>Build interactive dashboards with Power BI & Tableau.</p>
    </div>
    <div class="service-card">
      <h3>Data Cleaning & Analysis</h3>
      <p>Transform raw data into actionable insights.</p>
    </div>
    <div class="service-card">
      <h3>Business Intelligence Consulting</h3>
      <p>Design KPIs and reporting systems for your business.</p>
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

<!-- CONTACT / GET IN TOUCH SECTION -->
<section id="contact">
  <h2>📫 Get in Touch</h2>
  <div class="contact-grid">
    <div class="contact-card">
      <h3>Contact Info</h3>
      <p>📍 Location: Abuja, Nigeria<br>
         📧 Email: <a href="mailto:ubyetok@gmail.com">ubyetok@gmail.com</a><br>
         📞 Phone: +234 816 177 7214</p>
      <p><strong>Connect with me:</strong><br>
         <a href="https://www.linkedin.com/in/ubong-etok-56b4a0170/" target="_blank">LinkedIn</a> |
         <a href="https://github.com/xzibitetok" target="_blank">GitHub</a></p>
    </div>
    <div class="contact-card">
      <h3>Send a Message</h3>
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
