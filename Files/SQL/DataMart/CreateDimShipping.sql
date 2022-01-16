IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'DimShipping')	
	CREATE TABLE [dbo].[DimShipping](
		[ShippingKey] [int] IDENTITY(1,1) NOT NULL,
		[Address] [datetime] NOT NULL,
		[City] [nvarchar] (100) NOT NULL,
		[State] [nvarchar] (100) NOT NULL,
		[Zip] [nvarchar] (100) NOT NULL,
		[Country] [nvarchar] (100) NOT NULL,
		[BeginDate]  [datetime] NOT NULL,
		[EndDate]  [datetime] NOT NULL,
	 CONSTRAINT [PK_DimShipping] PRIMARY KEY CLUSTERED 
	(
		[ShippingKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]