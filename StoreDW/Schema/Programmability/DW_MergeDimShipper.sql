CREATE PROCEDURE [dbo].[DW_MergeDimShipper]
AS
BEGIN
	update dc 
	set CompanyName = sc.CompanyName,
	Phone = sc.Phone
	from DimShippers dc
	INNER JOIN staging.Shippers sc on (dc.ShipperSK = sc.ShipperSK)
END
