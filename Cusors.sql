USE AdventureWorks2022

DECLARE @FirstName NVARCHAR(50);
DECLARE @LastName NVARCHAR(50);


DECLARE employee_cursor CURSOR FOR
SELECT FirstName, LastName
FROM Person.Person
WHERE BusinessEntityID IN (SELECT BusinessEntityID FROM HumanResources.Employee);

OPEN employee_cursor;

FETCH NEXT FROM employee_cursor INTO @FirstName, @LastName;

WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Employee: ' + @FirstName+' '+@LastName;

    FETCH NEXT FROM employee_cursor INTO @FirstName, @LastName;
END;

CLOSE employee_cursor;
DEALLOCATE employee_cursor;