CREATE PROCEDURE [dbo].[GetCustomerChangesByRowVersion]
	@startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
	select c.CustomerID, c.ContactName, c.ContactTitle, c.Address, c.City, c.Region, c.Country
from Customers c
where c.rowversion > CONVERT(ROWVERSION,@startRow) and c.rowversion <= CONVERT(ROWVERSION,@endRow)
END
