CREATE TABLE departments (
    dept_id INT PRIMARY KEY,         -- Primary Key
    dept_name VARCHAR(50) NOT NULL,
    building VARCHAR(50),
    budget DECIMAL(10,2),
    established_year INT,
    head_of_department VARCHAR(50)
);


CREATE TABLE courses (
    course_id INT PRIMARY KEY,       -- Primary Key
    course_name VARCHAR(50) NOT NULL,
    dept_id INT,                     -- Foreign Key
    credits INT,
    semester VARCHAR(20),
    course_fee DECIMAL(8,2), constraint dept_id_fk foreign key (dept_id) references departments(dept_id));
    
    INSERT INTO courses (course_id, course_name, dept_id, credits, semester, course_fee) VALUES
(1, 'Data Structures', 1, 4, 'Fall', 20000.00),
(2, 'Linear Algebra', 2, 3, 'Spring', 15000.00),
(3, 'Quantum Physics', 3, 4, 'Fall', 22000.00),
(4, 'Organic Chemistry', 4, 3, 'Spring', 18000.00),
(5, 'World History', 5, 3, 'Fall', 12000.00),
(6, 'Genetics', 6, 4, 'Fall', 21000.00),
(7, 'Shakespearean Literature', 7, 3, 'Spring', 17000.00),
(8, 'Macroeconomics', 8, 4, 'Fall', 25000.00),
(9, 'Political Theory', 9, 3, 'Spring', 16000.00),
(10, 'Social Behavior', 10, 3, 'Fall', 13000.00);

    
alter table courses drop foreign key dept_id_fk;

alter table courses add constraint dept_id_fk foreign key (dept_id) references departments(dept_id)
on delete cascade
on update cascade ;
    
    
    CREATE TABLE professors (
    prof_id INT PRIMARY KEY,          -- Primary Key
    prof_name VARCHAR(50) NOT NULL,
    dept_id INT,                      -- Foreign Key
    title VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE, constraint deptartment_id_fk
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id));
    
alter table professors drop foreign key deptartment_id_fk;

alter table professors add constraint deptartment_id_fk foreign key (dept_id) references departments(dept_id)
on delete cascade
on update cascade ;

INSERT INTO professors (prof_id, prof_name, dept_id, title, salary, hire_date) VALUES
(1, 'Dr. Emily Wilson', 1, 'Associate Professor', 100000.00, '2010-05-15'),
(2, 'Dr. Robert Clark', 2, 'Professor', 120000.00, '2005-03-12'),
(3, 'Dr. Sarah Lewis', 3, 'Assistant Professor', 90000.00, '2015-08-25'),
(4, 'Dr. James Evans', 4, 'Professor', 110000.00, '2007-09-14'),
(5, 'Dr. Patricia Green', 5, 'Lecturer', 80000.00, '2013-04-20'),
(6, 'Dr. Steven White', 6, 'Professor', 115000.00, '2009-11-03'),
(7, 'Dr. Elizabeth Scott', 7, 'Assistant Professor', 95000.00, '2018-02-18'),
(8, 'Dr. David Hall', 8, 'Professor', 125000.00, '2004-07-01'),
(9, 'Dr. George Brown', 9, 'Associate Professor', 105000.00, '2012-06-21'),
(10, 'Dr. Angela King', 10, 'Lecturer', 85000.00, '2016-10-10');


CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,        -- Primary Key
    course_id INT,                   -- Foreign Key
    prof_id INT,                     -- Foreign Key
    student_name VARCHAR(50),
    enrollment_date DATE,
    grade VARCHAR(2), constraint course_id_fk foreign key (course_id) references courses(course_id),
    constraint prof_id_fk foreign key (prof_id) references professors(prof_id));

alter table enrollments drop foreign key course_id_fk , drop foreign key prof_id_fk ;

alter table enrollments add constraint course_id_fk foreign key (course_id) references courses(course_id)
on delete cascade
on update cascade ;

INSERT INTO departments (dept_id, dept_name, building, budget, established_year, head_of_department) VALUES
(1, 'Computer Science', 'CS Building', 1500000.00, 1990, 'Dr. Emily Wilson'),
(2, 'Mathematics', 'Math Building', 1200000.00, 1985, 'Dr. Robert Clark'),
(3, 'Physics', 'Physics Tower', 900000.00, 1980, 'Dr. Sarah Lewis'),
(4, 'Chemistry', 'Chemistry Hall', 1000000.00, 1975, 'Dr. James Evans'),
(5, 'History', 'Arts Building', 500000.00, 1960, 'Dr. Patricia Green'),
(6, 'Biology', 'Bio Wing', 1100000.00, 1995, 'Dr. Steven White'),
(7, 'English', 'Language Center', 600000.00, 1970, 'Dr. Elizabeth Scott'),
(8, 'Economics', 'Business Block', 1300000.00, 1982, 'Dr. David Hall'),
(9, 'Political Science', 'Govt Building', 700000.00, 1988, 'Dr. George Brown'),
(10, 'Sociology', 'Social Sciences Block', 800000.00, 1992, 'Dr. Angela King');





