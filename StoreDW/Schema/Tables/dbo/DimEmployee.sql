CREATE TABLE [dbo].[DimEmployee]
(
	[EmployeeSK] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimEmployee PRIMARY KEY, 
    [EmployeeID] INT NULL, 
    [LastName] NCHAR(10) NULL, 
    [FirstName] NCHAR(10) NULL, 
    [Title] NCHAR(10) NULL, 
    [TitleOfCourtesy] NCHAR(10) NULL, 
    [Address] NCHAR(10) NULL, 
    [City] NCHAR(10) NULL, 
    [Region] NCHAR(10) NULL 
)
