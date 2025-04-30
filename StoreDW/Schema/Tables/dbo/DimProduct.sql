CREATE TABLE [dbo].[DimProduct]
(
	[ProductSK] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimProduct PRIMARY KEY, 
    [ProductID] INT NULL, 
    [ProductName] NVARCHAR(40) NULL, 
    [CategoryName] NVARCHAR(15) NULL, 
    [CompanyNameSup] NVARCHAR(40) NULL
)
