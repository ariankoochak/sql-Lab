use northwind

select ShipCountry,Freight from [dbo].[Orders] where Freight = (select MAX(Freight) from [dbo].[Orders])
select ShipCountry,Freight from [dbo].[Orders] where Freight = (select MIN(Freight) from [dbo].[Orders])