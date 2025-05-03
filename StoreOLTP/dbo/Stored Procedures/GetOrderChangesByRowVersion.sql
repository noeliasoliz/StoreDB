CREATE PROCEDURE [dbo].[GetOrderChangesByRowVersion]
	@startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN 
select ord.OrderID ,OrderDateKey = CONVERT(INT,
							(CONVERT(CHAR(4),DATEPART(YEAR,ord.OrderDate))
						  + CASE 
								WHEN DATEPART(MONTH,ord.OrderDate) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(MONTH,ord.OrderDate))
								ELSE + CONVERT(CHAR(2),DATEPART(MONTH,ord.OrderDate))
							END
						  + CASE 
								WHEN DATEPART(DAY,ord.OrderDate) < 10 THEN '0' + CONVERT(CHAR(1),DATEPART(DAY,ord.OrderDate))
								ELSE + CONVERT(CHAR(2),DATEPART(DAY,ord.OrderDate))
							END)),
		ord.CustomerID, ord.EmployeeID, ord.ShipVia, d.ProductID, d.UnitPrice, d.Quantity, d.Discount
from Orders ord
join [Order Details] d on ord.OrderID = d.OrderID
where (ord.rowversion > CONVERT(ROWVERSION,@startRow) and ord.rowversion <= CONVERT(ROWVERSION,@endRow)) OR
(d.rowversion > CONVERT(ROWVERSION,@startRow) and d.rowversion <= CONVERT(ROWVERSION,@endRow))
END