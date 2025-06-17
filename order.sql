use AdventureWorks2022
--CREATE TABLE Orders(
--OrderID INT,
--CustomerName VARCHAR(100),
--CustomerEmail VARCHAR(100),
--ProductName VARCHAR(100),
--ProductPrice DECIMAL(10, 2),
--OrderDate DATE
--);
--GO

--INSERT INTO Orders VALUES
--(1, 'Alice', 'alice@gmail.com', 'Laptop', 1500, '2025-01-24'),
--(2, 'Alice', 'alice@gmail.com', 'mouse', 150, '2025-05-24');
--(3, 'Miria', 'mirimum@gmail.com', 'Honey-bear costume', 20000, '2025-06-14'),
--(4, 'Rider', 'redrider@gmail.com', 'Dimensional subspace', 100000, '2025-08-10')

--UPDATE Orders SET CustomerEmail = 'alice@new.com' WHERE CustomerName = 'Alice'
--select * from Orders

--CREATE TABLE Products (
--ProductID INT PRIMARY KEY,
--ProductName NVARCHAR(500),
--ProductPrice DECIMAL(10, 2)
--);
--GO

--INSERT INTO Products VALUES
--(1, 'HP core 17', 234.00),
--(2, 'PS5', 5454.00),
--(3, 'VR glasses', 4545.00),
--(4, 'Trackpad', 234234.00),
--(5, 'Joystick', 23444.00),
--(6, 'Google Lenses', 267834.00),
--(7, 'iPhone 15', 9766.00)
--(8, 'Honey-Bear costume', 20000.00),
--(9, 'Dimensional subspace', 100000.00)
--GO

--CREATE TABLE Customers (
--CustomerID INT PRIMARY KEY,
--CustomerName NVARCHAR(500),
--CustomerEmail NVARCHAR(100)
--);
--GO

--INSERT INTO Customers VALUES
--(1, 'Heavenly', 'heavenly@gmail.com'),
--(2, 'Prince', 'prince@gmail.com'),
--(3, 'Ugo', 'ugo@gmail.com'),
--(4, 'Basir', 'basir@gmail.com'),
--(5, 'Daniel', 'damiel@gmail.com'),
--(6, 'Jemimah', 'jemimah@gmail.com'),
--(7, 'Tumi', 'tumi@gmail.com'),
--(8, 'Victor', 'victor@gmail.com'),
--(9, 'Miria', 'mirimum@gmail.com'),
--(10, 'Rider', 'redrider@gmail.com')

--GO

--CREATE TABLE NewOrders (
--OrderID INT PRIMARY KEY,
--CustomerID INT,
--ProductID INT,
--OrderDate DATE
--);
--GO


--INSERT INTO NewOrders VALUES
--(1, 1, 1, '2025-06-23'),
--(2, 3, 7, '2025-06-30'),
--(3, 1, 3, '2025-07-06'),
--(4, 2, 5, '2025-08-28'),
--(5, 3, 2, '2025-09-26'),
--(6, 1, 4, '2025-11-13')

select * from Orders
select * from NewOrders
select * from Products
select * from Customers