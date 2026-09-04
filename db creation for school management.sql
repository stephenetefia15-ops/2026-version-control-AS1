CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    enrollment_date DATE NOT NULL,
    major VARCHAR(100) NOT NULL
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INTEGER NOT NULL CHECK (credits > 0),
    department VARCHAR(100) NOT NULL
);

CREATE TABLE instructors (
    instructor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE NOT NULL,
    department VARCHAR(100) NOT NULL
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL,
    course_id INTEGER NOT NULL,
    semester VARCHAR(20) NOT NULL,
    year INTEGER NOT NULL,
    grade VARCHAR(2),

    -- Foreign key constraints
    FOREIGN KEY (student_id)
        REFERENCES students(student_id),

    FOREIGN KEY (course_id)
        REFERENCES courses(course_id)
);

INSERT INTO students
(first_name, last_name, date_of_birth, enrollment_date, major)
VALUES
('John', 'Smith', '2003-05-14', '2022-09-12', 'Computer Science'),
('Mary', 'Johnson', '2002-11-20', '2021-09-15', 'Statistics'),
('David', 'Williams', '2004-02-08', '2023-01-10', 'Business Administration'),
('Sarah', 'Brown', '2003-07-25', '2022-09-12', 'Mathematics'),
('Michael', 'Davis', '2002-04-18', '2021-09-15', 'Computer Science'),
('Emily', 'Wilson', '2004-09-30', '2023-01-10', 'Accounting'),
('Daniel', 'Moore', '2003-12-05', '2022-09-12', 'Economics'),
('Jessica', 'Taylor', '2002-06-11', '2021-09-15', 'Statistics'),
('Robert', 'Anderson', '2004-03-22', '2023-01-10', 'Information Technology'),
('Linda', 'Thomas', '2003-10-17', '2022-09-12', 'Marketing');

select * from students; 

INSERT INTO courses
(course_name, credits, department)
VALUES
('Introduction to Programming', 3, 'Computer Science'),
('Database Management Systems', 3, 'Computer Science'),
('Business Management', 3, 'Business Administration'),
('Statistical Methods', 3, 'Statistics'),
('Calculus I', 4, 'Mathematics'),
('Financial Accounting', 3, 'Accounting'),
('Microeconomics', 3, 'Economics'),
('Digital Marketing', 3, 'Marketing');

select * from courses; 

INSERT INTO instructors
(first_name, last_name, hire_date, department)
VALUES
('James', 'Anderson', '2018-08-20', 'Computer Science'),
('Patricia', 'Paul', '2019-01-15', 'Statistics'),
('Robert', 'Wilson', '2017-09-01', 'Mathematics'),
('Jennifer', 'Akpan', '2020-02-10', 'Business Administration'),
('William', 'Eno', '2016-08-25', 'Accounting');

select * from instructors;

INSERT INTO enrollments
(student_id, course_id, semester, year, grade)
VALUES
(1, 1, 'First', 2024, 'A'),
(1, 2, 'Second', 2024, 'B'),
(2, 4, 'First', 2024, 'A'),
(2, 1, 'Second', 2024, 'B'),
(3, 3, 'First', 2024, 'A'),
(3, 7, 'Second', 2024, 'B'),
(4, 5, 'First', 2024, 'A'),
(4, 4, 'Second', 2024, 'A'),
(5, 1, 'First', 2024, 'B'),
(5, 2, 'Second', 2024, 'A'),
(6, 6, 'First', 2024, 'B'),
(6, 3, 'Second', 2024, 'A'),
(7, 7, 'First', 2024, 'B'),
(7, 3, 'Second', 2024, 'A'),
(8, 4, 'First', 2024, 'A'),
(8, 5, 'Second', 2024, 'B'),
(9, 2, 'First', 2024, 'A'),
(9, 1, 'Second', 2024, 'B'),
(10, 8, 'First', 2024, 'A'),
(10, 3, 'Second', 2024, 'B');

select * from enrollments;

-- Question 1: Select all students
SELECT *
FROM students;

-- Question 2: Find courses with more than 3 credits
SELECT *
FROM courses
WHERE credits > 3;

-- Question 3: Find instructors in the Computer Science department
SELECT *
FROM instructors
WHERE department = 'Computer Science';

select * from instructors 
WHERE department = 'Statistics';

select * from instructors 
WHERE department = 'Mathematics';
