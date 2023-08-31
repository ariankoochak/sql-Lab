use northwind

select shipCountry,count(*) as orderCount from [dbo].[Orders] group by ShipCountry order by orderCount desc