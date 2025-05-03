CREATE TABLE [dbo].[DimProduct]
(
	[ProductSK] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimProduct PRIMARY KEY, 
    [ProductID] INT NULL, 
    [ProductName] NVARCHAR(40) NULL, 
    [UnitPrice] MONEY NOT NULL, 
    [Discontinued] BIT NULL, 
    [CategoryName] NVARCHAR(15) NULL, 
    [DescriptionCat] NTEXT NULL,
    [CompanyNameSup] NVARCHAR(40) NULL, 
    [ContactNameSup] NVARCHAR(30) NULL, 
    [ContactTitleSup] NVARCHAR(30) NULL 
    
)
