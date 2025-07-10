--USE AdventureWorks2022

--PROCEDURES
--CREATE PROCEDURE GetEmployeeByJobTitle @JobTitle NVARCHAR(50)
--AS
--SELECT FirstName, LastName, JobTitle
--FROM HumanResources.Employee AS e
--JOIN Person.Person AS p ON e.BusinessEntityID = p.BusinessEntityID
--WHERE JobTitle = @JobTitle;
--EXEC GetEmployeeByJobTitle 'Design Engineer'

--IF STATEMENT
--DECLARE @age INT = 2;
--IF @age < 18
--	PRINT 'Minor'
--ELSE 
--	PRINT 'Adult'
--GO

--WHILE STATEMENT
--DECLARE @i INT = 1;
--WHILE @i <= 5 
--BEGIN
--	PRINT 'COUNT: ' + CAST(@i AS NVARCHAR);
--	SET @i += 1;
--END
--GO

--DECLARE @num INT = 10;
--WHILE @num >= 1
--BEGIN 
--	PRINT 'CountDown: ' + CAST(@num AS NVARCHAR);
--	SET @num -= 1;
--END
--GO

--TRY AND CATCH
--DECLARE @x INT = 1,@y INT =0; 
--DECLARE @z INT;

--BEGIN TRY
--	SET @z = @x/@y;
--	PRINT @z;
--END TRY

--BEGIN CATCH
--	PRINT 'ERROR :' + ERROR_MESSAGE();
--END CATCH
--GO

--TRY AND CATCH
--DECLARE @a INT = 86,@b INT =43; 
--DECLARE @c INT;

--BEGIN TRY
--	SET @c = @a/@b;
--	PRINT @c;
--END TRY

--BEGIN CATCH
--	PRINT 'ERROR :' + ERROR_MESSAGE();
--END CATCH
--GO



--SELECT BusinessEntityID, JobTitle from HumanResources.Employee
--SELECT FirstName, LastName, BusinessEntityID from Person.Person


