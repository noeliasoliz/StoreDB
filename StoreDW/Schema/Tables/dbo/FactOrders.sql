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
    CONSTRAINT [PK_FactOrders] PRIMARY KEY ([ProductSK], [OrderID]) 
);
GO
ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimCustomer] FOREIGN KEY([CustomerSK]) REFERENCES [dbo].[DimCustomer] ([CustomerSK]);
GO
ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimEmployee] FOREIGN KEY([EmployeeSK] ) REFERENCES [dbo].[DimEmployee] ([EmployeeSK]);
GO
ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimProduct] FOREIGN KEY([ProductSK] ) REFERENCES [dbo].[DimProduct] ([ProductSK]);
GO
ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimShipper] FOREIGN KEY([ShipViaSK] ) REFERENCES [dbo].[DimShippers] ([ShipperSK]);
GO
ALTER TABLE [dbo].[FactOrders] ADD CONSTRAINT [FK_DimDate] FOREIGN KEY([OrderDateKey]) REFERENCES [dbo].[DimDate] ([DateKey]);
GO

