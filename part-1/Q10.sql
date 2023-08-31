use northwind

select *,CONCAT('',
              CASE WHEN ShipCountry = 'USA' THEN 'US country'
                   WHEN ShipCountry = 'Germany' THEN 'DEUTSCHLAND counrty' 
                   ELSE ''
              END) AS Result from Orders