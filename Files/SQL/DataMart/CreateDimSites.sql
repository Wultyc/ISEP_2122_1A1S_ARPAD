IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSites')	
	CREATE TABLE [dbo].[DimSites](
		[SitesKey] [int] IDENTITY(1,1) NOT NULL,
        [SiteID] [int] NOT NULL,
        [Name] [nvarchar](255) NULL,
        [IsSite] [bit] NULL,
        [SiteURL] [nvarchar](255) NULL,
        [SiteName] [nvarchar](255) NULL,
        [Initials] [nvarchar](3) NULL,
        [Currency] [nvarchar](3) NULL,
        [StoreContact] [nvarchar](255) NULL,
        [AddressLine1] [nvarchar](255) NULL,
        [AddressLine2] [nvarchar](255) NULL,
        [Zip_City] [nvarchar](255) NULL,
        [CountryCode] [nvarchar](2) NULL,
        [Phone] [bigint] NULL,
        [PickupHour] [int] NULL,
        [DailyPickup] [bit] NULL,
        [TimeZone] [nvarchar](255) NULL
	 CONSTRAINT [PK_DimSites] PRIMARY KEY CLUSTERED 
	(
		[SitesKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]