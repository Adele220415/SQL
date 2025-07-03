USE SampleDB
--GO

--CREATE SCHEMA Training

--CREATE TABLE Training.Facilitators(
--FacilitatorsID INT PRIMARY KEY,
--FacilitatorName NVARCHAR(200),
--FacilitatorDepartment NVARCHAR(300));

/*
TRAINING EXPERTS (COACHES)
*/

--CREATE TABLE Training.Experts(
--ExpertID INT PRIMARY KEY,
--ExpertName NVARCHAR(200),
--Institution NVARCHAR(200),
--SubjectMatter NVARCHAR(200));
--GO

--INSERT INTO Training.Facilitators
--VALUES
--(1, 'Samuel Dagogo', 'Agricultures'),
--(2, 'Asterix Oberix', 'French Language'),
--(3, 'Apate John', 'Mathematics');
--GO

--INSERT INTO Training.Experts
--VALUES
--(1, 'Samuel Dagogo', 'University of Cambridge', 'Eradication of Erosion'),
--(2, 'Asterix Oberix', 'Abuja Open University', 'Embracing Foreign Culture'),
--(3, 'Apate John', 'UNN Nsuka', 'Modelling consumption rate as it affects inflation');
--GO

--SELECT * FROM Training.Experts
--SELECT * FROM Training.Facilitators
