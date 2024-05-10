--dropping database if it already exists
DROP DATABASE IF EXISTS UniversityDB;

--Creating a new MySQL database named "UniversityDB"
CREATE DATABASE UniversityDB;

--navigating to our database
USE UniversityDB;

--Designing a table named "Students" with the following attributes:
CREATE TABLE Students(
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Major VARCHAR(50)
);

--Insert at least 5 records into the "Students" table with sample data.
INSERT INTO Students (StudentID, FirstName, LastName, Age, Major) VALUES
(1, 'Paul', 'Live', 19, 'Economics')
(2, 'Tracy', 'Mane', 18, 'Mathematics')
(3, 'Myra', 'Suite', 21, 'Medicine')
(4, 'Leavan', 'Otieno', 20, 'Statistics')
(5, 'Dallan', 'Trix', 21, 'Psychology')

--Altering the "Students" table to add a new column named "GPA" with a data type appropriate for storing decimal values.
ALTER TABLE Students ADD COLUMN GPA DECIMAL(3,2);

--Inserting GPA values for the existing records in the "Students" table.
UPDATE Students SET GPA = 3.5 WHERE StudentID = 1;
UPDATE Students SET GPA = 3.2 WHERE StudentID = 2;
UPDATE Students SET GPA = 3.8 WHERE StudentID = 3;
UPDATE Students SET GPA = 3.9 WHERE StudentID = 4;
UPDATE Students SET GPA = 3.6 WHERE StudentID = 5;

--Renaming the table from "Students" to "EnrolledStudents."
ALTER TABLE Students RENAME TO EnrolledStudents;

--Creating a new table named "Courses"
CREATE TABLE Courses(
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Instructor VARCHAR(100),
    Credits INT
);

--Inserting at least 3 records into the "Courses" table with sample data.
INSERT INTO Courses(CourseID, CourseName, Instructor, Credits) VALUES 
(1, 'Introduction to Economics', 'Prof. Ishmael', 3), 
(2, 'Geometry', 'Prof. Issack', 3), 
(3, 'Microbiology', 'Dr. Maryanne', 4);

--Droping the "EnrolledStudents" table from the database.
DROP TABLE IF EXISTS EnrolledStudents;





