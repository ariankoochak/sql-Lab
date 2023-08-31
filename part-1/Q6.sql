use northwind

select * from orders join Customers on Orders.CustomerID = Customers.CustomerID join Employees on Employees.EmployeeID = Orders.EmployeeID
