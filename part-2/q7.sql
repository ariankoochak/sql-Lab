use Northwind

CREATE VIEW CompanyFromGermany  WITH ENCRYPTION as
    SELECT DISTINCT(Customers.CompanyName) as 'Company', Orders.ShipCountry as 'Country'
    FROM Orders
    JOIN Customers ON Orders.CustomerID=Customers.CustomerID
    WHERE Orders.ShipCountry = 'Germany'

SELECT * FROM CompanyFromGermany


CREATE VIEW dbo.countries  WITH SCHEMABINDING as
    select Orders.ShipCountry from dbo.Orders

SELECT * FROM dbo.countries