IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Countries_MoreOrders')
	CREATE TABLE [dbo].[Countries_MoreOrders]
	(
	[CountryID] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Code] [nvarchar](2) NULL,
	[VAT] [float] NULL,
	[EuroZone] [bit] NULL
	)
TRUNCATE TABLE Countries_MoreOrders      
    