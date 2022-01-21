IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'OrderLine_DQP')
	CREATE TABLE [dbo].[OrderLine_DQP]
	(
	[OrderLineID] [int] NOT NULL,
    [OrderLineDetailsID] [int] NULL,
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
	[PromotionDiscount] [money] NULL,
	[DQP] [nvarchar](255) NULL,
	SystemID [nvarchar](10) NULL
	)
TRUNCATE TABLE OrderLine_DQP    