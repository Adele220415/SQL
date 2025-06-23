USE AdventureWorks2022

SELECT * FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2011-08-02' AND '2011-08-04';
GO

SELECT SUM(SalesOrderID) AS TotalOrders, AVG(TotalDue) AS AvrgOrderValue
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2011-08-02' AND '2011-08-04';
GO

SELECT MAX(SalesOrderID) AS MAXOrders, MIN(TotalDue) AS MINOrderValue
FROM Sales.SalesOrderHeader
WHERE OrderDate BETWEEN '2011-08-02' AND '2011-08-04';
GO