use northwind

select ShipCity from orders where Freight = (select MAX(Freight) from Orders where ShipCountry like 'USA')

select COUNT(*) from Orders where ShipCountry = 'USA' and Freight > 10