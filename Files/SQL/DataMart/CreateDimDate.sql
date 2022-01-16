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
		[Year] [int] NOT NULL,
		[Semester] [tinyint] NOT NULL,
		[Quarter] [tinyint] NOT NULL,
		[Month] [int] NOT NULL,
		[MonthName] [nvarchar](10) NOT NULL,
		[Week] [tinyint] NOT NULL,
		[DayOfWeekName] [nvarchar](10) NOT NULL,
		[Weekend] [nvarchar](3) NOT NULL,
		[Season] [nvarchar] (10) NOT NULL,
		[FirstDayOfMonth] [nvarchar](3) NOT NULL,
		[LastDayOfMonth] [nvarchar](3) NOT NULL,
		[YearSemester] [tinyint] not null,
		[YearSemesterName] [nvarchar] (100) not null,
		[YearTrimester] [tinyint] not null,
		[YearTrismesterName] [nvarchar] (100) not null,
		[YearQuarter] [tinyint] not null,
		[YearQuarterName] [nvarchar] (100) not null,
		[LeapYear] [nvarchar] (3) not null


	 CONSTRAINT [PK_DimDate] PRIMARY KEY CLUSTERED 
	(
		[DateKey] ASC
	)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
	) ON [PRIMARY]
