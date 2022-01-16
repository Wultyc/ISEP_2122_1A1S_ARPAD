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
	 CONSTRAINT [PK_DimProduct] PRIMARY KEY CLUSTERED 
	(
		[ProductKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]