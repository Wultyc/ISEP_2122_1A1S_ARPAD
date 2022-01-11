IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Orders_MoreOrders')
	CREATE TABLE [dbo].[Orders_MoreOrders]
	(
	[OrderID] [int] NOT NULL,
	[SiteID] [int] NULL,
	[CustomerID] [int] NULL,
	[TotalQuantity] [int] NULL,
	[ShippingCost] [money] NULL,
	[TotalWithoutShipping] [money] NULL,
	[TotalWithShipping] [money] NULL,
	[Address] [nvarchar](255) NULL,
	[CountryID] [int] NULL,
	[State] [nvarchar](255) NULL,
	[Zip_City] [nvarchar](255) NULL,
	[Currency] [nvarchar](3) NULL
	)
TRUNCATE TABLE Orders_MoreOrders      