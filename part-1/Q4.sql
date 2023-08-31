use northwind

select ShipName from [dbo].[Orders] where ShipName like '%w%'

select count(*) from [dbo].[Orders] where ShipName like '%w%'