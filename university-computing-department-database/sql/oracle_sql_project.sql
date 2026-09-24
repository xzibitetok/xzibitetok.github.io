-- University Computing Department Database
-- Oracle SQL Developer

-- Creation of Tables

-- Table 1: Creating the Course Table
CREATE TABLE Course (
    course_id NUMBER,
    course_name VARCHAR2(100) NOT NULL,
    course_credit NUMBER(10),
    course_duration VARCHAR2(50),
    course_fee NUMBER(10,2),
    CONSTRAINT Course_course_id_pk PRIMARY KEY(course_id)
);

-- Table 2: Creating the Module Table
CREATE TABLE Module (
    module_id NUMBER,
    module_name VARCHAR2(100) NOT NULL,
    module_credit NUMBER(10) NOT NULL,
    semester VARCHAR2(20),
    tutor_id NUMBER,
    CONSTRAINT Module_module_id_pk PRIMARY KEY(module_id),
    CONSTRAINT fk_tutor_id FOREIGN KEY(tutor_id) REFERENCES Tutor(tutor_id)
);

-- Table 3: Creating the Tutor Table
CREATE TABLE Tutor (
    tutor_id NUMBER,
    tutor_name VARCHAR2(100) NOT NULL,
    tutor_email VARCHAR2(100) NOT NULL,
    tutor_phone_no NUMBER,
    contract_type VARCHAR2(50),
    tutor_department VARCHAR2(100),
    hire_date DATE,
    CONSTRAINT Tutor_tutor_id_pk PRIMARY KEY(tutor_id)
);

-- Table 4: Creating the Student Table
CREATE TABLE Student (
    student_id NUMBER,
    student_name VARCHAR2(100) NOT NULL,
    student_gender VARCHAR2(10) NOT NULL,
    student_email VARCHAR2(100) NOT NULL,
    student_phone_no NUMBER,
    student_address VARCHAR2(200),
    student_DoB DATE,
    date_of_enrolment DATE,
    course_id NUMBER,
    total_grade NUMBER(5,2),
    CONSTRAINT Student_student_id_pk PRIMARY KEY(student_id),
    CONSTRAINT fk_course_id FOREIGN KEY(course_id) REFERENCES Course(course_id)
);

-- Table 5: Creating the Course Module Table
CREATE TABLE Course_Module (
  course_id NUMBER,
  module_id NUMBER,
  CONSTRAINT Course_Module_pk PRIMARY KEY(course_id, module_id),
  CONSTRAINT fk_cm_course_id FOREIGN KEY(course_id) REFERENCES Course(course_id),
  CONSTRAINT fk_cm_module_id FOREIGN KEY(module_id) REFERENCES Module(module_id)
);

-- Table 6: Creating the Student Module Table
CREATE TABLE Student_Module (
  module_id NUMBER,
  student_id NUMBER,
  CONSTRAINT Student_Module_pk PRIMARY KEY(module_id, student_id),
  CONSTRAINT fk_sm_module_id FOREIGN KEY(module_id) REFERENCES Module(module_id),
  CONSTRAINT fk_sm_student_id FOREIGN KEY(student_id) REFERENCES Student(student_id)
);

-- Inserting Data to the Tables

-- Inserting Course Records
INSERT ALL
INTO Course (course_id, course_name, course_credit, course_duration, course_fee) VALUES (501001, 'Computer Science', 200, '5 Years', 12500)
INTO Course (course_id, course_name, course_credit, course_duration, course_fee) VALUES (501002, 'Cyber Security', 180, '4 Years', 11800)
INTO Course (course_id, course_name, course_credit, course_duration, course_fee) VALUES (501003, 'Information Technology', 160, '3 Years', 9800)
SELECT * FROM dual;

