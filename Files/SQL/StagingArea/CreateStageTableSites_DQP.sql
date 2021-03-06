IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Site_DQP')
	CREATE TABLE [dbo].[Site_DQP]
	(
	[SiteID] [int] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[IsSite] [bit] NULL,
	[SiteURL] [nvarchar](255) NULL,
	[SiteName] [nvarchar](255) NULL,
	[Initials] [nvarchar](3) NULL,
	[Currency] [nvarchar](3) NULL,
	[SiteInfoID] [int] NULL,
	[StoreContact] [nvarchar](255) NULL,
	[AddressLine1] [nvarchar](255) NULL,
	[AddressLine2] [nvarchar](255) NULL,
	[Zip_City] [nvarchar](255) NULL,
	[CountryID] [int] NULL,
	[Phone] [bigint] NULL,
	[PickupHour] [int] NULL,
	[DailyPickup] [bit] NULL,
	[TimeZone] [nvarchar](255) NULL,
	[DQP] [nvarchar](255) NULL,
	[SystemID] [nvarchar] (10) NULL
	)
TRUNCATE TABLE Site_DQP  