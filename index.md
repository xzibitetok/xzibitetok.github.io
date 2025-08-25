---
layout: default
title: Home
full-width: true
---

<!-- ABOUT SECTION -->
<section id="about">
  <h2>About Me</h2>
  <p>
    <span id="about-typed"></span>
  </p>

  <div class="timeline">
    <div class="timeline-item">
      <h4>2025 – Present</h4>
      <p>MSc in Data Science, University of South Wales</p>
    </div>
    <div class="timeline-item">
      <h4>2019 – 2023</h4>
      <p>Business Intelligence Manager, [Your Company]</p>
    </div>
    <div class="timeline-item">
      <h4>2017 – 2019</h4>
      <p>Data Analyst, [Your Previous Company]</p>
    </div>
  </div>

  <!-- Skills with Animated Bars -->
  <div class="skills">
    <div class="skill">
      <span class="skill-name">Python</span>
      <div class="skill-bar"><div class="skill-fill" data-percent="95%"></div></div>
    </div>
    <div class="skill">
      <span class="skill-name">Power BI</span>
      <div class="skill-bar"><div class="skill-fill" data-percent="90%"></div></div>
    </div>
    <div class="skill">
      <span class="skill-name">SQL</span>
      <div class="skill-bar"><div class="skill-fill" data-percent="85%"></div></div>
    </div>
    <div class="skill">
      <span class="skill-name">Machine Learning</span>
      <div class="skill-bar"><div class="skill-fill" data-percent="80%"></div></div>
    </div>
    <div class="skill">
      <span class="skill-name">Excel</span>
      <div class="skill-bar"><div class="skill-fill" data-percent="95%"></div></div>
    </div>
  </div>
</section>

<!-- STATS / ACHIEVEMENTS -->
<section id="stats">
  <h2>📊 Achievements</h2>
  <div class="stats-grid">
    <div class="stat-card">
      <h3 class="counter" data-target="4">0</h3>
      <p>Years of Experience</p>
    </div>
    <div class="stat-card">
      <h3 class="counter" data-target="25">0</h3>
      <p>Projects Completed</p>
    </div>
    <div class="stat-card">
      <h3 class="counter" data-target="15">0</h3>
      <p>Clients Served</p>
    </div>
    <div class="stat-card">
      <h3 class="counter" data-target="5">0</h3>
      <p>Certifications</p>
    </div>
  </div>
</section>

<!-- SERVICES SECTION -->
<section id="services">
  <h2>💼 Services</h2>
  <div class="projects-grid">
    <div class="project-card">
      <h3>Data Visualization</h3>
      <p>Build interactive dashboards with Power BI & Tableau.</p>
      <span class="badge">Popular</span>
    </div>
    <div class="project-card">
      <h3>Data Cleaning & Analysis</h3>
      <p>Transform raw data into actionable insights.</p>
      <span class="badge">Expert</span>
    </div>
    <div class="project-card">
      <h3>Business Intelligence Consulting</h3>
      <p>Design KPIs and reporting systems.</p>
      <span class="badge">Trusted</span>
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
  
  <form action="https://formspree.io/f/xwpnkevb" method="POST">
    <input type="text" name="name" placeholder="Your Name" required>
    <input type="email" name="_replyto" placeholder="Your Email" required>
    <textarea name="message" rows="6" placeholder="Your Message" required></textarea>
    <button type="submit">Send Message</button>
  </form>
</section>

<script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
<script>
  new Typed("#about-typed", {
    strings: ["I turn data into actionable insights.", "Passionate about AI & ML.", "Business Intelligence Specialist."],
    typeSpeed: 60,
    backSpeed: 30,
    loop: true
  });
</script>
