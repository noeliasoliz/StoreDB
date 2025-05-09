CREATE PROCEDURE [dbo].[DW_MergeDimShipper]
	@param1 int = 0,
	@param2 int
AS
BEGIN
	update dc 
	set CompanyName = sc.CompanyName,
	Phone = sc.Phone
	from DimShippers dc
	INNER JOIN staging.Shippers sc on (dc.ShipperSK = sc.ShipperSK)
END
