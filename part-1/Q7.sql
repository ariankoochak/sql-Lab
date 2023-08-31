use northwind

select ShipCountry from Orders full join [Order Details] on Orders.OrderID = [Order Details].OrderID where Discount = (select MAX(Discount) from [Order Details])
group by ShipCountry
order by COUNT(*) desc
offset 0 rows
fetch next 3 rows only;