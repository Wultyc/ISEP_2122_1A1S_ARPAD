IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Customers_Stg')
	CREATE TABLE [dbo].[Customers_Stg]
	(
		[CustomerID] [int] NOT NULL,
		[CountryID] [int] NULL,
		[DateOfBirth] [nvarchar](255) NULL,
		[Gender] [nchar](1) NULL,
		[GeographicRegion] [int] NULL,
		[Language] [nvarchar](2) NULL,
		[VipCustomer] [bit] NULL,
        [SystemID] [INT] NULL
	)
TRUNCATE TABLE Customers_Stg