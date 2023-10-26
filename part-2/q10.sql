USE Northwind

CREATE TABLE users(
    id bigint,
    firstName NVARCHAR(50),
    submitDate DATETIME,
)

DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 1000)
BEGIN
    insert into users (id,firstName,submitDate) VALUES(@Counter,'ali',GETDATE())
    SET @Counter  = @Counter  + 1
END

SELECT * from users