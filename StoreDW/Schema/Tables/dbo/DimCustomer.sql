CREATE TABLE [dbo].[DimCustomer]
(
	[CustomerSK] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimCustomer PRIMARY KEY, 
    [CustomerID] NCHAR(10) NULL, 
    [ContactName] NVARCHAR(30) NULL, 
    [ContactTitle] NVARCHAR(30) NULL, 
    [Address] NVARCHAR(60) NULL, 
    [City] NVARCHAR(15) NULL, 
    [Region] NVARCHAR(15) NULL
)
