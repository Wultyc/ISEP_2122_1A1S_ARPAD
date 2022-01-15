IF NOT EXISTS (SELECT name FROM sys.tables WHERE name = 'Products_DQP')
	CREATE TABLE [dbo].[Products_DQP]
	(
	[ProductID] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
	[CategoryID] [int] NULL,
	[CategoryName] [nvarchar](255) NULL,
	[CategoryGender] [nchar](1) NULL,
	[AvailablePortal] [bit] NULL,
	[Active] [bit] NULL,
    [BoxID] [int] NULL,
	[BoxName] [nvarchar](255) NULL,
	[BoxHeight] [float] NULL,
	[BoxLength] [float] NULL,
	[BoxWidth] [float] NULL,
	[BoxVolWeight] [float] NULL,
	[Location] [nvarchar](255) NULL,
	[SystemID] [nvarchar] (10) NULL,
	[DQP] [nvarchar](255) NULL
		)
TRUNCATE TABLE Products_DQP  