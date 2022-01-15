IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Customers_DQP')
	CREATE TABLE [dbo].[Customers_DQP]
	(
		[CustomerID] [int] NOT NULL,
		[CountryCode] [nvarchar](2) NULL,
		[Gender] [nchar](1) NULL,
		[GeographicRegion] [int] NULL,
		[Language] [nvarchar](2) NULL,
		[VipCustomer] [bit] NULL,
		[CreateDate] [date] NULL,
        DQP [nvarchar](255) NULL,
        SystemID [nvarchar](10)
	)
TRUNCATE TABLE Customers_DQP  