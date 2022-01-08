IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'OrderLine_PlusOrders')
	CREATE TABLE [dbo].[OrderLine_PlusOrders]
	(
	[OrderLineID] [int] NOT NULL,
    [OrderLineDetailsID] NULL,
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[Quantity] [int] NULL,
	[SizeID] [int] NULL,
	[LineTotal] [money] NULL,
	[PromotionPercentage] [float] NULL,
    [VATPercentage] [int] NULL,
	[Currency] [nvarchar](3) NULL,
	[SalePercentage] [int] NULL,
	[Discount] [money] NULL,
	[PromotionDiscount] [money] NULL
	)
TRUNCATE TABLE OrderLine_PlusOrders    