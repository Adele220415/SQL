DECLARE @SalesOrderID INT = 0000;
DECLARE @OrderDate DATE;
DECLARE @DaysOld INT;
DECLARE @TotalDue MONEY;

--SETTING THE ORDER OF THE DATE FROM THE ADVW TABLE
SELECT @OrderDate = OrderDate, @TotalDue = TotalDue
FROM Sales.SalesOrderHeader
WHERE SalesOrderID = @SalesOrderID;

--GETTING DATE DIFFERENCE
SET @DaysOld = DATEDIFF(DAY, @OrderDate, GETDATE())

IF @OrderDate IS NOT NULL
BEGIN 
IF @DaysOld <=30
      BEGIN
       SELECT 'Order is recent(Less than 30 days old).'

       IF @TotalDue >1000
       SELECT 'This is a high value recent order.'
    ELSE 
       SELECT 'This is a normal recent Order'
      END
  ELSE IF @DaysOld >30
     BEGIN
        SELECT 'Order is older than 30 days .'

     	IF @TotalDue > 1000
	    SELECT 'High-Value order, but not recent.'
      END
    END
 ELSE
    SELECT 'Order date does not exist'
--SELECT * FROM Sales.SalesOrderHeader