-- Inserting Module Records
INSERT ALL
INTO Module (module_id, module_name, module_credit, semester, tutor_id) VALUES (3001, 'Introduction to Programming', 20, 'Semester 1', 2001)
INTO Module (module_id, module_name, module_credit, semester, tutor_id) VALUES (3002, 'Advanced Database Design', 25, 'Semester 2', 2003)
INTO Module (module_id, module_name, module_credit, semester, tutor_id) VALUES (3003, 'Network and Security Fundamentals', 20, 'Semester 1', 2005)
INTO Module (module_id, module_name, module_credit, semester, tutor_id) VALUES (3004, 'Cyber Threat Analysis', 30, 'Semester 2', 2002)
INTO Module (module_id, module_name, module_credit, semester, tutor_id) VALUES (3005, 'Web Application Development', 20, 'Semester 2', 2004)
INTO Module (module_id, module_name, module_credit, semester, tutor_id) VALUES (3006, 'Data Structures and Algorithms', 25, 'Semester 1', 2001)
INTO Module (module_id, module_name, module_credit, semester, tutor_id) VALUES (3007, 'Artificial Intelligence Fundamentals', 30, 'Semester 2', 2003)
INTO Module (module_id, module_name, module_credit, semester, tutor_id) VALUES (3008, 'Cloud Computing and Virtualization', 25, 'Semester 1', 2005)
INTO Module (module_id, module_name, module_credit, semester, tutor_id) VALUES (3009, 'Human-Computer Interaction', 20, 'Semester 2', 2004)
INTO Module (module_id, module_name, module_credit, semester, tutor_id) VALUES (3010, 'Software Project Management', 30, 'Semester 1', 2001)
SELECT * FROM dual;

-- Inserting Tutor Records
INSERT ALL
INTO Tutor (tutor_id, tutor_name, tutor_email, tutor_phone_no, contract_type, tutor_department, hire_date) VALUES (2001, 'Dr. Sarah Cole', 'sarah.cole@university.edu', 7012234501, 'Full-time', 'Software Engineering', TO_DATE('2020-01-12','YYYY-MM-DD'))
INTO Tutor (tutor_id, tutor_name, tutor_email, tutor_phone_no, contract_type, tutor_department, hire_date) VALUES (2002, 'Mr. James Patel', 'james.patel@university.edu', 7012234502, 'Part-time', 'Cyber Security', TO_DATE('2021-03-05','YYYY-MM-DD'))
INTO Tutor (tutor_id, tutor_name, tutor_email, tutor_phone_no, contract_type, tutor_department, hire_date) VALUES (2003, 'Dr. Maria Gomez', 'maria.gomez@university.edu', 7012234503, 'Full-time', 'Database Systems', TO_DATE('2019-06-20','YYYY-MM-DD'))
INTO Tutor (tutor_id, tutor_name, tutor_email, tutor_phone_no, contract_type, tutor_department, hire_date) VALUES (2004, 'Ms. Olivia Scott', 'olivia.scott@university.edu', 7012234504, 'Contract', 'Web Development', TO_DATE('2022-02-14','YYYY-MM-DD'))
INTO Tutor (tutor_id, tutor_name, tutor_email, tutor_phone_no, contract_type, tutor_department, hire_date) VALUES (2005, 'Mr. Henry Lawson', 'henry.lawson@university.edu', 7012234505, 'Full-time', 'Network Security', TO_DATE('2023-04-08','YYYY-MM-DD'))
SELECT * FROM dual;

