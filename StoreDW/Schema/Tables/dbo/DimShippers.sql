CREATE TABLE [dbo].[DimShippers]
(
	[ShipperSK] INT IDENTITY(1,1) NOT NULL CONSTRAINT PK_DimShipper PRIMARY KEY, 
    [ShipperID] INT NULL, 
    [CompanyName] NVARCHAR(40) NULL, 
    [Phone] NVARCHAR(24) NULL
)
