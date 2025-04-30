CREATE TABLE [dbo].[DimShippers]
(
	[ShipperSK] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimShipper PRIMARY KEY, 
    [ShipperID] NCHAR(10) NULL, 
    [CompanyName] NVARCHAR(40) NULL, 
    [Phone] NVARCHAR(24) NULL
)
