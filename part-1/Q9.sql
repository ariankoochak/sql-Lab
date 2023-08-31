use AdventureWorks2022

select color from Production.Product where ListPrice = (select max(ListPrice) from Production.Product) order by Color offset 0 rows fetch next 1 rows only;