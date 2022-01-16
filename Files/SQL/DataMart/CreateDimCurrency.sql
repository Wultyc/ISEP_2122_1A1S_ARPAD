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
	) ON [PRIMARY]