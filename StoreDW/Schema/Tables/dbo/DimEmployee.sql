CREATE TABLE [dbo].[DimEmployee]
(
	[EmployeeSK] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimEmployee PRIMARY KEY, 
    [EmployeeID] INT NULL, 
    [LastName] NCHAR(20) NULL, 
    [FirstName] NCHAR(10) NULL, 
    [Title] NCHAR(30) NULL, 
    [TitleOfCourtesy] NCHAR(25) NULL, 
    [Address] NCHAR(60) NULL, 
    [City] NCHAR(15) NULL, 
    [Region] NCHAR(15) NULL 
)
