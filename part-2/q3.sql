use Northwind

SELECT Customers.CompanyName, Orders.ShipCountry
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

SELECT Customers.CompanyName, Orders.ShipCountry
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

SELECT Orders.OrderID,  Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID

SELECT Customers.CompanyName, Orders.ShipCountry
FROM Orders
FULL JOIN Customers ON Orders.CustomerID=Customers.CustomerID;