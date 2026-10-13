---
layout: base
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
      <p>MSc in Data Science, University of South Wales, UK</p>
    </div>
    <div class="timeline-item">
      <h4>Jan 2022 – Aug 2025</h4>
      <p>Business Intelligence Manager, Micnous Service Nigeria ltd</p>
    </div>
    <div class="timeline-item">
      <h4>Jan 2020 – Dec 2021</h4>
      <p>Data Analyst, Micnous Service Nigeria ltd</p>
    </div>
  </div>

  <!-- Skills -->
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
  strings: [
    "I turn data into actionable insights.",
    "Passionate about AI & ML.",
    "Business Intelligence Specialist."
  ],
  typeSpeed: 60,
  backSpeed: 30,
  loop: true
});
</script>


<!-- RESUME SECTION -->
<section id="resume-preview" class="section-container">
  <h2>📄 Resume</h2>

  <div class="resume-card">

    <!-- PROFESSIONAL PROFILE -->
    <h3>Professional Profile</h3>
    <p>
      Data analyst and emerging data scientist with experience in business
      intelligence, operational reporting and applied analytics. Having
      completed the taught and project components of an MSc in Data Science
      at the University of South Wales and defended a dissertation on
      crime-pattern recognition and prediction using LAPD data, I bring
      practical analytical experience across Python, R, SQL, machine learning,
      natural language processing, Hadoop MapReduce and AWS cloud technologies.
      My work focuses on transforming data into actionable insights, evaluating
      analytical models and supporting evidence-based decision-making.
    </p>

    <!-- TECHNICAL SKILLS -->
    <h3>Technical Skills</h3>
    <ul class="resume-skills">
      <li><strong>Data Analysis:</strong> Data cleaning, transformation, exploratory data analysis, statistical analysis, feature engineering and model evaluation.</li>
      <li><strong>Programming & Databases:</strong> Python, R, SQL, Bash, MySQL and Oracle SQL Developer.</li>
      <li><strong>Business Intelligence:</strong> Power BI, Excel, Tableau, Google Data Studio/Looker Studio, dashboard design and KPI reporting.</li>
      <li><strong>Machine Learning:</strong> Classification, regression, clustering, PCA, predictive modelling, cross-validation and performance metrics.</li>
      <li><strong>Text & Big Data:</strong> NLP, text mining, sentiment and emotion analysis, LDA topic modelling, Hadoop, HDFS, YARN, MapReduce and Hadoop Streaming.</li>
      <li><strong>Cloud Technologies:</strong> AWS S3, DynamoDB, EC2, AMI, VPC and Apache HTTP Server.</li>
      <li><strong>Business & Delivery:</strong> Stakeholder communication, requirements analysis, technical documentation, cost-benefit analysis and risk assessment.</li>
    </ul>

    <!-- EDUCATION -->
    <h3>Education</h3>
    <ul>
      <li>
        <strong>MSc (Hons) Data Science</strong> — University of South Wales,
        United Kingdom | Sep 2025 – Oct 2026.
        <br>
        Taught and project components completed; dissertation defended.
        Final result pending.
      </li>
      <li>
        <strong>BSc (Hons) Building</strong> — University of Uyo, Nigeria |
        Sep 2012 – Sep 2018.
        <br>
        Research project: Assessment of Procurement Methods Adopted for the
        Development of Religious Building Projects in Akwa Ibom State.
      </li>
      <li>
        <strong>West African Senior School Certificate Examination</strong>
        — Bright Stars Model Secondary School, Nigeria | Dec 2010.
      </li>
      <li>
        <strong>First School Leaving Certificate</strong>
        — University Staff School, Nigeria | Jul 2003.
      </li>
    </ul>

    <!-- LANGUAGE -->
    <h3>Language</h3>
    <p>English — Advanced</p>

    <!-- SELECTED PROJECTS -->
    <h3>Selected Data Science & Cloud Projects</h3>
    <ul class="resume-projects">

      <li>
        <strong>MSc Dissertation | Crime Pattern Recognition and Prediction
        — Los Angeles</strong>
        <p>
          Analysed LAPD incident data from 2020–2023, using 875,087 records
          with valid geographical coordinates for spatial analysis. Applied
          DBSCAN to identify 315 spatial clusters and developed monthly
          forecasting models. HistGradientBoosting achieved 14.18% WAPE on
          the 2023 test set, compared with 16.00% for a seasonal-naive
          benchmark. High-volume crime identification achieved 94.62%
          precision, recall and F1.
        </p>
      </li>

      <li>
        <strong>Breast Cancer Diagnosis | Machine Learning</strong>
        <p>
          Developed a reproducible workflow covering data preprocessing,
          exploratory analysis, feature engineering, PCA, clustering and
          five supervised classifiers. Random Forest achieved 95.65%
          held-out test accuracy, while SVM achieved 97.34% mean
          cross-validation accuracy.
        </p>
      </li>

      <li>
        <strong>Customer Review Intelligence | NLP & Text Mining</strong>
        <p>
          Analysed a 23,486-review e-commerce dataset using text mining,
          sentiment and emotion analysis, LDA topic modelling and logistic
          regression. Identified recurring fit and sizing themes and
          examined rating-related recommendation patterns.
        </p>
      </li>

      <li>
        <strong>EcoStream Energy | AWS Cloud Infrastructure & Data Analytics</strong>
        <p>
          Built an AWS workflow covering S3 telemetry storage, DynamoDB
          import, validation of five business queries, CSV result exports,
          a custom Node.js AMI and an Apache-hosted EC2 web page within
          a configured VPC.
        </p>
      </li>

      <li>
        <strong>PageTurner Books | Linux, Bash & Hadoop Text Analytics</strong>
        <p>
          Created Bash-based directory structures and Python MapReduce
          workflows using Hadoop, HDFS, YARN and Hadoop Streaming.
          Ranked the ten most frequent words in A Christmas Carol and
          produced a sentence-count result of 10,941 for Moby Dick or
          The Whale.
        </p>
      </li>

      <li>
        <strong>University Computing Department Database | SQL</strong>
        <p>
          Designed a relational database and entity-relationship diagram
          for courses, modules, tutors and students. Implemented tables,
          primary and foreign keys, sample records and five SQL queries
          across related tables.
        </p>
      </li>

    </ul>

  </div>

  <!-- FULL CV DOWNLOAD -->
  <div class="resume-button">
    <a href="/assets/MYCV.pdf"
       target="_blank"
       rel="noopener"
       class="btn">
      📑 View Full Resume
    </a>
  </div>
