-- Student Management System SQL Script
-- This script creates the database, tables, and sample queries

-- 1. Create database
CREATE DATABASE student_management;
USE student_management;

-- 2. Create student table
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    grade VARCHAR(5) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- 3. Insert sample data
INSERT INTO students (name, age, grade, email) VALUES
('John Doe', 20, 'A', 'john.doe@example.com'),
('Jane Smith', 21, 'B', 'jane.smith@example.com'),
('Sam Wilson', 19, 'A', 'sam.wilson@example.com');

-- 4. Queries

-- Retrieve all students
SELECT * FROM students;

-- Find students with grade A
SELECT name, grade FROM students WHERE grade = 'A';

-- Update a student’s grade
UPDATE students SET grade = 'A+' WHERE student_id = 2;

-- Delete a student record
DELETE FROM students WHERE student_id = 3;
