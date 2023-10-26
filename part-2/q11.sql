USE Northwind

SELECT FirstName,LastName,convert(int,FORMAT(GETDATE(),'yyyy'))-convert(int,FORMAT(BirthDate,'yyyy')) as 'Age',CASE
    WHEN (convert(int,FORMAT(GETDATE(),'yyyy'))-convert(int,FORMAT(BirthDate,'yyyy'))) > 60 THEN 'pir'
    ELSE 'javan'
END as 'sit'
from Employees
