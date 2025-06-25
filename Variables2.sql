USE AdventureWorks2022
DECLARE @Score INT;
SET @Score = 100
IF @Score> 100
    SELECT 'OUT OF BOUNDS' AS Grade;
ELSE  IF @Score>=70
    SELECT 'A' AS Grade;
ELSE IF @Score>=60 
    SELECT 'B' AS Grade;
ELSE IF @Score>=50
    SELECT 'C' AS Grade;
ELSE IF @Score>=40 
    SELECT 'D' AS Grade;
ELSE IF @Score>=30 
    SELECT 'E' AS Grade;
ELSE IF @Score>=0 
    SELECT 'F' AS Grade;