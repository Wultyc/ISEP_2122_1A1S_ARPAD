IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Orders_DQP')
	CREATE TABLE [dbo].[Orders_DQP]
	(
	[OrderID] [int] NOT NULL,
	[SiteID] [int] NULL,
	[CustomerID] [int] NULL,
	[TotalQuantity] [int] NULL,
	[ShippingCost] [money] NULL,
	[TotalWithoutShipping] [money] NULL,
	[TotalWithShipping] [money] NULL,
	[Address] [nvarchar](255) NULL,
	[CountryCode] [nvarchar](2) NULL,
	[State] [nvarchar](255) NULL,
	[Zip_City] [nvarchar](255) NULL,
	[Currency] [nvarchar](3) NULL,
	[SystemID] [nvarchar](10) NULL,
	[DQP] [nvarchar] (255) NULL
	) 
TRUNCATE TABLE Orders_DQP    