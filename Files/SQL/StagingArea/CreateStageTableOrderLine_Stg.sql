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
    [VATPercentage] [int] NULL,
	[Currency] [nvarchar](3) NULL,
	[SalePercentage] [int] NULL,
	[Discount] [money] NULL,
    [SystemID] [nvarchar] (15) NULL
	)
TRUNCATE TABLE OrderLine_Stg    