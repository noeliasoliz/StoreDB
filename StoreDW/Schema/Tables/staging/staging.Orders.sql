CREATE TABLE [staging].[Orders]
(
	[OrderID] INT NOT NULL, 
    [ItemID] INT NOT NULL, 
    [CustomerSK] INT NULL, 
    [EmployeeSK] INT NULL, 
    [ShipViaSK] INT NULL, 
    [ProductSK] INT NULL, 
    [UnitPrice] MONEY NULL, 
    [Quantity] SMALLINT NOT NULL, 
    [Discount] REAL NOT NULL
)
