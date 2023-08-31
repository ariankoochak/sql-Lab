use AdventureWorks2022

select Color,COUNT(*) as number from Production.Product where Color != '' group by Color order by number desc offset 0 rows fetch next 1 rows only;