</section>


<!-- ACHIEVEMENTS -->
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

  <p>
    I help transform raw data into meaningful insights through
    data analysis, statistical modelling, machine learning,
    business intelligence, database solutions and data-driven
    problem-solving.
  </p>

  <div class="projects-grid">

    <div class="project-card">
      <h3>📊 Data Analysis & Reporting</h3>
      <p>
        Data cleaning, transformation, exploratory analysis,
        statistical analysis and reporting using Python, R,
        SQL and Excel to support evidence-based decisions.
      </p>
    </div>

    <div class="project-card">
      <h3>📈 Data Visualisation & Dashboards</h3>
      <p>
        Interactive dashboards, KPI reporting, trend analysis
        and performance visualisation using Power BI, Tableau,
        Excel and Google Data Studio.
      </p>
    </div>

    <div class="project-card">
      <h3>🤖 Machine Learning & Predictive Analytics</h3>
      <p>
        Predictive modelling, classification, clustering,
        feature engineering and model evaluation to identify
        patterns and support data-informed decisions.
      </p>
    </div>

    <div class="project-card">
      <h3>💼 Business Intelligence & Performance Monitoring</h3>
      <p>
        KPI development, management reporting, budget and
        variance analysis, resource monitoring, risk assessment
        and decision-support reporting.
      </p>
    </div>

    <div class="project-card">
      <h3>🗄️ Database Design & SQL Solutions</h3>
      <p>
        Relational database development, SQL querying,
        data retrieval, data organisation and database
        management using MySQL and Oracle SQL.
      </p>
    </div>

    <div class="project-card">
      <h3>🐘 Big Data & Distributed Processing</h3>
      <p>
        Linux and Bash operations, HDFS data storage,
        Hadoop MapReduce and Python-based distributed
        text processing for large-scale analytical tasks.
      </p>
    </div>

    <div class="project-card">
      <h3>☁️ Cloud Data & Infrastructure</h3>
      <p>
        Practical cloud engineering involving Amazon S3,
        DynamoDB, EC2, machine images and web application
        deployment, supported by documented project work.
      </p>
    </div>

    <div class="project-card">
      <h3>🔍 Research & Analytical Problem-Solving</h3>
      <p>
        Research-driven analysis, model comparison,
        evidence interpretation and clear communication
        of findings, limitations and recommendations.
      </p>
    </div>

  </div>