-- Inserting Student Records
INSERT ALL
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4001, 'Abigail Thompson', 'Female', 'abigail.t@student.edu', 8011122331, 'Cardiff', TO_DATE('2002-04-11','YYYY-MM-DD'), TO_DATE('2021-09-10','YYYY-MM-DD'), 501001, 82.5)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4002, 'Michael Obi', 'Male', 'michael.o@student.edu', 8011122332, 'Lagos', TO_DATE('2001-06-22','YYYY-MM-DD'), TO_DATE('2020-09-01','YYYY-MM-DD'), 501001, 77.9)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4003, 'Ella Martinez', 'Female', 'ella.m@student.edu', 8011122333, 'London', TO_DATE('2003-02-18','YYYY-MM-DD'), TO_DATE('2022-09-01','YYYY-MM-DD'), 501002, 84.6)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4004, 'Victor Mensah', 'Male', 'victor.m@student.edu', 8011122334, 'Accra', TO_DATE('2000-09-29','YYYY-MM-DD'), TO_DATE('2019-09-01','YYYY-MM-DD'), 501002, 73.0)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4005, 'Grace Li', 'Female', 'grace.l@student.edu', 8011122335, 'Bristol', TO_DATE('2002-01-25','YYYY-MM-DD'), TO_DATE('2021-09-01','YYYY-MM-DD'), 501003, 79.2)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4006, 'Tom Davies', 'Male', 'tom.d@student.edu', 8011122336, 'Swansea', TO_DATE('2001-10-19','YYYY-MM-DD'), TO_DATE('2020-09-01','YYYY-MM-DD'), 501003, 75.1)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4007, 'Aisha Rahman', 'Female', 'aisha.r@student.edu', 8011122337, 'Manchester', TO_DATE('2003-03-13','YYYY-MM-DD'), TO_DATE('2022-09-01','YYYY-MM-DD'), 501001, 86.4)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4008, 'David Brown', 'Male', 'david.b@student.edu', 8011122338, 'Leeds', TO_DATE('2002-07-07','YYYY-MM-DD'), TO_DATE('2021-09-01','YYYY-MM-DD'), 501002, 81.0)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4009, 'Linda Park', 'Female', 'linda.p@student.edu', 8011122339, 'Birmingham', TO_DATE('2000-11-01','YYYY-MM-DD'), TO_DATE('2019-09-01','YYYY-MM-DD'), 501003, 76.3)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4010, 'Ubong Etok', 'Male', 'ubong.e@student.edu', 8011122340, 'Cardiff', TO_DATE('2002-05-12','YYYY-MM-DD'), TO_DATE('2021-09-01','YYYY-MM-DD'), 501001, 88.1)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4011, 'Chinwe Okafor', 'Female', 'chinwe.o@student.edu', 8011122341, 'Lagos', TO_DATE('2003-08-19','YYYY-MM-DD'), TO_DATE('2022-09-01','YYYY-MM-DD'), 501001, 81.7)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4012, 'Daniel Evans', 'Male', 'daniel.e@student.edu', 8011122342, 'Cardiff', TO_DATE('2002-09-11','YYYY-MM-DD'), TO_DATE('2021-09-01','YYYY-MM-DD'), 501002, 79.4)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4013, 'Sophia King', 'Female', 'sophia.k@student.edu', 8011122343, 'London', TO_DATE('2003-02-23','YYYY-MM-DD'), TO_DATE('2022-09-01','YYYY-MM-DD'), 501003, 85.2)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4014, 'Emmanuel Adeyemi', 'Male', 'emmanuel.a@student.edu', 8011122344, 'Abuja', TO_DATE('2001-12-17','YYYY-MM-DD'), TO_DATE('2020-09-01','YYYY-MM-DD'), 501002, 78.3)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4015, 'Lucy Carter', 'Female', 'lucy.c@student.edu', 8011122345, 'Manchester', TO_DATE('2002-03-21','YYYY-MM-DD'), TO_DATE('2021-09-01','YYYY-MM-DD'), 501001, 83.0)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4016, 'Samuel Wright', 'Male', 'samuel.w@student.edu', 8011122346, 'Leeds', TO_DATE('2000-07-08','YYYY-MM-DD'), TO_DATE('2019-09-01','YYYY-MM-DD'), 501003, 75.9)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4017, 'Nkechi Udo', 'Female', 'nkechi.u@student.edu', 8011122347, 'Port Harcourt', TO_DATE('2002-06-14','YYYY-MM-DD'), TO_DATE('2021-09-01','YYYY-MM-DD'), 501002, 80.5)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4018, 'Oliver Green', 'Male', 'oliver.g@student.edu', 8011122348, 'Birmingham', TO_DATE('2003-05-04','YYYY-MM-DD'), TO_DATE('2022-09-01','YYYY-MM-DD'), 501003, 82.1)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4019, 'Fatima Bello', 'Female', 'fatima.b@student.edu', 8011122349, 'Abuja', TO_DATE('2001-01-15','YYYY-MM-DD'), TO_DATE('2020-09-01','YYYY-MM-DD'), 501001, 87.0)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4020, 'Nathan James', 'Male', 'nathan.j@student.edu', 8011122350, 'Cardiff', TO_DATE('2002-10-09','YYYY-MM-DD'), TO_DATE('2021-09-01','YYYY-MM-DD'), 501002, 79.8)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4021, 'Amara Nwosu', 'Female', 'amara.n@student.edu', 8011122351, 'Enugu', TO_DATE('2003-01-25','YYYY-MM-DD'), TO_DATE('2022-09-01','YYYY-MM-DD'), 501001, 84.5)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4022, 'Joshua Baker', 'Male', 'joshua.b@student.edu', 8011122352, 'Liverpool', TO_DATE('2001-04-06','YYYY-MM-DD'), TO_DATE('2020-09-01','YYYY-MM-DD'), 501003, 76.8)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4023, 'Isabella Morgan', 'Female', 'isabella.m@student.edu', 8011122353, 'London', TO_DATE('2002-09-02','YYYY-MM-DD'), TO_DATE('2021-09-01','YYYY-MM-DD'), 501002, 88.3)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4024, 'David Johnson', 'Male', 'david.j@student.edu', 8011122354, 'Nottingham', TO_DATE('2001-07-11','YYYY-MM-DD'), TO_DATE('2020-09-01','YYYY-MM-DD'), 501001, 80.1)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4025, 'Ngozi Eze', 'Female', 'ngozi.e@student.edu', 8011122355, 'Lagos', TO_DATE('2000-12-22','YYYY-MM-DD'), TO_DATE('2019-09-01','YYYY-MM-DD'), 501003, 74.5)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4026, 'Benjamin Lee', 'Male', 'benjamin.l@student.edu', 8011122356, 'Bristol', TO_DATE('2002-11-17','YYYY-MM-DD'), TO_DATE('2021-09-01','YYYY-MM-DD'), 501001, 83.7)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4027, 'Chidera Nnamdi', 'Female', 'chidera.n@student.edu', 8011122357, 'Owerri', TO_DATE('2003-09-27','YYYY-MM-DD'), TO_DATE('2022-09-01','YYYY-MM-DD'), 501002, 86.2)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4028, 'Ethan Scott', 'Male', 'ethan.s@student.edu', 8011122358, 'Sheffield', TO_DATE('2000-08-12','YYYY-MM-DD'), TO_DATE('2019-09-01','YYYY-MM-DD'), 501003, 78.4)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4029, 'Kemi Balogun', 'Female', 'kemi.b@student.edu', 8011122359, 'Ibadan', TO_DATE('2001-05-16','YYYY-MM-DD'), TO_DATE('2020-09-01','YYYY-MM-DD'), 501001, 89.0)
INTO Student (student_id, student_name, student_gender, student_email, student_phone_no, student_address, student_DoB, date_of_enrolment, course_id, total_grade) VALUES (4030, 'Ryan Cooper', 'Male', 'ryan.c@student.edu', 8011122360, 'Glasgow', TO_DATE('2003-06-29','YYYY-MM-DD'), TO_DATE('2022-09-01','YYYY-MM-DD'), 501002, 77.6)
SELECT * FROM dual;

