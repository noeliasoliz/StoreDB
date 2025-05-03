CREATE PROCEDURE [dbo].[GetShippersChangesByRowVersion]
	@startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
	select s.ShipperID, s.CompanyName, s.Phone 
from Shippers s
where s.rowversion > CONVERT(ROWVERSION,@startRow) and s.rowversion <= CONVERT(ROWVERSION,@endRow)
END