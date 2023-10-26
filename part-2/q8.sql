use Northwind
SELECT distinct(ShipCountry),
CASE
    WHEN ShipCountry = 'Germany' THEN '5'
    WHEN ShipCountry = 'France' THEN '4'
    WHEN ShipCountry = 'UK' THEN '3'
    WHEN ShipCountry = 'USA' THEN '2'
    ELSE '1'
END AS countryScore
FROM Orders; 

select FirstName,LastName, FORMAT(HireDate, 'dd/MM/yyyy', 'en-US' ) as 'hire date',
RANK () OVER(order by HireDate) as 'rank sabeghe'
FROM Employees
