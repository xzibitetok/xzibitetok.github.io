---
layout: default
title: Home
full-width: true
---

<!-- HERO is handled in base.html -->

<!-- ABOUT SECTION -->
<section id="about">
  <h2>About Me</h2>
  <p>
    I am a data-driven and detail-oriented Business Intelligence Manager with over 4 years of experience in data analysis, reporting, and visualization. I have a strong foundation in tools like Power BI, Excel, MySQL, and Python for creating actionable insights that drive strategic decisions.
  </p>
  <p>
    Currently, I lead business intelligence efforts at Micnous Service Nigeria Ltd, where I design interactive dashboards, conduct risk assessments, and implement KPI-driven performance monitoring for multi-million naira projects.
  </p>
  <p>
    I am passionate about leveraging data to solve real-world problems across health, infrastructure, and development sectors. To strengthen this capability, I am pursuing an MSc in Data Science at the University of South Wales, focusing on machine learning, predictive analytics, and statistical modeling.
  </p>

  <div class="skills">
    <span class="skill-badge">Data Analysis</span>
    <span class="skill-badge">Power BI</span>
    <span class="skill-badge">Python</span>
    <span class="skill-badge">SQL/MySQL</span>
    <span class="skill-badge">Excel</span>
    <span class="skill-badge">KPI Development</span>
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
      <p>Transform raw data into actionable insights efficiently.</p>
    </div>
    <div class="project-card">
      <h3>Business Intelligence Consulting</h3>
      <p>Design KPIs and reporting systems for strategic decisions.</p>
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
  <div class="projects-grid">
    <div class="project-card">
      <p>📍 Location: Abuja, Nigeria</p>
      <p>📧 Email: <a href="mailto:ubyetok@gmail.com">ubyetok@gmail.com</a></p>
      <p>📞 Phone / WhatsApp: <a href="https://wa.me/2348161777214" target="_blank">
        <img src="{{ '/assets/img/whatsapp.svg' | relative_url }}" alt="WhatsApp" class="contact-icon">
        +234 816 177 7214
      </a></p>
      <p>Connect with me:</p>
      <p>
        <a href="https://www.linkedin.com/in/ubong-etok-56b4a0170/" target="_blank">
          <img src="{{ '/assets/img/linkedin.svg' | relative_url }}" alt="LinkedIn" class="contact-icon"> LinkedIn
        </a>
      </p>
      <p>
        <a href="https://www.facebook.com/uby.etok.5" target="_blank">
          <img src="{{ '/assets/img/facebook.svg' | relative_url }}" alt="Facebook" class="contact-icon"> Facebook
        </a>
      </p>
    </div>
    <div class="project-card">
      <form action="https://formspree.io/f/xwpnkevb" method="POST">
        <input type="text" name="name" placeholder="Your Name" required>
        <input type="email" name="_replyto" placeholder="Your Email" required>
        <textarea name="message" rows="6" placeholder="Your Message" required></textarea>
        <button type="submit">Send Message</button>
      </form>
    </div>
  </div>
</section>
