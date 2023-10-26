use Northwind

CREATE TRIGGER PreventDorp
ON Database
FOR DROP_SYNONYM
AS
BEGIN
    RAISERROR ('Deleting this database is not allowed.', 16, 1)
END