</section>

<!-- PROJECTS SECTION -->
<section id="projects" class="section-container">
  <h2>💻 Featured Projects</h2>

  <p>
    Selected academic and professional projects demonstrating
    data analysis, machine learning, business intelligence,
    database management, cloud engineering and distributed data processing.
  </p>

  <div class="projects-grid">
    
    <div class="project-card">
      <h3>Breast Cancer Machine Learning</h3>
      <p>
        Data preprocessing, exploratory analysis, feature engineering,
        dimensionality reduction and supervised classification.
      </p>
      <a href="https://github.com/xzibitetok/xzibitetok.github.io/tree/master/breast-cancer-machine-learning"
         target="_blank" rel="noopener">
        View Project →
      </a>
    </div>

    <div class="project-card">
      <h3>Customer Review Intelligence</h3>
      <p>
        E-commerce review analysis using text mining, sentiment and
        emotion analysis, topic modelling and logistic regression.
      </p>
      <a href="https://github.com/xzibitetok/xzibitetok.github.io/tree/master/data-mining-sentiment-analysis"
         target="_blank" rel="noopener">
        View Project →
      </a>
    </div>

    <div class="project-card">
      <h3>Hadoop Distributed Text Analytics</h3>
      <p>
        Linux and Bash, HDFS, YARN, Hadoop Streaming and Python
        MapReduce for distributed word-frequency and sentence-count analysis.
      </p>
      <a href="https://github.com/xzibitetok/xzibitetok.github.io/tree/master/hadoop-distributed-text-analytics"
         target="_blank" rel="noopener">
        View Project →
      </a>
    </div>

    <div class="project-card">
      <h3>University Computing Department Database</h3>
      <p>
        Database project demonstrating relational database management,
        SQL and structured data organisation.
      </p>
      <a href="https://github.com/xzibitetok/xzibitetok.github.io/tree/master/university-computing-department-database"
         target="_blank" rel="noopener">
        View Project →
      </a>
    </div>

    <div class="project-card">
      <h3>EcoStream Energy — AWS Cloud</h3>
      <p>
        Cloud engineering involving Amazon S3, DynamoDB, EC2,
        custom machine images and web application deployment.
      </p>
      <a href="https://github.com/xzibitetok/xzibitetok.github.io/tree/master/ecostream-energy-aws-cloud"
         target="_blank" rel="noopener">
        View Project →
      </a>
    </div>

    <div class="project-card">
      <h3>Data Visualization Dashboard</h3>
      <p>
        Excel-based sales analysis using pivot tables,
        summaries and dashboard visualisations.
      </p>
      <a href="https://github.com/xzibitetok/Xzibit-Sales-Analysis"
         target="_blank" rel="noopener">
        View Project →
      </a>
    </div>

    <div class="project-card">
      <h3>Power BI Visualization Dashboard</h3>
      <p>
        Interactive sales reporting with dynamic metrics,
        drill-through functionality and visual analysis.
      </p>
      <a href="https://github.com/xzibitetok/Frank-s-Sales-Analysis"
         target="_blank" rel="noopener">
        View Project →
      </a>
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
