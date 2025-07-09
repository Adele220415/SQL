use AdventureWorks2022
SELECT SalesOrderDetailID,  COUNT(*) AS SalesCount, AVG(UnitPrice) AS SalaryAverage
FROM Sales.SalesOrderDetail
GROUP BY SalesOrderID
HAVING COUNT(*) > 5;

--select * from Sales.SalesOrderDetail
