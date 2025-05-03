CREATE PROCEDURE [dbo].[GetEmployeeChangesByRowVersion]
	@startRow BIGINT 
   ,@endRow  BIGINT 
AS
BEGIN
select e.EmployeeID, e.LastName, e.FirstName, e.Title, e.TitleOfCourtesy, e.Address, e.City, e.Region
from Employees e
where e.rowversion > CONVERT(ROWVERSION,@startRow) and e.rowversion <= CONVERT(ROWVERSION,@endRow)
END