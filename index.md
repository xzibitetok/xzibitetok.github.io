---
layout: default
title: Home
full-width: true
---

<!-- ABOUT SECTION -->
<section id="about" class="section-container">
  <h2>About Me</h2>
  <p id="about-typed"></p>

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

<script>
new Typed("#about-typed", {
  strings: ["I turn data into actionable insights.", "Passionate about AI & ML.", "Business Intelligence Specialist."],
  typeSpeed: 60,
  backSpeed: 30,
  loop: true
});
</script>

<!-- RESUME SECTION -->
<section id="resume-preview" class="section-container">
  <h2>📄 Resume</h2>
  <div class="resume-card">
    <p><strong>ETOK, UBONG EFFIONG</strong><br>
    Cardiff, United Kingdom • +44 7831072256 • <a href="mailto:ubyetok@gmail.com">ubyetok@gmail.com</a></p>

    <h3>Profile</h3>
    <p>
      Data-driven Business Intelligence Manager with expertise in Power BI, Excel, SQL, Python, and Machine Learning.
      Experienced in transforming complex datasets into actionable insights and leading data-driven strategies.
    </p>

    <h3>Education</h3>
    <ul>
      <li>M.Sc. Data Science – University of South Wales, UK (In view)</li>
      <li>B.Sc. Building – University of Uyo, Akwa Ibom, NG (2018)</li>
      <li>WASSCE – Bright Stars Model Secondary School, NG (2010)</li>
    </ul>

    <h3>Key Skills</h3>
    <ul class="resume-skills">
      <li>Data Cleaning & Transformation (Excel, MySQL, Power BI, Python)</li>
      <li>Dashboard Design & BI Reporting</li>
      <li>KPI Development & Project Monitoring</li>
    </ul>
  </div>
  <div class="resume-button">
    <a href="/assets/Ubong_Etok_Resume.pdf" target="_blank" class="btn">📑 View Full Resume</a>
  </div>
</section>

<!-- ACHIEVEMENTS / STATS -->
<section id="stats" class="section-container">
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
<section id="services" class="section-container">
  <h2>💼 Services</h2>
  <div class="projects-grid">
    <div class="project-card">
      <h3>Data Visualization</h3>
      <p>Interactive dashboards using Power BI & Tableau.</p>
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
<section id="projects" class="section-container">
  <h2>💻 Projects</h2>
  <div class="projects-grid">
    <div class="project-card">
      <h3>Data Visualization Dashboard</h3>
      <p>Excel-based analysis with pivots and dashboards.</p>
      <a href="https://github.com/xzibitetok/Xzibit-Sales-Analysis" target="_blank">View Project →</a>
    </div>
    <div class="project-card">
      <h3>Power BI Visualization Dashboard</h3>
      <p>Dynamic sales metrics dashboard with drill-throughs and interactive charts in Power BI.</p>
      <a href="https://github.com/xzibitetok/Frank-s-Sales-Analysis" target="_blank">View Project →</a>
    </div>
    <div class="project-card">
      <h3>Web Portfolio</h3>
      <p>Custom Jekyll-based portfolio with modern design.</p>
      <a href="https://xzibitetok.github.io" target="_blank">View Live →</a>
    </div>
  </div>
</section>

<!-- CONTACT SECTION -->
<section id="contact" class="section-container">
  <h2>📫 Get in Touch</h2>
  <form action="https://formspree.io/f/xwpnkevb" method="POST">
    <input type="text" name="name" placeholder="Your Name" required>
    <input type="email" name="_replyto" placeholder="Your Email" required>
    <textarea name="message" rows="6" placeholder="Your Message" required></textarea>
    <button type="submit">Send Message</button>
  </form>
</section>
