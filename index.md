---
layout: default
title: Home
---

<!-- ABOUT SECTION -->
<section id="about">
  <h2>About Me</h2>
  <p><span id="about-typed"></span></p>

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
    <div class="skill"><span class="skill-name">Python</span><div class="skill-bar"><div class="skill-fill" data-percent="95%"></div></div></div>
    <div class="skill"><span class="skill-name">Power BI</span><div class="skill-bar"><div class="skill-fill" data-percent="90%"></div></div></div>
    <div class="skill"><span class="skill-name">SQL</span><div class="skill-bar"><div class="skill-fill" data-percent="85%"></div></div></div>
    <div class="skill"><span class="skill-name">Machine Learning</span><div class="skill-bar"><div class="skill-fill" data-percent="80%"></div></div></div>
    <div class="skill"><span class="skill-name">Excel</span><div class="skill-bar"><div class="skill-fill" data-percent="95%"></div></div></div>
  </div>
</section>

<!-- RESUME PREVIEW -->
<section id="resume-preview">
  <h2>📄 Resume</h2>
  <p><strong>ETOK, UBONG EFFIONG</strong><br>Cardiff, UK • +44 7831072256 • <a href="mailto:ubyetok@gmail.com">ubyetok@gmail.com</a></p>
  <h3>Profile</h3>
  <p>Data-driven Business Intelligence Manager, specializing in BI reporting, dashboards, and Python & Power BI analytics.</p>
  <h3>Education</h3>
  <ul>
    <li>M.Sc. Data Science – University of South Wales, UK (in view)</li>
    <li>B.Sc. Building – University of Uyo, Nigeria</li>
    <li>WASSCE – Bright Stars Model Secondary School, NG</li>
  </ul>
  <h3>Key Skills</h3>
  <ul>
    <li>Data Cleaning & Transformation (Excel, MySQL, Power BI, Python)</li>
    <li>Dashboard Design & BI Reporting</li>
    <li>KPI Development & Project Monitoring</li>
  </ul>
  <a href="/assets/Ubong_Etok_Resume.pdf" class="resume-btn" target="_blank">📑 View Full Resume</a>
</section>

<!-- STATS -->
<section id="stats">
  <h2>Achievements</h2>
  <div class="stats-grid">
    <div class="stat-card"><div class="counter">50+</div><p>Projects Completed</p></div>
    <div class="stat-card"><div class="counter">5</div><p>Years Experience</p></div>
    <div class="stat-card"><div class="counter">20+</div><p>Clients Served</p></div>
    <div class="stat-card"><div class="counter">10</div><p>Certifications</p></div>
  </div>
</section>

<!-- SERVICES -->
<section id="services">
  <h2>Services</h2>
  <div class="projects-grid">
    <div class="project-card">
      <h3>Data Analytics</h3>
      <p>Insights & KPI dashboards for actionable business decisions.</p>
      <span class="badge">Power BI</span>
    </div>
    <div class="project-card">
      <h3>Business Intelligence</h3>
      <p>End-to-end BI reporting, data visualization & modeling.</p>
      <span class="badge">Excel, SQL</span>
    </div>
    <div class="project-card">
      <h3>Machine Learning</h3>
      <p>Predictive analytics & ML models for business optimization.</p>
      <span class="badge">Python, Scikit-learn</span>
    </div>
  </div>
</section>

<!-- PROJECTS -->
<section id="projects">
  <h2>Projects</h2>
  <div class="projects-grid">
    <div class="project-card">
      <h3>Customer Churn Prediction</h3>
      <p>ML model to predict customer churn in a telecom company.</p>
      <a href="#">View Project</a>
    </div>
    <div class="project-card">
      <h3>Sales Dashboard</h3>
      <p>Excel & Power BI dashboard showing sales trends and KPIs.</p>
      <a href="#">View Project</a>
    </div>
    <div class="project-card">
      <h3>Invoice Analytics</h3>
      <p>BI report analyzing spending patterns for cost optimization.</p>
      <a href="#">View Project</a>
    </div>
  </div>
</section>

<!-- CONTACT -->
<section id="contact">
  <h2>Contact Me</h2>
  <form action="mailto:ubyetok@gmail.com" method="post" enctype="text/plain">
    <input type="text" name="name" placeholder="Your Name" required>
    <input type="email" name="email" placeholder="Your Email" required>
    <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
    <button type="submit">Send Message</button>
  </form>
</section>

<script>
  // Skill bar animation
  window.addEventListener('DOMContentLoaded', () => {
    document.querySelectorAll('.skill-fill').forEach(bar => {
      const percent = bar.getAttribute('data-percent');
      bar.style.width = percent;
    });

    // Counter animation
    document.querySelectorAll('.counter').forEach(counter => {
      let count = 0;
      const target = +counter.innerText.replace('+','');
      const increment = target / 100;
      const interval = setInterval(() => {
        count += increment;
        if(count >= target) { counter.innerText = target + (counter.innerText.includes('+') ? '+' : ''); clearInterval(interval);}
        else counter.innerText = Math.floor(count) + (counter.innerText.includes('+') ? '+' : '');
      }, 20);
    });
  });
</script>
