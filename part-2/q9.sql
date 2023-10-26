use Northwind

CREATE PROCEDURE getEmployee  @EmployeeId bigint
AS
SELECT FirstName,
LastName,title,
TitleOfCourtesy,
FORMAT(BirthDate, 'dd/MM/yyyy', 'en-US' )as 'BirthDate',
FORMAT(HireDate, 'dd/MM/yyyy', 'en-US' )as 'HireDate',
Address,
City,
Region,
PostalCode,
HomePhone,
Extension,
Notes
 FROM Employees WHERE EmployeeId = @EmployeeId


EXEC getEmployee @EmployeeId = 3; 