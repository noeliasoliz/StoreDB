CREATE PROCEDURE [dbo].[DW_MergeDimCustomer]
AS
BEGIN
	update dc 
	set ContactName = sc.ContactName,
	ContactTitle = sc.ContactTitle,
	Address = sc.Address,
	City = sc.City,
	Region = sc.Region,
	Country = sc.Country
	from DimCustomer dc
	INNER JOIN staging.Customer sc on (dc.CustomerSK = sc.CustomerSK)
END
