IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'OrderLine_MoreOrders')
	CREATE TABLE [dbo].[OrderLine_MoreOrders]
	(
	[OrderLineID] [int] NOT NULL,
    [OrderLineDetailsID] [int] NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[SizeID] [int] NULL,
	[LineTotal] [money] NULL,
	[PromotionPercentage] [float] NULL,
    [VATPercentage] [int] NULL,
	[Currency] [nvarchar](3) NULL,
	[SalePercentage] [int] NULL,
	[Discount] [money] NULL
	)
TRUNCATE TABLE OrderLine_MoreOrders    