IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Countries_Stg')
	CREATE TABLE [dbo].[Countries_Stg]
	(
	[CountryID] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Code] [nvarchar](2) NULL,
	[VAT] [float] NULL,
	[EuroZone] [bit] NULL,
    [OriginSystemID] [INT] NULL
	)
TRUNCATE TABLE Countries_Stg