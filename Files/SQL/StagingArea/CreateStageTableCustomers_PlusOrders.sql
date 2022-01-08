IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Customers_PlusOrders')
	CREATE TABLE [dbo].[Customers_PlusOrders]
	(
		[CustomerID] [int] NOT NULL,
		[CountryID] [int] NULL,
		[DateOfBirth] [nvarchar](255) NULL,
		[Gender] [nchar](1) NULL,
		[GeographicRegion] [int] NULL,
		[Language] [nvarchar](2) NULL,
		[VipCustomer] [bit] NULL,
		[CreateDate] [date] NULL,
		[LastUpdateDate] [date] NULL
	)
TRUNCATE TABLE Customers_PlusOrders  