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
	) ON [PRIMARY]