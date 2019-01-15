/*First task*/
SELECT CompanyName FROM Suppliers 
SELECT ContactName FROM Suppliers 
SELECT ContactTitle FROM Suppliers 
SELECT Address FROM Suppliers 
SELECT City FROM Suppliers 
SELECT Phone FROM Suppliers 
SELECT TOP 50 * FROM Customers

/*Second task*/
SELECT COUNT(CustomerID) FROM Customers
WHERE FAX IS NOT NULL AND REGION IS NOT NULL;
/*Third task*/
SELECT TOP 2 FirstName, LastName, Title FROM Employees 
ORDER BY BirthDate DESC
/*Fourth task*/
SELECT * FROM Customers
WHERE Address LIKE '[0-9]%' AND CompanyName LIKE '__a%'
ORDER BY Country
/*Fifth task*/
SELECT TOP 1 OrderId Quantity FROM [Order Details]
ORDER BY Quantity DESC  
/*Sixth task*/
SELECT count(CustomerID) FROM CUSTOMERS 
WHERE NOT EXISTS(
SELECT OrderID FROM ORDERS
WHERE Customers.CustomerID=Orders.CustomerId)