USE AdventureWorks2022;
-- CREATE TABLE CustomerFeedback (
-- FeedbackID INT PRIMARY KEY,
-- CustomerID INT NOT NULL FOREIGN KEY REFERENCES Sales.Customer(CustomerID),
-- FeedbackDate DATE NOT NULL,
-- Comments NVARCHAR (500),
-- Rating INT CHECK (Rating BETWEEN 1 AND 5)
-- )
-- ;

-- ALTER TABLE CustomerFeedback
-- ADD FeedbackStatus NVARCHAR(20)  
-- DEFAULT 'Pending';

-- ALTER TABLE CustomerFeedback
-- ALTER COLUMN Comments NVARCHAR(1000);

-- ALTER TABLE CustomerFeedback
-- DROP COLUMN Rating;


-- ALTER TABLE CustomerFeedback
-- DROP COLUMN FeedbackStatus;


-- DROP TABLE IF EXISTS CustomerFeedback;

-- SELECT TOP 5 ProductID,
-- Name, ListPrice
-- FROM Production.Product
-- WHERE ListPrice > 500
-- ORDER BY ListPrice ASC;
    

-- INSERT INTO CustomerFeedback(
--     FeedbackID,
--     CustomerID,
--     FeedbackDate,
--     Comments,
--     Rating
-- )VALUES (1, 3, '2025-05-27', 'I really liked your service', 5),
-- (2, 3, '2025-05-27', 'I really liked your service', 5),
-- (3, 5, '2025-05-27', 'Fair service', 4),
-- (4, 3, '2025-05-30', 'Not the best', 3)

-- UPDATE CustomerFeedback
-- SET Comments = 'Updated: Exelent Service'
-- WHERE FeedbackID = 1;


-- SELECT * FROM CustomerFeedback

-- CREATE TABLE EmployeeReviews (
-- ReviewID INT PRIMARY KEY,
-- EmployeeID INT NOT NULL FOREIGN KEY REFERENCES HumanResources.Employee,
-- ReviewDate DATE NOT NULL,
-- Feedback NVARCHAR (500)
-- )
-- ;


-- ALTER TABLE EmployeeReviews
-- ADD Score INT  
-- DEFAULT 0;

-- SELECT * FROM EmployeeReviews