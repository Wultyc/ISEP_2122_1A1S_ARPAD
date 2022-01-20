IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimDate')	
	CREATE TABLE [dbo].[DimDate](
		[DateKey] [int] IDENTITY(1,1) NOT NULL,
		[FullDate] [datetime] NOT NULL,
		[DateName] [nvarchar] (100) NOT NULL,
		[YearName] [nvarchar] (100) NOT NULL,
		[MonthNameFull] [nvarchar] (100) NOT NULL,
		[WeekName] [nvarchar] (100) NOT NULL,
		[DayOfYear] [int] NOT NULL,
		[DayOfMonth] [int] NOT NULL,
		[DayOfWeek] [int] NOT NULL,
		[WeekOfYear] [int] NOT NULL,
		[YearQuarter] [tinyint] not null,
		[YearQuarterName] [nvarchar] (100) not null,
		[YearTrimester] [tinyint] not null,
		[YearTrismesterName] [nvarchar] (100) not null,
		[YearSemester] [tinyint] not null,
		[YearSemesterName] [nvarchar] (100) not null,
		[Year] [int] NOT NULL,
		[LeapYear] [nvarchar] (3) not null,
		[Month] [int] NOT NULL,
		[MonthName] [nvarchar](10) NOT NULL,
		[DayOfWeekName] [nvarchar](10) NOT NULL,
		[Weekend] [nvarchar](3) NOT NULL,
		[Season] [nvarchar] (10) NOT NULL,
		[FirstDayOfMonth] [nvarchar](3) NOT NULL,
		[LastDayOfMonth] [nvarchar](3) NOT NULL,
	 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
	(
		[DateKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY];

IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCurrency')	
	CREATE TABLE [dbo].[DimCurrency](
		[CurrencyKey] [int] IDENTITY(1,1) NOT NULL,
		[DateKey] [int] NOT NULL,
		[Eur] [money] NOT NULL,
		[GBP] [money] NOT NULL,
		[USD] [money] NOT NULL,
		[CAD] [money] NOT NULL,
		[AUD] [money] NOT NULL,
		[SGD] [money] NOT NULL,
		[CHF] [money] NOT NULL,
		[JPY] [money] NOT NULL,
		[KRW] [money] NOT NULL,
		[BRL] [money] NOT NULL,
		[RUB] [money] NOT NULL,
	 CONSTRAINT [PK_DimCurrency] PRIMARY KEY CLUSTERED 
	(
		[CurrencyKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	,CONSTRAINT FK_FactTable_OrderLines_DateKey FOREIGN KEY (DateKey)
        REFERENCES [DimDate] (DateKey)
        ON DELETE CASCADE
	) ON [PRIMARY];

	IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSizes')	
	CREATE TABLE [dbo].[DimSizes](
		[SizesKey] [int] IDENTITY(1,1) NOT NULL,
    	[SizeID] [int] NOT NULL,
    	[Name] [nvarchar](255) NULL,
		[17] [float] NULL,
        [18] [float] NULL,
        [19] [float] NULL,
        [20] [float] NULL,
        [21] [float] NULL,
        [22] [nvarchar](255) NULL,
        [23] [nvarchar](255) NULL,
        [24] [nvarchar](255) NULL,
        [25] [nvarchar](255) NULL,
        [26] [nvarchar](255) NULL,
        [27] [nvarchar](255) NULL,
        [28] [nvarchar](255) NULL,
        [29] [nvarchar](255) NULL,
        [30] [nvarchar](255) NULL,
        [31] [nvarchar](255) NULL,
        [32] [nvarchar](255) NULL,
        [33] [nvarchar](255) NULL,
        [34] [nvarchar](255) NULL,
        [35] [nvarchar](255) NULL,
        [36] [nvarchar](255) NULL,
        [37] [nvarchar](255) NULL,
        [38] [nvarchar](255) NULL,
        [39] [nvarchar](255) NULL,
        [40] [nvarchar](255) NULL,
        [41] [nvarchar](255) NULL,
        [42] [nvarchar](255) NULL,
        [43] [nvarchar](255) NULL,
        [44] [nvarchar](255) NULL,
        [45] [nvarchar](255) NULL,
        [46] [nvarchar](255) NULL,
        [47] [nvarchar](255) NULL,
        [48] [nvarchar](255) NULL,
        [49] [nvarchar](255) NULL,
        [50] [nvarchar](255) NULL,
        [51] [nvarchar](255) NULL,
        [52] [nvarchar](255) NULL,
        [FriendlyName] [nvarchar](255) NULL,
        [RetailInvisible] [bit] NULL,
        [MinimunSizeAvailable] [int] NULL,
        [MaximunSizeAvailable] [int] NULL,
	 CONSTRAINT [PK_DimSizes] PRIMARY KEY CLUSTERED 
	(
		[SizesKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY];
	IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimProduct')	
	CREATE TABLE [dbo].[DimProduct](
		[ProductKey] [int] IDENTITY(1,1) NOT NULL,
		[ProductID] [int] NOT NULL,
        [Description] [nvarchar](255) NULL,
        [CategoryID] [int] NULL,
        [CategoryName] [nvarchar](255) NULL,
        [CategoryGender] [nchar](1) NULL,
        [AvailablePortal] [bit] NULL,
        [Active] [bit] NULL,
        [BoxID] [int] NOT NULL,
        [BoxName] [nvarchar](255) NULL,
        [BoxHeight] [float] NULL,
        [BoxLength] [float] NULL,
        [BoxWidth] [float] NULL,
        [BoxVolWeight] [float] NULL,
        [Location] [nvarchar](255) NULL,
		[BeginDate] [datetime] not null,
		[EndDate] [datetime] null,
	 CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED 
	(
		[ProductKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY];
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
        [TimeZone] [nvarchar](255) NULL,
		[BeginDate]  [datetime] NOT NULL,
		[EndDate]  [datetime] NULL,
	 CONSTRAINT [PK_DimSites] PRIMARY KEY CLUSTERED 
	(
		[SitesKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY];
	IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimShipping')	
	CREATE TABLE [dbo].[DimShipping](
		[ShippingKey] [int] IDENTITY(1,1) NOT NULL,
		[OrderId] [int] NOT NULL,
		[Address] [nvarchar] (255) NOT NULL,
		[State] [nvarchar] (100) NOT NULL,
		[Zip_City] [nvarchar] (100) NOT NULL,
		[Country] [nvarchar] (100) NOT NULL,
		[BeginDate]  [datetime] NOT NULL,
		[EndDate]  [datetime] NULL,
	 CONSTRAINT [PK_DimShipping] PRIMARY KEY CLUSTERED
	(
		[ShippingKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY];
	IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimSystem')	
	CREATE TABLE [dbo].[DimSystem](
		[SystemKey] [int] IDENTITY(1,1) NOT NULL,
		[Name] [nvarchar](10) NULL,
	 CONSTRAINT [PK_DimSystem] PRIMARY KEY CLUSTERED 
	(
		[SystemKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY];
	IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')	
	CREATE TABLE [dbo].[DimCustomer](
		[CustomerKey] [int] IDENTITY(1,1) NOT NULL,
		[CustomerID] [int] NOT NULL,
		[CountryCode] [nvarchar](2) NULL,
		[Gender] [nchar](1) NULL,
		[GeographicRegion] [int] NULL,
		[Language] [nvarchar](2) NULL,
		[VipCustomer] [bit] NULL,
		[BeginDate]  [datetime] NOT NULL,
		[EndDate]  [datetime] NULL,
	 CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED 
	(
		[CustomerKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY];
	IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'FactTable_OrderLines')	
	CREATE TABLE [dbo].[FactTable_OrderLines](
		[OrderLinesKey] [int] IDENTITY(1,1) NOT NULL,
		[SystemKey] [int] NOT NULL,
		[CustomerKey] [int] NOT NULL,
		[ProductKey] [int] NOT NULL,
		[CreateDateKey] [int] NOT NULL,
		[SiteKey] [int] NOT NULL,
		[SizeKey] [int] NOT NULL,
		[ShippingKey] [int] NOT NULL,
		[OrderId] [int]NOT NULL,
		[OrderLineId] [int]NOT NULL,
		[Quantity] [int]NOT NULL,
		[LineTotal] [money]NOT NULL,
		[VatPercentage] [float]NOT NULL,
		[SalePercentage] [float]NOT NULL,
		[Discount] [money]NOT NULL,
		[PromotionPercentage] [float]NOT NULL,
		[TotalShipping] [money]NOT NULL,
		[TotalWithoutShipping] [money]NOT NULL,
		[ShippingCost] [money]NOT NULL,
		[TotalShippingEUR] [money]NOT NULL,
		[TotalWithoutShippingEUR] [money]NOT NULL,
		[ShippingCostEUR] [money]NOT NULL,
	CONSTRAINT [PK_FactTable_OrderLines] PRIMARY KEY CLUSTERED 
	(
		[SystemKey] ASC,
		[CustomerKey] ASC,
		[CreateDateKey] ASC,
		[OrderLineId] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	,
	CONSTRAINT FK_FactTable_OrderLines_SystemKey FOREIGN KEY (SystemKey)
        REFERENCES [DimSystem] (SystemKey)
        ON DELETE CASCADE
	,
	CONSTRAINT FK_FactTable_OrderLines_CustomerKey FOREIGN KEY (CustomerKey)
        REFERENCES [DimCustomer] (CustomerKey)
        ON DELETE CASCADE
	,
	CONSTRAINT FK_FactTable_OrderLines_ProductKey FOREIGN KEY (ProductKey)
        REFERENCES [DimProduct] (ProductKey)
        ON DELETE CASCADE
	,
	CONSTRAINT FK_FactTable_OrderLines_CreateDateKey FOREIGN KEY (CreateDateKey)
        REFERENCES [DimDate] (DateKey)
        ON DELETE CASCADE
	,
	CONSTRAINT FK_FactTable_OrderLines_SiteKey FOREIGN KEY (SiteKey)
        REFERENCES [DimSites] (SitesKey)
        ON DELETE CASCADE
	,
	CONSTRAINT FK_FactTable_OrderLines_SizeKey FOREIGN KEY (SizeKey)
        REFERENCES [DimSizes] (SizesKey)
        ON DELETE CASCADE
	,
	CONSTRAINT FK_FactTable_OrderLines_ShippingKey FOREIGN KEY (ShippingKey)
        REFERENCES [DimShipping] (ShippingKey)
        ON DELETE CASCADE
	) ON [PRIMARY]