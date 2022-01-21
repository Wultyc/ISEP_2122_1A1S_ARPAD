IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'OrderLine_PlusOrders')
	CREATE TABLE [dbo].[OrderLine_PlusOrders]
	(
	[OrderLineID] [int] NOT NULL,
    [OrderLineDetailsID] [int]NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[SizeID] [int] NULL,
	[LineTotal] [money] NULL,
	[PromotionPercentage] [float] NULL,
    [VATPercentage] [float] NULL,
	[Currency] [nvarchar](3) NULL,
	[SalePercentage] [float] NULL,
	[Discount] [money] NULL,
	[CreatedAt] [datetime] null
	)
TRUNCATE TABLE OrderLine_PlusOrders    