use AdventureWorks2022

--CREATE TABLE StudentCoursesScores(
--StudentID INT PRIMARY KEY,
--StudentName NVARCHAR(100),
--Courses NVARCHAR(100),
--Scores NVARCHAR(50),
--AdvisorName NVARCHAR(100),
--AdvisorPhone NVARCHAR(50)
--);
--GO

INSERT INTO StudentCoursesScores VALUES
(101, 'Alice Brown', 'Maths,  English, Physics', '85, 78, 92', 'Mr John', '08011223344'),
(102, 'Bob Smith', 'Chemistry, Maths', '88, 90', 'Ms Rita', '08022334455'),
(103, 'Clara Jones', 'Biology, Chemiistry, Physics, Maths', '75, 80, 89, 95', 'Mr John', '08011223344');

--DROP TABLE StudentCoursesScores

--CREATE TABLE StudentDetails(
--StudentID INT PRIMARY KEY,
--StudentName NVARCHAR(100)
--);

CREATE TABLE AdvisorDetails(
AdvisorID INT PRIMARY KEY,
AdvisorName NVARCHAR(100),
AdvisorPhone NVARCHAR(50)
);