IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimCustomer')	
	CREATE TABLE [dbo].[DimCustomer](
		[CustomerKey] [int] IDENTITY(1,1) NOT NULL,
		[CustomerID] [int] NOT NULL,
		[CountryCode] [nvarchar](2) NULL,
		[Gender] [nchar](1) NULL,
		[GeographicRegion] [int] NULL,
		[Language] [nvarchar](2) NULL,
		[VipCustomer] [bit] NULL,
        [SystemID] [INT] NULL,
		[BeginDate]  [datetime] NOT NULL,
		[EndDate]  [datetime] NOT NULL,
	 CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED 
	(
		[CustomerKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]