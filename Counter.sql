USE AdventureWorks2022
DECLARE @Counter INT = 1

WHILE @Counter <=5
BEGIN
    PRINT 'Counter value: ' + CAST(@Counter AS NVARCHAR)
	SET @Counter = @Counter + 1
END


--DECLARE @Count INT = 1
--DECLARE @Max INT = 5
--DECLARE @Email NVARCHAR(50)

--DECLARE email_cursor CURSOR FOR
