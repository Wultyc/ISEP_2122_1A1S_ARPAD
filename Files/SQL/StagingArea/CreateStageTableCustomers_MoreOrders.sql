IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Customers_MoreOrders')
	CREATE TABLE [dbo].[Customers_MoreOrders]
	(
		[CustomerID] [int] NOT NULL,
		[CountryCode] [nvarchar](2) NULL,
		[Gender] [nchar](1) NULL,
		[GeographicRegion] [int] NULL,
		[Language] [nvarchar](2) NULL,
		[VipCustomer] [bit] NULL,
		[CreateDate] [date] NULL
	)
TRUNCATE TABLE Customers_MoreOrders  