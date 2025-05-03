CREATE TABLE [dbo].[FactOrders]
(
	[OrderID] INT NOT NULL , 
    [OrderDateKey] INT NOT NULL,
    [CustomerSK] INT NULL, 
    [EmployeeSK] INT NULL, 
    [ShipViaSK] INT NULL, 
    [ProductSK] INT NOT NULL, 
    [UnitPrice] MONEY NULL, 
    [Quantity] SMALLINT NOT NULL, 
    [Discount] REAL NOT NULL, 
    CONSTRAINT [PK_FactOrders] PRIMARY KEY ([OrderID]) 
)