-- Queries 

-- Query 1: Analysing Tutors, Modules and Courses They Teach
SELECT
    Tutor.tutor_name AS "TUTOR NAME",
    Tutor.tutor_phone_no AS "TELEPHONE NO",
    Tutor.tutor_email AS "EMAIL ADDRESS",
    Tutor.remuneration AS "CONTRACT TYPE",
    Module.module_name AS "MODULE NAME",
    Course.course_name AS "COURSE NAME"
FROM Tutor, Module, Course_Module, Course
WHERE Tutor.tutor_id = Module.tutor_id
  AND Module.module_id = Course_Module.module_id
  AND Course.course_id = Course_Module.course_id
ORDER BY Module.module_name;

-- Query 2: Identifying Students, Their Modules and Courses
SELECT
    Student.student_name AS "STUDENT NAME",
    Module.module_name AS "MODULE NAME",
    Course.course_name AS "COURSE NAME"
FROM Student, Module, Student_Module, Course
WHERE Student.student_id = Student_Module.student_id
  AND Module.module_id = Student_Module.module_id
  AND Course.course_id = Student.course_id
ORDER BY Module.module_name;

-- Query 3: Analysing Student Enrolment by Course
SELECT
    Course.course_name,
    Student.student_name,
    Student.date_of_enrolment
FROM Course, Student
WHERE Course.course_id = Student.course_id
ORDER BY Student.date_of_enrolment DESC;

-- Query 4: Measuring Student Enrolment Across Modules and Courses
SELECT
    Course.course_name AS "COURSE NAME",
    Module.module_name AS "MODULE NAME",
    COUNT(Student.student_id) AS "NUMBER OF STUDENTS"
FROM Course, Module, Student, Student_Module, Course_Module
WHERE Course.course_id = Course_Module.course_id
  AND Module.module_id = Course_Module.module_id
  AND Module.module_id = Student_Module.module_id
  AND Student.student_id = Student_Module.student_id
GROUP BY Course.course_name, Module.module_name
ORDER BY Course.course_name, COUNT(Student.student_id) DESC;

-- Query 5: Identifying the Most Recently Hired Tutor in Each Department
SELECT tutor_department, tutor_name, hire_date
FROM Tutor
WHERE tutor_department || hire_date IN (
    SELECT tutor_department || MAX(hire_date)
    FROM Tutor
    GROUP BY tutor_department
)
ORDER BY hire_date DESC;

