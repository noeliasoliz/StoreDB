CREATE TABLE [staging].[Orders]
(
	[OrderID] INT NOT NULL, 
    [OrderDateKey] INT NOT NULL,
    [CustomerSK] INT NULL, 
    [EmployeeSK] INT NULL, 
    [ShipViaSK] INT NULL, 
    [ProductSK] INT NULL, 
    [UnitPrice] MONEY NULL, 
    [Quantity] SMALLINT NOT NULL, 
    [Discount] REAL NOT NULL
)
