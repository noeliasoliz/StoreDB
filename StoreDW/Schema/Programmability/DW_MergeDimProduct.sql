CREATE PROCEDURE [dbo].[DW_MergeDimProduct]
AS
BEGIN
	update dc 
	set ProductName = sc.ProductName,
	UnitPrice = sc.UnitPrice,
	Discontinued = sc.Discontinued,
	CategoryName = sc.CategoryName,
	DescriptionCat = sc.DescriptionCat,
	CompanyNameSup = sc.CompanyNameSup,
	ContactNameSup = sc.ContactNameSup,
	ContactTitleSup = sc.ContactTitleSup
	from DimProduct dc
	INNER JOIN staging.Product sc on (dc.ProductSK = sc.ProductSK)
END