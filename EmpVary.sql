USE AdventureWorks2022
--DECLARE @EmployeeID INT = 4
--DECLARE @IsSalaried BIT;

--SELECT @IsSalaried = SalariedFlag FROM HumanResources.Employee
--WHERE BusinessEntityID = @EmployeeID;

--IF @IsSalaried = 1
--    SELECT'The employee is paid monyhly' AS PaymentPlan;
--ELSE IF @IsSalaried = 0
--    SELECT'The employee is paid hourly' AS PaymentPlan;

--DECLARE @PersonID INT = 1
--DECLARE @Title NVARCHAR(10);

--SELECT @Title = Title
--FROM Person.Person
--WHERE BusinessEntityID = @PersonID;

--IF @Title = 'Mr'
--   PRINT 'Hello sir.';
--ELSE IF @Title = 'Ms.'
--   PRINT 'Hello Ma`am.';
--ELSE IF @Title IS NULL
--   PRINT 'No Title found for this user';

DECLARE @SalesOrderID INT = 43659;
DECLARE @OrderDate DATE;
DECLARE @DayOld INT;

--SETTING THE ORDER OF THE DATE FROM THE ADVW TABLE
SELECT @OrderDate = OrderDate
FROM Sales.SalesOrderHeader
WHERE SalesOrderID = @SalesOrderID;

--GETTING DATE DIFFERENCE
SET @DayOld = DATEDIFF(DAY, @OrderDate, '2011-05-31 00:00:00.000')

IF @DayOld <=7
    PRINT 'Recent Order within the last week';
ELSE IF @DayOld <=30
    PRINT 'This Order is within the last month';
ELSE IF @DayOld <=365
    PRINT 'This Order is within the last Year';
ELSE IF @DayOld >365
    PRINT 'This Order is more than a year old';

SELECT SalesOrderID, OrderDate FROM Sales.SalesOrderHeader;