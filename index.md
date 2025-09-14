<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ubong Etok - Portfolio</title>
  <link rel="stylesheet" href="custom-styles.css">
</head>
<body id="home">

  <!-- ================================
       NAVBAR
  =================================== -->
  <header>
    <nav class="navbar">
      <div class="nav-logo">
        <a href="#home">Ubong<span>Etok</span></a>
      </div>

      <div class="nav-toggle" onclick="document.querySelector('.nav-links').classList.toggle('show')">
        ☰
      </div>

      <ul class="nav-links">
        <li><a href="#about">About</a></li>
        <li><a href="#resume-preview">Resume</a></li>
        <li><a href="#stats">Achievements</a></li>
        <li><a href="#services">Services</a></li>
        <li><a href="#projects">Projects</a></li>
        <li><a href="#contact">Contact</a></li>
      </ul>
    </nav>
  </header>

  <!-- ================================
       HERO SECTION
  =================================== -->
  <section class="hero" id="hero">
    <div class="hero-content">
      <h1>Hi, I’m <span>Ubong Etok</span></h1>
      <p>Aspiring Data Scientist | Turning data into actionable insights</p>
      <a href="#projects" class="btn">View My Work</a>
    </div>
  </section>

  <!-- ================================
       ABOUT SECTION
  =================================== -->
  <section id="about">
    <h2>About Me</h2>
    <p>
      I’m a data enthusiast passionate about using Python, Excel, and Power BI
      to solve real-world problems. Currently pursuing my MSc in Data Science.
    </p>
  </section>

  <!-- ================================
       RESUME SECTION
  =================================== -->
  <section id="resume-preview">
    <h2>Resume</h2>
    <p>
      Download my resume <a href="resume.pdf" target="_blank">here</a>.
    </p>
  </section>

  <!-- ================================
       ACHIEVEMENTS / STATS
  =================================== -->
  <section id="stats">
    <h2>Achievements</h2>
    <ul>
      <li>Google Data Analytics Certified</li>
      <li>JP Morgan Virtual Internship (Data Analytics)</li>
      <li>Currently MSc Data Science, University of South Wales</li>
    </ul>
  </section>

  <!-- ================================
       SERVICES SECTION
  =================================== -->
  <section id="services">
    <h2>Services</h2>
    <p>I specialize in data cleaning, transformation, visualization, and reporting.</p>
  </section>

  <!-- ================================
       PROJECTS SECTION
  =================================== -->
  <section id="projects">
    <h2>Projects</h2>
    <div class="project">
      <h3>Excel Sales Dashboard</h3>
      <p>Interactive dashboard with pivots and slicers for business insights.</p>
    </div>
    <div class="project">
      <h3>Customer Churn Prediction</h3>
      <p>Machine learning model in Python to predict churn.</p>
    </div>
    <div class="project">
      <h3>Power BI Visualization</h3>
      <p>Professional BI dashboards for real-time analytics.</p>
    </div>
  </section>

  <!-- ================================
       CONTACT SECTION
  =================================== -->
  <section id="contact">
    <h2>Contact Me</h2>
    <p>
      Let’s connect! Reach me at
      <a href="mailto:ubyetok@gmail.com">ubyetok@gmail.com</a>.
    </p>
  </section>

  <!-- ================================
       FOOTER
  =================================== -->
  <footer>
    <p>© 2025 Ubong Etok. All rights reserved.</p>
  </footer>

  <!-- ================================
       JAVASCRIPT
  =================================== -->
  <script>
    // Smooth scrolling with easing
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
      anchor.addEventListener('click', function (e) {
        e.preventDefault();
        document.querySelector(this.getAttribute('href'))
          .scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
    });

    // Scroll-spy
    const sections = document.querySelectorAll("section");
    const navLinks = document.querySelectorAll(".nav-links li a");

    window.addEventListener("scroll", () => {
      let current = "";
      sections.forEach(section => {
        const sectionTop = section.offsetTop - 80;
        if (pageYOffset >= sectionTop) {
          current = section.getAttribute("id");
        }
      });

      navLinks.forEach(link => {
        link.classList.remove("active");
        if (link.getAttribute("href") === "#" + current) {
          link.classList.add("active");
        }
      });
    });
  </script>
</body>
</html>
