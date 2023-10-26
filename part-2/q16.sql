use Northwind

CREATE SEQUENCE seq
start with 100
increment by -1
minvalue  1
maxvalue  100
cycle;

CREATE TABLE users
( 
id bigint,
firstName nvarchar(50)
);

DECLARE @Counter INT 
SET @Counter=1
WHILE ( @Counter <= 100)
BEGIN
    insert into users (id,firstName) VALUES(NEXT VALUE FOR seq,'ali')
    SET @Counter  = @Counter  + 1
END
