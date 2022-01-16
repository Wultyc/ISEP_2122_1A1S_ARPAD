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
		[QuarterOfYear][tinyint] not null,
		[QuarterName] [nvarchar] (100) not null,
		[TrimesterOfYear] [tinyint] not null,
		[TrismesterName] [nvarchar] (100) not null,
		[Half-YearOfYear] [tinyint] not null,
		[Half-YearName] [nvarchar] (100) not null,
		[Year] [int] NOT NULL,
		[LeapYear] [nvarchar] (3),
		[Month] [int] NOT NULL,
		[MonthName] [nvarchar](10) NOT NULL,
		[DayOfWeekFull][nvarchar](10) NOT NULL,
		[Weekend] [nvarchar](3) NOT NULL,
		[Season] [nvarchar] (10) NOT NULL,
		[FirstDayOfMonth] [nvarchar](3) NOT NULL,
		[LastDayOfMonth] [nvarchar](3) NOT NULL
	 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
	(
		[DateKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
