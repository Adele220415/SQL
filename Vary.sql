USE AdventureWorks2022
--DECLARE @TotalDue MONEY;
--SELECT @TotalDue = TotalDue FROM Sales.SalesOrderHeader WHERE SalesOrderID = 43659;
--SELECT @TotalDue AS OrderTotal;
--GO

--DECLARE @OrderCount INT;
--SELECT @OrderCount = COUNT(*) FROM Sales.SalesOrderHeader WHERE CustomerID = 29500;
--IF @OrderCount  > 0
--   SELECT 'Customer has orders' AS Status;
--ELSE
--   SELECT 'No orders found' AS Status;
--GO

--DECLARE @ProductID INT, @Name NVARCHAR(50);
--DECLARE product_cursor
--CURSOR FOR
--	SELECT ProductID, Name FROM Production.Product;
--OPEN product_cursor;
--FETCH NEXT FROM product_cursor INTO @ProductID, @Name;
--WHILE @@FETCH_STATUS = 0
--BEGIN
--	PRINT CAST(@ProductID AS NVARCHAR(10)) + ': ' + @Name;
--		FETCH NEXT FROM product_cursor INTO @ProductID, @Name;
--END;
--CLOSE product_cursor;
--DEALLOCATE product_cursor;

DECLARE @ProductID INT, @Quantity INT;

DECLARE inventory_cursor CURSOR FOR
	SELECT ProductID, Quantity FROM
	Production.ProductInventory
	WHERE Quantity < 100;

OPEN inventory_cursor;

FETCH NEXT FROM inventory_cursor
INTO @ProductID, @Quantity;

WHILE @@FETCH_STATUS = 0
BEGIN
	UPDATE Production.ProductInventory
	SET Quantity = Quantity + 50
	WHERE ProductID = @ProductID;
	FETCH NEXT FROM inventory_cursor
	INTO @ProductID, @Quantity;
END;
CLOSE inventory_cursor;
DEALLOCATE inventory_cursor;
