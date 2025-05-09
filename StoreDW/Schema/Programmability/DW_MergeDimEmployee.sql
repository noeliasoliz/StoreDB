CREATE PROCEDURE [dbo].[DW_MergeDimEmployee]
AS
BEGIN
	update dc 
	set LastName = sc.LastName,
	FirstName = sc.FirstName,
	Title = sc.Title,
	TitleOfCourtesy = sc.TitleOfCourtesy,
	Address = sc.Address,
	City = sc.City,
	Region = sc.Region
	from DimEmployee dc
	INNER JOIN staging.Employee sc on (dc.EmployeeSK = sc.EmployeeSK)
END

