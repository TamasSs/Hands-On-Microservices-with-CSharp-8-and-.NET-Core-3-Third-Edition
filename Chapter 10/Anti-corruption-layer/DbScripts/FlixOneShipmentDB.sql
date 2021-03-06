USE [master]
GO
CREATE DATABASE [FlixOneShipmentDB]
GO
USE [FlixOneShipmentDB]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 3/4/2020 3:07:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[Id] [uniqueidentifier] NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[AddressLine1] [varchar](150) NULL,
	[AddressLine2] [varchar](150) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[PIN] [varchar](8) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/4/2020 3:07:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [uniqueidentifier] NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[JoinedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 3/4/2020 3:07:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [uniqueidentifier] NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[UnitePrice] [decimal](18, 2) NOT NULL,
	[Qty] [int] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/4/2020 3:07:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [uniqueidentifier] NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
	[StatusCode] [nvarchar](max) NULL,
	[StatusDesc] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[Tax] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippings]    Script Date: 3/4/2020 3:07:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippings](
	[Id] [uniqueidentifier] NOT NULL,
	[DateAdded] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NULL,
	[StatusId] [nvarchar](max) NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[InvoiceNumber] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
	[TrackingNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_Shippings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Addresses] ([Id], [DateAdded], [DateModified], [AddressLine1], [AddressLine2], [City], [State], [Country], [PIN], [CustomerId]) VALUES (N'8105da4b-cc4c-48a8-931c-645ecde65165', CAST(N'2019-08-08T00:00:00.0000000' AS DateTime2), NULL, N'7007 14 S SW', NULL, N'Calgary', N'Alberta', N'Canada', N'T2VIP9', N'ed9d223d-5c38-44d4-ae9a-46fa50849c43')
GO
INSERT [dbo].[Addresses] ([Id], [DateAdded], [DateModified], [AddressLine1], [AddressLine2], [City], [State], [Country], [PIN], [CustomerId]) VALUES (N'07dcd327-2823-4ca0-ad11-76c6444c3a2a', CAST(N'2019-09-18T00:00:00.0000000' AS DateTime2), NULL, N'7007 14 S SW', NULL, N'Calgary', N'Alberta', N'Canada', N'T2VIP9', N'da46c28a-a3d7-4204-95f0-72d2a81a1bec')
GO
INSERT [dbo].[Addresses] ([Id], [DateAdded], [DateModified], [AddressLine1], [AddressLine2], [City], [State], [Country], [PIN], [CustomerId]) VALUES (N'7fb06642-92ce-45e7-8e28-f8885f117ca7', CAST(N'2019-09-08T00:00:00.0000000' AS DateTime2), NULL, N'7007 14 S SW', NULL, N'Calgary', N'Alberta', N'Canada', N'T2VIP9', N'853877ea-76b5-4a5a-a89a-20e0c5a0a4f4')
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [LastName], [FirstName], [JoinedOn]) VALUES (N'853877ea-76b5-4a5a-a89a-20e0c5a0a4f4', CAST(N'2019-09-08T00:00:00.0000000' AS DateTime2), NULL, N'Brill', N'Kevin', CAST(N'2019-09-08T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [LastName], [FirstName], [JoinedOn]) VALUES (N'ed9d223d-5c38-44d4-ae9a-46fa50849c43', CAST(N'2019-08-08T00:00:00.0000000' AS DateTime2), NULL, N'Davis', N'Kenneth', CAST(N'2019-08-08T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [DateAdded], [DateModified], [LastName], [FirstName], [JoinedOn]) VALUES (N'da46c28a-a3d7-4204-95f0-72d2a81a1bec', CAST(N'2019-09-18T00:00:00.0000000' AS DateTime2), NULL, N'Kennedy', N'Kenneth', CAST(N'2019-09-18T00:00:00.0000000' AS DateTime2))
GO
INSERT [dbo].[OrderItems] ([Id], [DateAdded], [DateModified], [OrderId], [ProductId], [Name], [ImagePath], [UnitePrice], [Qty]) VALUES (N'ce05632f-655a-42a9-83cb-38964bf7297d', CAST(N'2020-01-02T00:00:00.0000000' AS DateTime2), NULL, N'f75c7f2f-c79b-458b-82b6-6adc235f861d', N'47bc5369-960d-446d-3b0b-08d7bb0b44b2', N'Microservices by example', N'/noimage.jpg', CAST(650.00 AS Decimal(18, 2)), 3)
GO
INSERT [dbo].[Orders] ([Id], [DateAdded], [DateModified], [CustomerId], [StatusCode], [StatusDesc], [Date], [Total], [Discount], [Tax]) VALUES (N'f75c7f2f-c79b-458b-82b6-6adc235f861d', CAST(N'2020-01-02T00:00:00.0000000' AS DateTime2), NULL, N'853877ea-76b5-4a5a-a89a-20e0c5a0a4f4', N'1', N'Processing', CAST(N'2020-01-02T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[Shippings] ([Id], [DateAdded], [DateModified], [StatusId], [OrderId], [InvoiceNumber], [Date], [TrackingNumber]) VALUES (N'1dee016e-5753-4b89-a2bb-db02e275f670', CAST(N'2020-01-05T00:00:00.0000000' AS DateTime2), NULL, N'1', N'f75c7f2f-c79b-458b-82b6-6adc235f861d', N'Inv-2019-20/005', CAST(N'2020-01-05T00:00:00.0000000' AS DateTime2), N'Z8T678905X')
GO
/****** Object:  Index [IX_Addresses_CustomerId]    Script Date: 3/4/2020 3:07:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_Addresses_CustomerId] ON [dbo].[Addresses]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 3/4/2020 3:07:13 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Customers_CustomerId]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
USE [master]
GO
ALTER DATABASE [FlixOneShipmentDB] SET  READ_WRITE 
GO
