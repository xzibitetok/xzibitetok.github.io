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
      <div class="skill-bar"><div class="skill-fill" data-percent="90%"></div></div>
    </div>
  </div>
</section>

<!-- ACHIEVEMENTS / STATS -->
<section id="stats">
  <h2>Achievements</h2>
  <div class="stats-grid">
    <div class="stat-card">
      <h3 class="counter" data-target="150">0</h3>
      <p>Projects Completed</p>
    </div>
    <div class="stat-card">
      <h3 class="counter" data-target="50">0</h3>
      <p>Happy Clients</p>
    </div>
    <div class="stat-card">
      <h3 class="counter" data-target="5">0</h3>
      <p>Years Experience</p>
    </div>
    <div class="stat-card">
      <h3 class="counter" data-target="10">0</h3>
      <p>Certifications</p>
    </div>
  </div>
</section>

<!-- SERVICES SECTION -->
<section id="services">
  <h2>Services</h2>
  <div class="services-grid">
    <div class="service-card">
      <h3>Data Analytics</h3>
      <p>Transforming data into actionable insights for decision-making.</p>
    </div>
    <div class="service-card">
      <h3>BI Reporting</h3>
      <p>Designing interactive dashboards using Power BI and Excel.</p>
    </div>
    <div class="service-card">
      <h3>Machine Learning Models</h3>
      <p>Predictive analytics and modeling for business optimization.</p>
    </div>
  </div>
</section>

<!-- PROJECTS SECTION -->
<section id="projects">
  <h2>Projects</h2>
  <div class="projects-grid">
    <div class="project-card">
      <h3>Customer Churn Prediction</h3>
      <p>Machine learning model to predict customer churn using Python.</p>
      <a href="#">View Project</a>
    </div>
    <div class="project-card">
      <h3>Sales Dashboard</h3>
      <p>Power BI dashboard visualizing sales trends and KPIs.</p>
      <a href="#">View Project</a>
    </div>
  </div>
</section>

<!-- CONTACT SECTION -->
<section id="contact">
  <h2>Contact Me</h2>
  <form action="mailto:ubyetok@gmail.com" method="POST" enctype="text/plain">
    <input type="text" name="name" placeholder="Your Name" required>
    <input type="email" name="email" placeholder="Email" required>
    <textarea name="message" rows="5" placeholder="Message" required></textarea>
    <button type="submit">Send Message</button>
  </form>
</section>

<!-- Floating Socials -->
<div class="floating-social">
  <a href="{{ site.social-network-links.linkedin }}"><img src="/assets/img/linkedin.png" alt="LinkedIn"></a>
  <a href="{{ site.social-network-links.facebook }}"><img src="/assets/img/facebook.png" alt="Facebook"></a>
  <a href="mailto:ubyetok@gmail.com"><img src="/assets/img/email.png" alt="Email"></a>
</div>
