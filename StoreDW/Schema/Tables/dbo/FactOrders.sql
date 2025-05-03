CREATE TABLE [dbo].[FactOrders]
(
	[OrderID] INT NOT NULL PRIMARY KEY, 
    [OrderDateKey] INT NOT NULL,
    [CustomerSK] INT NULL, 
    [EmployeeSK] INT NULL, 
    [ShipViaSK] INT NULL, 
    [ProductSK] INT NULL, 
    [UnitPrice] MONEY NULL, 
    [Quantity] SMALLINT NOT NULL, 
    [Discount] REAL NOT NULL,    
)
