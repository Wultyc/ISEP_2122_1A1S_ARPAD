IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Products_MoreOrders')
	CREATE TABLE [dbo].[Products_MoreOrders]
	(
	[ProductID] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Color] [nvarchar](255) NULL,
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
	)
TRUNCATE TABLE Products_MoreOrders  