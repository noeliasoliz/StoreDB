CREATE PROCEDURE [dbo].[DW_MergeFactOrders]
AS
BEGIN
	UPDATE dc
	SET OrderDateKey    = sc.OrderDateKey,
	   CustomerSK = sc.CustomerSK,
	   EmployeeSK = sc.EmployeeSK,
       ShipViaSK = sc.ShipViaSK,
	   ProductSK = sc.ProductSK,
	   UnitPrice = sc.UnitPrice,
	   Quantity = sc.Quantity,
	   Discount = sc.Discount
	FROM [dbo].[FactOrders]         dc
	INNER JOIN [staging].[orders] sc ON (dc.OrderID = sc.OrderID AND dc.ProductSK = sc.ProductSK)
END