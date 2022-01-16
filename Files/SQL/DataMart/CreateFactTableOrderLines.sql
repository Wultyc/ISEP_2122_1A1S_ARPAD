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
		[PromotionDiscount] [money]NOT NULL,
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