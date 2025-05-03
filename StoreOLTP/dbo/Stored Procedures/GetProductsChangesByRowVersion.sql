CREATE PROCEDURE [dbo].[GetProductsChangesByRowVersion]
	@startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
	select p.ProductID, p.ProductName, p.UnitPrice, p.Discontinued, c.CategoryName, 
c.Description, s.CompanyName, s.ContactName, s.ContactTitle
from Products p
join Categories c on p.CategoryID = c.CategoryID
join Suppliers s on p.SupplierID = s.SupplierID
where (p.rowversion > CONVERT(ROWVERSION,@startRow) and p.rowversion <= CONVERT(ROWVERSION,@endRow)) or
(c.rowversion > CONVERT(ROWVERSION,@startRow) and c.rowversion <= CONVERT(ROWVERSION,@endRow)) or
(s.rowversion > CONVERT(ROWVERSION,@startRow) and s.rowversion <= CONVERT(ROWVERSION,@endRow))

END
