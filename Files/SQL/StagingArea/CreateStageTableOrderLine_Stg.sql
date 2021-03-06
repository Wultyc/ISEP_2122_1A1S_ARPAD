IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'OrderLine_Stg')
	CREATE TABLE [dbo].[OrderLine_Stg]
	(
	[OrderLineID] [int] NOT NULL,
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
    [SystemID] [nvarchar] (15) NULL,
	[CreatedAt] [datetime] null
	)
TRUNCATE TABLE OrderLine_Stg    