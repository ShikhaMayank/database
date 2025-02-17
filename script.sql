USE [mayankdb]
GO
/****** Object:  User [mayank]    Script Date: 23-08-2019 03:08:25 ******/
CREATE USER [mayank] FOR LOGIN [mayank] WITH DEFAULT_SCHEMA=[mayank]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [mayank]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [mayank]
GO
ALTER ROLE [db_datareader] ADD MEMBER [mayank]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [mayank]
GO
/****** Object:  Schema [mayank]    Script Date: 23-08-2019 03:08:26 ******/
CREATE SCHEMA [mayank]
GO
/****** Object:  Table [dbo].[ActionReason]    Script Date: 23-08-2019 03:08:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActionReason](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descr] [varchar](30) NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 23-08-2019 03:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](255) NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Complaints]    Script Date: 23-08-2019 03:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Complaints](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descr] [varchar](50) NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComplaintsLog]    Script Date: 23-08-2019 03:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComplaintsLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ComplaintsId] [int] NULL,
	[Descr] [varchar](50) NULL,
	[CustomerId] [int] NULL,
	[RestaurantId] [int] NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 23-08-2019 03:08:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CustName] [varchar](100) NULL,
	[email] [varchar](250) NULL,
	[Contact] [varchar](10) NULL,
	[PaymentModeId] [int] NULL,
	[isDelivered] [bit] NULL,
	[RatingId] [int] NULL,
	[Feedback] [varchar](500) NULL,
	[InvoiceId] [int] NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[RestaurantId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 23-08-2019 03:08:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descr] [varchar](max) NULL,
	[Params] [varchar](500) NULL,
	[userid] [int] NULL,
	[browser] [varchar](50) NULL,
	[OS] [varchar](50) NULL,
	[weburl] [varchar](500) NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodItems]    Script Date: 23-08-2019 03:08:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodItems](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descr] [nvarchar](50) NULL,
	[CatId] [int] NULL,
	[Price] [float] NULL,
	[Discount] [float] NULL,
	[ImagePath] [varchar](250) NULL,
	[MealTypeId] [int] NULL,
	[RestaurantId] [int] NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[QualityId] [int] NULL,
	[menuId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MealType]    Script Date: 23-08-2019 03:08:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MealType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descr] [varchar](10) NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 23-08-2019 03:08:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantId] [int] NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermissionLog]    Script Date: 23-08-2019 03:08:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermissionLog](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descr] [varchar](10) NULL,
	[RestaurantId] [int] NULL,
	[ReasonId] [int] NULL,
	[createdDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ratings]    Script Date: 23-08-2019 03:08:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ratings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[value] [int] NULL,
	[descr] [varchar](15) NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurants]    Script Date: 23-08-2019 03:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurants](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descr] [nvarchar](255) NULL,
	[OwnerId] [int] NULL,
	[WebsiteId] [int] NULL,
	[Address] [varchar](500) NULL,
	[Pincode] [varchar](10) NULL,
	[CityId] [int] NULL,
	[StateId] [int] NULL,
	[CountryId] [int] NULL,
	[Landline1] [varchar](15) NULL,
	[Landline2] [varchar](15) NULL,
	[Landline3] [varchar](15) NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[domain] [nvarchar](100) NULL,
	[State] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[fssai] [varchar](20) NULL,
	[email] [varchar](100) NULL,
	[discount] [int] NULL,
	[password] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Support]    Script Date: 23-08-2019 03:08:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Support](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descr] [varchar](500) NULL,
	[SupportId] [int] NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SupportType]    Script Date: 23-08-2019 03:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupportType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descr] [varchar](500) NULL,
	[SupportId] [int] NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 23-08-2019 03:08:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](30) NULL,
	[MiddleName] [varchar](30) NULL,
	[LastName] [varchar](30) NULL,
	[PassCode] [varbinary](16) NULL,
	[PanCard] [varchar](12) NULL,
	[Contact1] [varchar](10) NULL,
	[Contact2] [varchar](10) NULL,
	[emailid1] [varchar](250) NULL,
	[emailid2] [varchar](250) NULL,
	[AadharCard] [varchar](16) NULL,
	[Paytm1] [varchar](10) NULL,
	[Paytm2] [varchar](10) NULL,
	[RoleId] [int] NULL,
	[isClient] [bit] NULL,
	[isAdmin] [bit] NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
	[password] [nvarchar](20) NULL,
	[username] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 23-08-2019 03:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](30) NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Websites]    Script Date: 23-08-2019 03:08:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Websites](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Descr] [nvarchar](100) NULL,
	[isActive] [bit] NULL,
	[LastDateModified] [datetime] NULL,
	[LastUpdatedBy] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mayank].[Employees]    Script Date: 23-08-2019 03:08:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mayank].[Employees](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[DateOfBirth] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mayank].[menumaster]    Script Date: 23-08-2019 03:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mayank].[menumaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[items] [nvarchar](1000) NULL,
	[RestaurantId] [int] NULL,
	[menuId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [mayank].[orders]    Script Date: 23-08-2019 03:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mayank].[orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderId] [uniqueidentifier] NULL,
	[OrderedItems] [nvarchar](max) NULL,
	[username] [varchar](100) NULL,
	[userPhone] [varchar](10) NULL,
	[userEmail] [varchar](100) NULL,
	[status] [int] NULL,
	[createdDate] [datetime] NULL,
	[modifiedDate] [datetime] NULL,
	[address] [varchar](1000) NULL,
	[paymentId] [nvarchar](100) NULL,
	[deliveryMode] [int] NULL,
	[paidAmount] [int] NULL,
	[restaurant] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [mayank].[Quality]    Script Date: 23-08-2019 03:08:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [mayank].[Quality](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descr] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ActionReason] ON 

INSERT [dbo].[ActionReason] ([id], [Descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, N'Late payment', 1, NULL, NULL)
INSERT [dbo].[ActionReason] ([id], [Descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (2, N'Owner Left', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[ActionReason] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, N'Soups', 1, NULL, 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (2, N'Starters', 1, NULL, 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (3, N'Main Course', 1, NULL, 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (4, N'Desserts', 1, NULL, 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (5, N'All Day Snacks', 1, CAST(N'2019-03-17T11:25:32.863' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (6, N'Soup', 1, CAST(N'2019-03-17T11:25:32.910' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (7, N'Indian Starter', 1, CAST(N'2019-03-17T11:25:32.910' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (8, N'Chinese Starter', 1, CAST(N'2019-03-17T11:25:32.927' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (9, N'Odia Main Course', 1, CAST(N'2019-03-17T11:25:32.943' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (10, N'Indian Main Course', 1, CAST(N'2019-03-17T11:25:32.943' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (11, N'Chinese Main Course', 1, CAST(N'2019-03-17T11:25:32.973' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (12, N'Indian Rice', 1, CAST(N'2019-03-17T11:25:32.990' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (13, N'Chinese Rice', 1, CAST(N'2019-03-17T11:25:33.020' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (14, N'Chinese Noodles', 1, CAST(N'2019-03-17T11:25:33.053' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (15, N'Indian Breads', 1, CAST(N'2019-03-17T11:25:33.083' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (16, N'Sides', 1, CAST(N'2019-03-17T11:25:33.100' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (17, N'Desserts', 1, CAST(N'2019-03-17T11:25:33.113' AS DateTime), 1)
INSERT [dbo].[Categories] ([id], [description], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (18, N'Beverages', 1, CAST(N'2019-03-17T11:25:33.130' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Complaints] ON 

INSERT [dbo].[Complaints] ([id], [Descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, N'Late Delivery', 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Complaints] OFF
SET IDENTITY_INSERT [dbo].[ComplaintsLog] ON 

INSERT [dbo].[ComplaintsLog] ([id], [ComplaintsId], [Descr], [CustomerId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, 1, N'Not delivered on time', 1, 1, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[ComplaintsLog] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [CustName], [email], [Contact], [PaymentModeId], [isDelivered], [RatingId], [Feedback], [InvoiceId], [isActive], [LastDateModified], [LastUpdatedBy], [RestaurantId]) VALUES (1, N'Happy', N'happy.gpt1@gmail.com', N'9967248008', 1, 0, 3, N'ok', 1, 1, NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[ErrorLog] ON 

INSERT [dbo].[ErrorLog] ([id], [Descr], [Params], [userid], [browser], [OS], [weburl], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, N'test error', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[ErrorLog] ([id], [Descr], [Params], [userid], [browser], [OS], [weburl], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (4, N'test error', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-08-18T00:59:29.157' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[ErrorLog] OFF
SET IDENTITY_INSERT [dbo].[FoodItems] ON 

INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1, N'Vegitable Soup', 1, 150, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (2, N'Chicken Soup', 1, 180, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (3, N'Idli Vada Samber', 1, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (4, N'Poha', 1, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (5, N'Masala Tea', 1, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (6, N'Misal Pav', 1, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (7, N'Upma Chatni', 1, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (8, N'Omlet Pav', 1, 80, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (9, N'Uttapam', 1, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (10, N'Chole Kulche', 1, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (11, N'Makke ki Roti Sarso da Sag', 1, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (12, N'Biryani', 1, 80, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (13, N'Lemon Rice', 1, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:49:51.593' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (14, N'Poha', 5, 50, 0, NULL, 1, 1, 0, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (15, N'Alu Paratha', 5, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (16, N'Gobi Paratha', 5, 60, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (17, N'Paneer Paratha', 5, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (18, N'Methi Paratha', 5, 60, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (19, N'Poori Sabji (5pc)', 5, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (20, N'Poori Chole (5pc)', 5, 150, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (21, N'Chole Bhature (3pc)', 5, 180, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (22, N'Dahi Bara Aludum Half', 5, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (23, N'Dahi Bara Aludum Full', 5, 70, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (24, N'Bara Guguni (4pc)', 5, 60, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (25, N'Bara Alu Dum', 5, 70, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (26, N'Parata Alu Dum (3pc)', 5, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (27, N'Puri Alu Kasa (5pc)', 5, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (28, N'Biri Kachori Alu Tarkari', 5, 150, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (29, N'Misal Pav', 5, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (30, N'Extra Pav (2pc)', 5, 20, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (31, N'Egg Omlette', 5, 40, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (32, N'Egg Masala Omlette', 5, 50, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (33, N'Egg Bhurji', 5, 40, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (34, N'Egg Masala Bhurji', 5, 50, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (35, N'Egg Half Fry', 5, 40, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (36, N'Sada Uttapam', 5, 30, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (37, N'Cheese Sada Uttapam', 5, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (38, N'Masala Uttapam', 5, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (39, N'Cheese Masala Uttapam', 5, 70, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (40, N'Onion Uttapam', 5, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (41, N'Cheese Onion Uttapam', 5, 60, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (42, N'Tomato Uttapam', 5, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (43, N'Cheese Tomato Uttapam', 5, 60, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (44, N'Onion Tomato Uttapam', 5, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (45, N'Cheese Onion Tomato Uttapam', 5, 70, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (46, N'Sada Dosa', 5, 30, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (47, N'Cheese Sada Dosa', 5, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (48, N'Masala Dosa', 5, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (49, N'Cheese Masala Dosa', 5, 70, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (50, N'Onion Dosa', 5, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (51, N'Cheese Onion Dosa', 5, 60, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (52, N'Egg Dosa', 5, 50, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (53, N'Egg Onion Dosa', 5, 60, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (54, N'Cheese Egg Dosa', 5, 70, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (55, N'Cheese Egg Onion Dosa', 5, 80, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (56, N'Chicken Keema Dosa', 5, 120, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (57, N'Mutton Keema Dosa', 5, 180, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (58, N'Upma', 5, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (59, N'Idli(4pc)', 5, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (60, N'Medu Wada(3pc)', 5, 60, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (61, N'Idli Wada (2+1pc)', 5, 60, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (62, N'Veg Clear Soup Soup', 6, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (63, N'Veg Sweet Corn Soup', 6, 90, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (64, N'Veg Manchow Soup', 6, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (65, N'Veg Lemon Coriander Soup', 6, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (66, N'Veg Hot and Sour Soup', 6, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (67, N'Veg Pepper Spinach Soup', 6, 110, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (68, N'Veg Mushroom Soup', 6, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (69, N'Chicken Clear Soup', 6, 90, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (70, N'Chicken Sweet Corn Soup', 6, 100, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (71, N'Chicken Manchow Soup', 6, 110, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (72, N'Chicken Lemon Coriander Soup', 6, 110, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (73, N'Chicken Hot and Sour Soup', 6, 110, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (74, N'Chicken Pepper Spinach Soup', 6, 120, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (75, N'Chicken Mushroom Soup', 6, 130, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (76, N'Prawns Clear Soup', 6, 130, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (77, N'Prawns Sweet Corn Soup', 6, 140, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (78, N'Prawns Manchow Soup', 6, 150, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (79, N'Prawns Lemon Coriander Soup', 6, 150, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (80, N'Prawns Hot and Sour Soup', 6, 150, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (81, N'Prawns Pepper Spinach Soup', 6, 160, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (82, N'Prawns Mushroom Soup', 6, 170, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (83, N'Paneer Tikka', 7, 130, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (84, N'Tandoori Mushroom', 7, 130, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (85, N'Tandoori Aloo', 7, 110, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (86, N'Tandoori Gobi', 7, 110, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (87, N'Veg Pakoda', 7, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (88, N'Paneer Pakoda (6 pc)', 7, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (89, N'Veg Manchurian', 8, 110, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (90, N'Gobi Manchurian', 8, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (91, N'Veg Chilly', 8, 110, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (92, N'Paneer Chilly', 8, 130, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (93, N'Mushroom Babycorn Chilly', 8, 140, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (94, N'Mushroom Manchurian', 8, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (95, N'Mushroom Chilly', 8, 140, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (96, N'Tandoori Chicken Half', 7, 140, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (97, N'Tandoori Chicken Full', 7, 250, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (98, N'Chicken Seekh Kebab', 7, 150, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (99, N'Pahadi Kebab (6 Pc)', 7, 160, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (100, N'Reshmi Kebab (6 Pc)', 7, 160, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (101, N'Chicken Tikka (6 Pc)', 7, 170, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (102, N'Chicken Leg Tandoori (3pc)', 7, 200, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (103, N'Mutton Seekh Kebab', 7, 250, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (104, N'Tandoori Pomfret (Pc As per Size)', 7, 450, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (105, N'Tandoori Prawns (Pc As per Size)', 7, 350, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (106, N'Surmai Fry (2 Pc)', 7, 400, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (107, N'Rohu/Katla Fry (2 Pc)', 7, 100, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (108, N'Pomfret Fry (Pc As per Size)', 7, 400, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (109, N'Egg Chilly Dry', 8, 110, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (110, N'Chicken Pakoda (6pc)', 7, 120, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (111, N'Chicken Chilly Dry', 8, 150, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (112, N'Prawns Chilly Dry', 8, 250, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (113, N'Chicken Lollypop (6 Pc) Dry', 8, 150, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (114, N'Garlic Chicken Dry', 8, 140, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (115, N'Chicken Manchurian Dry', 8, 140, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (116, N'Dalma', 9, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (117, N'Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (118, N'Aloo Kalara Chips', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (119, N'Dahi Baigana', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (120, N'Tomato Khata', 9, 30, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (121, N'Aloo bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (122, N'Potala Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (123, N'Alu Potala Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (124, N'Bhendi Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (125, N'Alu Bhendi Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (126, N'Gol Alu Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (127, N'Alu Chuin Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (128, N'Kalara Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (129, N'Alu Kalara Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (130, N'Gobi Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (131, N'Alu Gobi Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (132, N'Bhaigana Bhaja', 9, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (133, N'Masala Khichdi with Tomato Khata', 9, 90, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (134, N'Ghanto Tarkari', 9, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (135, N'Chicken Jholo', 9, 150, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (136, N'Macha Jholo', 9, 150, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (137, N'Mutton Jholo', 9, 200, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (138, N'Chicken Kasa', 9, 160, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (139, N'Mutton Kasa', 9, 160, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (140, N'Prawns Kasa', 9, 220, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (141, N'Macha Besara', 9, 160, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (142, N'Mix Veg', 10, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (143, N'Veg Kolhapuri', 10, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (144, N'Veg Kadhai', 10, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (145, N'Veg Handi', 10, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (146, N'Veg Kofta', 10, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (147, N'Veg Lajawab', 10, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (148, N'Alu Gobi', 10, 90, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (149, N'Alu Mutter', 10, 90, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (150, N'Alu Gobi Mutter', 10, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (151, N'Alu Palak', 10, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (152, N'Makai Masala', 10, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (153, N'Mushroom Masala', 10, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (154, N'Soya Green Masala', 10, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (155, N'Dumm Alu', 10, 110, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (156, N'Soya Chilli Milli', 10, 130, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (157, N'Chole Masala', 10, 130, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (158, N'Aloo Jeera', 10, 90, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (159, N'Aloo Methi', 10, 90, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (160, N'Bhendi Masala', 10, 90, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (161, N'Bhendi Fry', 10, 90, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (162, N'Bhendi Do Piaza', 10, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (163, N'Paneer Masala', 10, 150, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (164, N'Paneer Bhurji', 10, 180, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (165, N'Paneer Butter Masala', 10, 180, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (166, N'Paneer Kolhapuri', 10, 160, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (167, N'Paneer Do Piaza', 10, 150, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (168, N'Paneer Mushroom Handi', 10, 190, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (169, N'Paneer Kadhai', 10, 160, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (170, N'Paneer Handi', 10, 160, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (171, N'Palak Paneer', 10, 160, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (172, N'Mutter Paneer', 10, 160, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (173, N'Paneer Kofta', 10, 180, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (174, N'Paneer Tawa', 10, 150, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (175, N'Dal Fry', 10, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (176, N'Dal Tadka', 10, 90, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (177, N'Dal Makhni', 10, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (178, N'Dal Mughlai', 10, 100, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (179, N'Dal Methi', 10, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (180, N'Dal Palak', 10, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (181, N'Egg Masala', 10, 110, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (182, N'Egg Curry', 10, 120, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (183, N'Rohu/Katla Curry', 10, 130, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (184, N'Rohu/Katla Masala', 10, 140, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (185, N'Surmai Masala', 10, 350, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (186, N'Surmai Sukha', 10, 350, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (187, N'Surmai Curry', 10, 350, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (188, N'Pomfret Masala', 10, 450, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (189, N'Pomfret Sukha', 10, 450, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (190, N'Pomfret Curry', 10, 450, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (191, N'Prawns Masala', 10, 300, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (192, N'Prawns Sukha', 10, 300, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (193, N'Prawns Curry', 10, 300, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (194, N'Chicken Masala', 10, 160, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (195, N'Butter Chicken', 10, 200, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (196, N'Chicken Kadhai', 10, 190, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (197, N'Chicken Handi', 10, 190, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (198, N'Chicken Do Piaza', 10, 190, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (199, N'Chicken Kolhapuri', 10, 190, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (200, N'Chicken Curry', 10, 160, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (201, N'Chicken Tikka Masala', 10, 200, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (202, N'Mutton Masala', 10, 250, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (203, N'Mutton Kadhai', 10, 270, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (204, N'Mutton Handi', 10, 270, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (205, N'Mutton Do Piaza', 10, 270, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (206, N'Mutton Kolhapuri', 10, 270, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (207, N'Mutton Curry', 10, 250, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (208, N'Veg Manchurian Gravy', 11, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (209, N'Veg Chilly Gravy', 11, 130, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (210, N'Veg Schezwan Gravy', 11, 130, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (211, N'Veg Hot Garlic Gravy', 11, 130, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (212, N'Paneer Manchurian Gravy', 11, 150, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (213, N'Paneer Chilly Gravy', 11, 160, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (214, N'Paneer Schezwan Gravy', 11, 160, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (215, N'Paneer Hot Garlic Gravy', 11, 160, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (216, N'Egg Manchurian Gravy', 11, 110, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (217, N'Egg Chilly Gravy', 11, 110, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (218, N'Egg Schezwan Gravy', 11, 110, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (219, N'Egg Hot Garlic Gravy', 11, 110, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (220, N'Chicken Manchurian Gravy', 11, 160, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (221, N'Chicken Chilly Gravy', 11, 170, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (222, N'Chicken Schezwan Gravy', 11, 170, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (223, N'Chicken Hot Garlic Gravy', 11, 170, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (224, N'Steam Rice', 12, 70, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (225, N'Sabudana Khichdi', 12, 80, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (226, N'Jeera Rice', 12, 90, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (227, N'Dal Khichdi with Curd', 12, 90, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (228, N'Peas Pulav', 12, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (229, N'Dal Khichdi Tadka with Raita', 12, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (230, N'Masala Khichdi with Tomato Khata', 12, 100, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (231, N'Veg Pulav', 12, 110, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (232, N'Veg Biriyani', 12, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (233, N'Hyderabadi Veg Biriyani', 12, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (234, N'Kashmiri Pulav', 12, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (235, N'Chicken Biriyani', 12, 140, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (236, N'Paneer pulav', 12, 150, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (237, N'Paneer Biriyani', 12, 160, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (238, N'Mutton Biriyani', 12, 190, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (239, N'Veg Fried Rice', 13, 110, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (240, N'Veg Triple Fried Rice', 13, 160, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (241, N'Veg Schezwan Rice', 13, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (242, N'Veg Schezwan Triple Rice', 13, 180, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (243, N'Egg Fried Rice', 13, 110, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (244, N'Egg Triple Fried Rice', 13, 160, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (245, N'Egg Schezwan Rice', 13, 120, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (246, N'Egg Schezwan Triple Rice', 13, 180, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (247, N'Chicken Fried Rice', 13, 140, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (248, N'Chicken Triple Fried Rice', 13, 200, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (249, N'Chicken Schezwan Rice', 13, 150, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (250, N'Chicken Schezwan Triple Rice', 13, 210, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (251, N'Veg Fried Noodles', 14, 110, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (252, N'Veg Triple Fried Noodles', 14, 160, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (253, N'Veg Schezwan Noodles', 14, 120, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (254, N'Veg Schezwan Triple Noodles', 14, 180, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (255, N'Egg Fried Noodles', 14, 110, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (256, N'Egg Triple Fried Noodles', 14, 160, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (257, N'Egg Schezwan Noodles', 14, 120, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (258, N'Egg Schezwan Triple Noodles', 14, 180, 0, NULL, 2, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (259, N'Chicken Fried Noodles', 14, 140, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (260, N'Chicken Triple Fried Noodles', 14, 200, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (261, N'Chicken Schezwan Noodles', 14, 150, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (262, N'Chicken Schezwan Triple Noodles', 14, 210, 0, NULL, 3, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (263, N'Tawa Roti', 15, 10, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (264, N'Butter Tawa Roti', 15, 15, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (265, N'Tawa Paratha', 15, 20, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (266, N'Tandoori Roti', 15, 15, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (267, N'Tandoori Butter Roti', 15, 20, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (268, N'Naan', 15, 25, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (269, N'Butter Naan', 15, 35, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (270, N'Garlic Naan', 15, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (271, N'Butter Garlic Naan', 15, 60, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (272, N'Kulcha', 15, 30, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (273, N'Butter Kulcha', 15, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (274, N'Suji Halwa', 17, 30, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (275, N'Gulab Jamoon (2pc)', 17, 35, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (276, N'Thumbs Up (600ml)', 18, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (277, N'Sprite (600ml)', 18, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (278, N'Mazza (600ml)', 18, 55, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (279, N'Coke (600ml)', 18, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (280, N'Mineral Water (1Ltr)', 18, 25, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (281, N'Masala Soda Salted', 18, 45, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (282, N'Masala Soda Sweet', 18, 45, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (283, N'Fresh Lime Soda Salted', 18, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (284, N'Fresh Lime Soda Sweet', 18, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (285, N'Fresh Lime Soda Salt and Sweet', 18, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (286, N'Buttermilk', 18, 30, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (287, N'Sweet Lassi', 18, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (288, N'Fried Papad', 16, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (289, N'Roasted Papad', 16, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (290, N'Masala Papad', 16, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (291, N'Green Salad', 16, 50, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (292, N'Veg Raita', 16, 60, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (293, N'Tomato Khata', 16, 40, 0, NULL, 1, 1, 1, CAST(N'2019-03-17T11:48:49.620' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1003, N'Vegitable Soup', 1, 150, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1004, N'Chicken Soup', 1, 180, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1005, N'Idli Vada Samber', 1, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1006, N'Poha', 1, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1007, N'Masala Tea', 1, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1008, N'Misal Pav', 1, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1009, N'Upma Chatni', 1, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1010, N'Omlet Pav', 1, 80, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1011, N'Uttapam', 1, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1012, N'Chole Kulche', 1, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1013, N'Makke ki Roti Sarso da Sag', 1, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1014, N'Biryani', 1, 80, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1015, N'Lemon Rice', 1, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, 1)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1016, N'Poha', 5, 50, 0, NULL, 1, 2, 0, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1017, N'Alu Paratha', 5, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1018, N'Gobi Paratha', 5, 60, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1019, N'Paneer Paratha', 5, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1020, N'Methi Paratha', 5, 60, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1021, N'Poori Sabji (5pc)', 5, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1022, N'Poori Chole (5pc)', 5, 150, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1023, N'Chole Bhature (3pc)', 5, 180, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1024, N'Dahi Bara Aludum Half', 5, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1025, N'Dahi Bara Aludum Full', 5, 70, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1026, N'Bara Guguni (4pc)', 5, 60, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1027, N'Bara Alu Dum', 5, 70, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1028, N'Parata Alu Dum (3pc)', 5, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1029, N'Puri Alu Kasa (5pc)', 5, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1030, N'Biri Kachori Alu Tarkari', 5, 150, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1031, N'Misal Pav', 5, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1032, N'Extra Pav (2pc)', 5, 20, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1033, N'Egg Omlette', 5, 40, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1034, N'Egg Masala Omlette', 5, 50, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1035, N'Egg Bhurji', 5, 40, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1036, N'Egg Masala Bhurji', 5, 50, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1037, N'Egg Half Fry', 5, 40, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1038, N'Sada Uttapam', 5, 30, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1039, N'Cheese Sada Uttapam', 5, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1040, N'Masala Uttapam', 5, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1041, N'Cheese Masala Uttapam', 5, 70, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1042, N'Onion Uttapam', 5, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1043, N'Cheese Onion Uttapam', 5, 60, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1044, N'Tomato Uttapam', 5, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1045, N'Cheese Tomato Uttapam', 5, 60, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1046, N'Onion Tomato Uttapam', 5, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1047, N'Cheese Onion Tomato Uttapam', 5, 70, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1048, N'Sada Dosa', 5, 30, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1049, N'Cheese Sada Dosa', 5, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1050, N'Masala Dosa', 5, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1051, N'Cheese Masala Dosa', 5, 70, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1052, N'Onion Dosa', 5, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1053, N'Cheese Onion Dosa', 5, 60, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1054, N'Egg Dosa', 5, 50, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1055, N'Egg Onion Dosa', 5, 60, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1056, N'Cheese Egg Dosa', 5, 70, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1057, N'Cheese Egg Onion Dosa', 5, 80, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1058, N'Chicken Keema Dosa', 5, 120, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1059, N'Mutton Keema Dosa', 5, 180, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1060, N'Upma', 5, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1061, N'Idli(4pc)', 5, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1062, N'Medu Wada(3pc)', 5, 60, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1063, N'Idli Wada (2+1pc)', 5, 60, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1064, N'Veg Clear Soup Soup', 6, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1065, N'Veg Sweet Corn Soup', 6, 90, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1066, N'Veg Manchow Soup', 6, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1067, N'Veg Lemon Coriander Soup', 6, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1068, N'Veg Hot and Sour Soup', 6, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1069, N'Veg Pepper Spinach Soup', 6, 110, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1070, N'Veg Mushroom Soup', 6, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1071, N'Chicken Clear Soup', 6, 90, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1072, N'Chicken Sweet Corn Soup', 6, 100, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1073, N'Chicken Manchow Soup', 6, 110, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1074, N'Chicken Lemon Coriander Soup', 6, 110, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1075, N'Chicken Hot and Sour Soup', 6, 110, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1076, N'Chicken Pepper Spinach Soup', 6, 120, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1077, N'Chicken Mushroom Soup', 6, 130, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1078, N'Prawns Clear Soup', 6, 130, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1079, N'Prawns Sweet Corn Soup', 6, 140, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1080, N'Prawns Manchow Soup', 6, 150, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1081, N'Prawns Lemon Coriander Soup', 6, 150, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1082, N'Prawns Hot and Sour Soup', 6, 150, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1083, N'Prawns Pepper Spinach Soup', 6, 160, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1084, N'Prawns Mushroom Soup', 6, 170, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1085, N'Paneer Tikka', 7, 130, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1086, N'Tandoori Mushroom', 7, 130, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1087, N'Tandoori Aloo', 7, 110, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1088, N'Tandoori Gobi', 7, 110, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1089, N'Veg Pakoda', 7, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1090, N'Paneer Pakoda (6 pc)', 7, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1091, N'Veg Manchurian', 8, 110, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1092, N'Gobi Manchurian', 8, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1093, N'Veg Chilly', 8, 110, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1094, N'Paneer Chilly', 8, 130, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1095, N'Mushroom Babycorn Chilly', 8, 140, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1096, N'Mushroom Manchurian', 8, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1097, N'Mushroom Chilly', 8, 140, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1098, N'Tandoori Chicken Half', 7, 140, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1099, N'Tandoori Chicken Full', 7, 250, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1100, N'Chicken Seekh Kebab', 7, 150, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1101, N'Pahadi Kebab (6 Pc)', 7, 160, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1102, N'Reshmi Kebab (6 Pc)', 7, 160, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1103, N'Chicken Tikka (6 Pc)', 7, 170, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1104, N'Chicken Leg Tandoori (3pc)', 7, 200, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1105, N'Mutton Seekh Kebab', 7, 250, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1106, N'Tandoori Pomfret (Pc As per Size)', 7, 450, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1107, N'Tandoori Prawns (Pc As per Size)', 7, 350, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1108, N'Surmai Fry (2 Pc)', 7, 400, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1109, N'Rohu/Katla Fry (2 Pc)', 7, 100, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1110, N'Pomfret Fry (Pc As per Size)', 7, 400, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1111, N'Egg Chilly Dry', 8, 110, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1112, N'Chicken Pakoda (6pc)', 7, 120, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1113, N'Chicken Chilly Dry', 8, 150, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1114, N'Prawns Chilly Dry', 8, 250, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1115, N'Chicken Lollypop (6 Pc) Dry', 8, 150, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1116, N'Garlic Chicken Dry', 8, 140, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1117, N'Chicken Manchurian Dry', 8, 140, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1118, N'Dalma', 9, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1119, N'Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1120, N'Aloo Kalara Chips', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1121, N'Dahi Baigana', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1122, N'Tomato Khata', 9, 30, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1123, N'Aloo bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1124, N'Potala Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1125, N'Alu Potala Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1126, N'Bhendi Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1127, N'Alu Bhendi Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1128, N'Gol Alu Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1129, N'Alu Chuin Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1130, N'Kalara Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1131, N'Alu Kalara Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1132, N'Gobi Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1133, N'Alu Gobi Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1134, N'Bhaigana Bhaja', 9, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1135, N'Masala Khichdi with Tomato Khata', 9, 90, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1136, N'Ghanto Tarkari', 9, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1137, N'Chicken Jholo', 9, 150, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1138, N'Macha Jholo', 9, 150, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1139, N'Mutton Jholo', 9, 200, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1140, N'Chicken Kasa', 9, 160, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1141, N'Mutton Kasa', 9, 160, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1142, N'Prawns Kasa', 9, 220, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1143, N'Macha Besara', 9, 160, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1144, N'Mix Veg', 10, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1145, N'Veg Kolhapuri', 10, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1146, N'Veg Kadhai', 10, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1147, N'Veg Handi', 10, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1148, N'Veg Kofta', 10, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1149, N'Veg Lajawab', 10, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1150, N'Alu Gobi', 10, 90, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1151, N'Alu Mutter', 10, 90, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1152, N'Alu Gobi Mutter', 10, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1153, N'Alu Palak', 10, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1154, N'Makai Masala', 10, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1155, N'Mushroom Masala', 10, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1156, N'Soya Green Masala', 10, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1157, N'Dumm Alu', 10, 110, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1158, N'Soya Chilli Milli', 10, 130, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1159, N'Chole Masala', 10, 130, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1160, N'Aloo Jeera', 10, 90, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1161, N'Aloo Methi', 10, 90, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1162, N'Bhendi Masala', 10, 90, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1163, N'Bhendi Fry', 10, 90, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1164, N'Bhendi Do Piaza', 10, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1165, N'Paneer Masala', 10, 150, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1166, N'Paneer Bhurji', 10, 180, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1167, N'Paneer Butter Masala', 10, 180, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1168, N'Paneer Kolhapuri', 10, 160, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1169, N'Paneer Do Piaza', 10, 150, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1170, N'Paneer Mushroom Handi', 10, 190, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1171, N'Paneer Kadhai', 10, 160, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1172, N'Paneer Handi', 10, 160, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1173, N'Palak Paneer', 10, 160, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1174, N'Mutter Paneer', 10, 160, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1175, N'Paneer Kofta', 10, 180, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1176, N'Paneer Tawa', 10, 150, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1177, N'Dal Fry', 10, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1178, N'Dal Tadka', 10, 90, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1179, N'Dal Makhni', 10, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1180, N'Dal Mughlai', 10, 100, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1181, N'Dal Methi', 10, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1182, N'Dal Palak', 10, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1183, N'Egg Masala', 10, 110, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1184, N'Egg Curry', 10, 120, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1185, N'Rohu/Katla Curry', 10, 130, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1186, N'Rohu/Katla Masala', 10, 140, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1187, N'Surmai Masala', 10, 350, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1188, N'Surmai Sukha', 10, 350, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1189, N'Surmai Curry', 10, 350, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1190, N'Pomfret Masala', 10, 450, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1191, N'Pomfret Sukha', 10, 450, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1192, N'Pomfret Curry', 10, 450, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1193, N'Prawns Masala', 10, 300, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1194, N'Prawns Sukha', 10, 300, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1195, N'Prawns Curry', 10, 300, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1196, N'Chicken Masala', 10, 160, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1197, N'Butter Chicken', 10, 200, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1198, N'Chicken Kadhai', 10, 190, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1199, N'Chicken Handi', 10, 190, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1200, N'Chicken Do Piaza', 10, 190, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1201, N'Chicken Kolhapuri', 10, 190, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1202, N'Chicken Curry', 10, 160, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1203, N'Chicken Tikka Masala', 10, 200, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1204, N'Mutton Masala', 10, 250, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1205, N'Mutton Kadhai', 10, 270, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1206, N'Mutton Handi', 10, 270, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1207, N'Mutton Do Piaza', 10, 270, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1208, N'Mutton Kolhapuri', 10, 270, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
GO
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1209, N'Mutton Curry', 10, 250, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1210, N'Veg Manchurian Gravy', 11, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1211, N'Veg Chilly Gravy', 11, 130, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1212, N'Veg Schezwan Gravy', 11, 130, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1213, N'Veg Hot Garlic Gravy', 11, 130, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1214, N'Paneer Manchurian Gravy', 11, 150, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1215, N'Paneer Chilly Gravy', 11, 160, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1216, N'Paneer Schezwan Gravy', 11, 160, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1217, N'Paneer Hot Garlic Gravy', 11, 160, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1218, N'Egg Manchurian Gravy', 11, 110, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1219, N'Egg Chilly Gravy', 11, 110, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1220, N'Egg Schezwan Gravy', 11, 110, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1221, N'Egg Hot Garlic Gravy', 11, 110, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1222, N'Chicken Manchurian Gravy', 11, 160, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1223, N'Chicken Chilly Gravy', 11, 170, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1224, N'Chicken Schezwan Gravy', 11, 170, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1225, N'Chicken Hot Garlic Gravy', 11, 170, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1226, N'Steam Rice', 12, 70, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1227, N'Sabudana Khichdi', 12, 80, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1228, N'Jeera Rice', 12, 90, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1229, N'Dal Khichdi with Curd', 12, 90, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1230, N'Peas Pulav', 12, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1231, N'Dal Khichdi Tadka with Raita', 12, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1232, N'Masala Khichdi with Tomato Khata', 12, 100, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1233, N'Veg Pulav', 12, 110, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1234, N'Veg Biriyani', 12, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1235, N'Hyderabadi Veg Biriyani', 12, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1236, N'Kashmiri Pulav', 12, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1237, N'Chicken Biriyani', 12, 140, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1238, N'Paneer pulav', 12, 150, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1239, N'Paneer Biriyani', 12, 160, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1240, N'Mutton Biriyani', 12, 190, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1241, N'Veg Fried Rice', 13, 110, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1242, N'Veg Triple Fried Rice', 13, 160, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1243, N'Veg Schezwan Rice', 13, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1244, N'Veg Schezwan Triple Rice', 13, 180, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1245, N'Egg Fried Rice', 13, 110, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1246, N'Egg Triple Fried Rice', 13, 160, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1247, N'Egg Schezwan Rice', 13, 120, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1248, N'Egg Schezwan Triple Rice', 13, 180, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1249, N'Chicken Fried Rice', 13, 140, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1250, N'Chicken Triple Fried Rice', 13, 200, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1251, N'Chicken Schezwan Rice', 13, 150, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1252, N'Chicken Schezwan Triple Rice', 13, 210, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1253, N'Veg Fried Noodles', 14, 110, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1254, N'Veg Triple Fried Noodles', 14, 160, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1255, N'Veg Schezwan Noodles', 14, 120, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1256, N'Veg Schezwan Triple Noodles', 14, 180, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1257, N'Egg Fried Noodles', 14, 110, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1258, N'Egg Triple Fried Noodles', 14, 160, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1259, N'Egg Schezwan Noodles', 14, 120, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1260, N'Egg Schezwan Triple Noodles', 14, 180, 0, NULL, 2, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1261, N'Chicken Fried Noodles', 14, 140, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1262, N'Chicken Triple Fried Noodles', 14, 200, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1263, N'Chicken Schezwan Noodles', 14, 150, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1264, N'Chicken Schezwan Triple Noodles', 14, 210, 0, NULL, 3, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1265, N'Tawa Roti', 15, 10, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1266, N'Butter Tawa Roti', 15, 15, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1267, N'Tawa Paratha', 15, 20, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1268, N'Tandoori Roti', 15, 15, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1269, N'Tandoori Butter Roti', 15, 20, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1270, N'Naan', 15, 25, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1271, N'Butter Naan', 15, 35, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1272, N'Garlic Naan', 15, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1273, N'Butter Garlic Naan', 15, 60, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1274, N'Kulcha', 15, 30, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1275, N'Butter Kulcha', 15, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1276, N'Suji Halwa', 17, 30, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1277, N'Gulab Jamoon (2pc)', 17, 35, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1278, N'Thumbs Up (600ml)', 18, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1279, N'Sprite (600ml)', 18, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1280, N'Mazza (600ml)', 18, 55, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1281, N'Coke (600ml)', 18, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1282, N'Mineral Water (1Ltr)', 18, 25, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1283, N'Masala Soda Salted', 18, 45, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1284, N'Masala Soda Sweet', 18, 45, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1285, N'Fresh Lime Soda Salted', 18, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1286, N'Fresh Lime Soda Sweet', 18, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1287, N'Fresh Lime Soda Salt and Sweet', 18, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1288, N'Buttermilk', 18, 30, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1289, N'Sweet Lassi', 18, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1290, N'Fried Papad', 16, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1291, N'Roasted Papad', 16, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1292, N'Masala Papad', 16, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1293, N'Green Salad', 16, 50, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1294, N'Veg Raita', 16, 60, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
INSERT [dbo].[FoodItems] ([id], [descr], [CatId], [Price], [Discount], [ImagePath], [MealTypeId], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy], [QualityId], [menuId]) VALUES (1295, N'Tomato Khata', 16, 40, 0, NULL, 1, 2, 1, CAST(N'2019-08-22T12:13:57.883' AS DateTime), 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[FoodItems] OFF
SET IDENTITY_INSERT [dbo].[MealType] ON 

INSERT [dbo].[MealType] ([id], [Descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, N'Veg', 1, NULL, 1)
INSERT [dbo].[MealType] ([id], [Descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (2, N'Eggetarian', 1, NULL, 1)
INSERT [dbo].[MealType] ([id], [Descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (3, N'NonVeg', 1, NULL, 1)
INSERT [dbo].[MealType] ([id], [Descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (4, N'Jain', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[MealType] OFF
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([id], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, 1, 1, NULL, 1)
INSERT [dbo].[Permission] ([id], [RestaurantId], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (2, 2, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Permission] OFF
SET IDENTITY_INSERT [dbo].[Ratings] ON 

INSERT [dbo].[Ratings] ([id], [value], [descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, 1, N'Very Poor', 1, NULL, 1)
INSERT [dbo].[Ratings] ([id], [value], [descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (2, 2, N'Poor', 1, NULL, 1)
INSERT [dbo].[Ratings] ([id], [value], [descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (3, 3, N'Average', 1, NULL, 1)
INSERT [dbo].[Ratings] ([id], [value], [descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (4, 4, N'Good', 1, NULL, 1)
INSERT [dbo].[Ratings] ([id], [value], [descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (5, 5, N'Excellent', 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Ratings] OFF
SET IDENTITY_INSERT [dbo].[Restaurants] ON 

INSERT [dbo].[Restaurants] ([id], [Descr], [OwnerId], [WebsiteId], [Address], [Pincode], [CityId], [StateId], [CountryId], [Landline1], [Landline2], [Landline3], [isActive], [LastDateModified], [LastUpdatedBy], [domain], [State], [City], [fssai], [email], [discount], [password]) VALUES (1, N'Cart4All Food Services', 1, 2, N'Lakeshore, Palava', N'421204', NULL, NULL, NULL, N'7985804882', NULL, NULL, 1, CAST(N'2019-03-23T13:33:09.990' AS DateTime), 1, N'cart4all', N'Maharashtra', N'Dombivli', N'0000000000000', N'admin@articoletech.com', 20, N'123456')
INSERT [dbo].[Restaurants] ([id], [Descr], [OwnerId], [WebsiteId], [Address], [Pincode], [CityId], [StateId], [CountryId], [Landline1], [Landline2], [Landline3], [isActive], [LastDateModified], [LastUpdatedBy], [domain], [State], [City], [fssai], [email], [discount], [password]) VALUES (2, N'Cart4All - Hosted on AWS', 1, 2, N'Lakeshore, Palava', N'421204', NULL, NULL, NULL, N'7985804882', NULL, NULL, 1, CAST(N'2019-03-23T13:33:09.990' AS DateTime), 1, N'cartforall', N'Maharashtra', N'Dombivli', N'0000000000000', N'admin@articoletech.com', 20, N'123456')
SET IDENTITY_INSERT [dbo].[Restaurants] OFF
SET IDENTITY_INSERT [dbo].[Support] ON 

INSERT [dbo].[Support] ([id], [Descr], [SupportId], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, N'demo text will go here', 1, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Support] OFF
SET IDENTITY_INSERT [dbo].[SupportType] ON 

INSERT [dbo].[SupportType] ([id], [Descr], [SupportId], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, N'Site Not Working', 1, 1, NULL, 1)
INSERT [dbo].[SupportType] ([id], [Descr], [SupportId], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (2, N'Payment Related', 2, 1, NULL, 1)
INSERT [dbo].[SupportType] ([id], [Descr], [SupportId], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (3, N'Slow Loading', 3, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[SupportType] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([id], [FirstName], [MiddleName], [LastName], [PassCode], [PanCard], [Contact1], [Contact2], [emailid1], [emailid2], [AadharCard], [Paytm1], [Paytm2], [RoleId], [isClient], [isAdmin], [isActive], [LastDateModified], [LastUpdatedBy], [password], [username]) VALUES (1, N'Mayank', N'Kumar', N'Gupta', NULL, N'AZRPG8922H', N'9967248008', N'7985804882', N'mayank.gpt1@gmail.com', N'admin@articoletech.com', N'845371936868', N'9967248008', N'7985804882', 1, 0, 1, 1, NULL, 1, N'123456', NULL)
INSERT [dbo].[users] ([id], [FirstName], [MiddleName], [LastName], [PassCode], [PanCard], [Contact1], [Contact2], [emailid1], [emailid2], [AadharCard], [Paytm1], [Paytm2], [RoleId], [isClient], [isAdmin], [isActive], [LastDateModified], [LastUpdatedBy], [password], [username]) VALUES (2, N'Sauhitya', NULL, N'Garbadu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'123456', N'puurnbhoj')
INSERT [dbo].[users] ([id], [FirstName], [MiddleName], [LastName], [PassCode], [PanCard], [Contact1], [Contact2], [emailid1], [emailid2], [AadharCard], [Paytm1], [Paytm2], [RoleId], [isClient], [isAdmin], [isActive], [LastDateModified], [LastUpdatedBy], [password], [username]) VALUES (4, N'Shikha', NULL, N'Gupta', NULL, N'AZJHJHLKJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'123456', NULL)
SET IDENTITY_INSERT [dbo].[users] OFF
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([id], [Role], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, N'Admin', 1, NULL, 1)
INSERT [dbo].[UserType] ([id], [Role], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (2, N'Support team', 1, NULL, 1)
INSERT [dbo].[UserType] ([id], [Role], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (3, N'Resturant Owner', 1, NULL, 1)
INSERT [dbo].[UserType] ([id], [Role], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (4, N'End User', 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[UserType] OFF
SET IDENTITY_INSERT [dbo].[Websites] ON 

INSERT [dbo].[Websites] ([id], [Descr], [isActive], [LastDateModified], [LastUpdatedBy]) VALUES (1, N'https://articoletech.com', 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Websites] OFF
SET IDENTITY_INSERT [mayank].[Employees] ON 

INSERT [mayank].[Employees] ([ID], [FirstName], [LastName], [DateOfBirth]) VALUES (1, N'Mayank', N'Gupta', CAST(N'1988-05-15' AS Date))
INSERT [mayank].[Employees] ([ID], [FirstName], [LastName], [DateOfBirth]) VALUES (2, N'Shikha', N'Shivhare', CAST(N'1992-07-09' AS Date))
INSERT [mayank].[Employees] ([ID], [FirstName], [LastName], [DateOfBirth]) VALUES (3, N'Sauhitya', N'Garabadu', CAST(N'1990-01-01' AS Date))
SET IDENTITY_INSERT [mayank].[Employees] OFF
SET IDENTITY_INSERT [mayank].[menumaster] ON 

INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (6, N'All Day Snacks', N'Poha', 1, 6)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (7, N'Soup', N'Veg Clear Soup', 1, 7)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (8, N'Indian Starter', N'Paneer Tikka', 1, 8)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (9, N'Chinese Starter', N'Veg Manchurian', 1, 9)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (10, N'Odia Main Course', N'Dalma', 1, 10)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (11, N'Indian Main Course', N'Veg Kolhapuri', 1, 11)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (12, N'Chinese Main Course', N'Veg Schezwan Gravy', 1, 12)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (13, N'Indian Rice', N'Jeera Rice', 1, 13)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (14, N'Chinese Rice', N'Veg Fried Rice', 1, 14)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (15, N'Chinese Noodles', N'Veg Fried Noodles', 1, 15)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (16, N'Indian Breads', N'Butter Tawa Roti', 1, 16)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (17, N'Desserts', N'Gulab Jamoon (2pc)', 1, 17)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (18, N'Beverages', N'Thumbs Up (600ml)', 1, 18)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (19, N'Sides', N'Roasted Papad', 1, 19)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1006, N'All Day Snacks', N'Poha', 2, 6)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1007, N'Soup', N'Veg Clear Soup', 2, 7)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1008, N'Indian Starter', N'Paneer Tikka', 2, 8)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1009, N'Chinese Starter', N'Veg Manchurian', 2, 9)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1010, N'Odia Main Course', N'Dalma', 2, 10)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1011, N'Indian Main Course', N'Veg Kolhapuri', 2, 11)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1012, N'Chinese Main Course', N'Veg Schezwan Gravy', 2, 12)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1013, N'Indian Rice', N'Jeera Rice', 2, 13)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1014, N'Chinese Rice', N'Veg Fried Rice', 2, 14)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1015, N'Chinese Noodles', N'Veg Fried Noodles', 2, 15)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1016, N'Indian Breads', N'Butter Tawa Roti', 2, 16)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1017, N'Desserts', N'Gulab Jamoon (2pc)', 2, 17)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1018, N'Beverages', N'Thumbs Up (600ml)', 2, 18)
INSERT [mayank].[menumaster] ([id], [Name], [items], [RestaurantId], [menuId]) VALUES (1019, N'Sides', N'Roasted Papad', 2, 19)
SET IDENTITY_INSERT [mayank].[menumaster] OFF
SET IDENTITY_INSERT [mayank].[orders] ON 

INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (1, N'c7f8c38b-f152-44bd-922c-4434cd55b4e1', N'Vegitable Soup
? 150
 1 
Masala Tea
? 80
 2 ', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-04-14T05:40:04.353' AS DateTime), CAST(N'2019-04-14T05:40:04.353' AS DateTime), N'1501 UNO K - Lakeshore Greens Palava', N'', 1, 0, NULL)
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (2, N'7eea63cc-b314-454b-bf13-fe4ca628d5d5', N'Sr.	Item(s)	Price
1	Vegitable Soup × 1	₹ 150
2	Upma Chatni × 2	₹ 160
Subtotal	₹ 310
Delivery Charges	₹0
Total Discount in (%)	20%
Total	₹248', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-04-14T05:41:10.267' AS DateTime), CAST(N'2019-04-14T05:41:10.267' AS DateTime), N'1501, UNO K , Lakeshore Greens Palava', N'pay_CJXPzW9cNEe7wR', 2, 248, NULL)
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (3, N'0ae493dd-a1a9-45a3-9d62-20808ac9b5d5', N'Idli Vada Samber
? 80
 2 ', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-04-14T07:24:58.770' AS DateTime), CAST(N'2019-04-14T07:24:58.770' AS DateTime), N'1501, UNO K - Lakeshore Greens Palava', N'', 1, 0, NULL)
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (4, N'c2fe82b6-aa28-49c7-8b4a-6ed9d0c87e03', N'Vegitable Soup
? 150
 1 
Masala Tea
? 80
 2 ', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-04-14T07:32:53.687' AS DateTime), CAST(N'2019-04-14T07:32:53.687' AS DateTime), N'1501 UNO K - Lodha Casa bella', N'', 1, 0, NULL)
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (5, N'8ee3e3dc-d497-40f3-b063-2ca3f3ee2ba4', N'Vegitable Soup
? 150
 1 
Upma Chatni
? 80
 2 ', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-04-14T07:38:00.883' AS DateTime), CAST(N'2019-04-14T07:38:00.883' AS DateTime), N'1501 UNO K - Lakeshore Greens Palava', N'', 1, 0, NULL)
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (6, N'1600210b-9d78-42d7-bad8-f1c69704738d', N'Vegitable Soup
? 150
 1 
Masala Tea
? 80
 2 ', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-04-14T07:47:59.933' AS DateTime), CAST(N'2019-04-14T07:47:59.933' AS DateTime), N'1501 UNO K - Lakeshore Greens Palava', N'', 1, 0, NULL)
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (7, N'94e2e59b-3c7f-4d3b-8ef5-70fa4c579f98', N'Masala Tea
? 80
 2 
Upma Chatni
? 80
 1 ', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-04-14T07:50:31.133' AS DateTime), CAST(N'2019-04-14T07:50:31.133' AS DateTime), N'1501 UNO K - Lodha Casa bella', N'', 1, 0, NULL)
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (8, N'd7087b16-9ca8-4217-a69e-518db628d5bc', N'Upma Chatni
? 80
 2 
Masala Tea
? 80
 1 
Idli Vada Samber
? 80
 1 ', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-04-14T07:59:08.910' AS DateTime), CAST(N'2019-04-14T07:59:08.910' AS DateTime), N'1501 UNO K - Lakeshore Greens Palava', N'', 1, 0, NULL)
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (9, N'a8f52524-9be0-457a-8567-ed6541aa136e', N'Sr.	Item(s)	Price
1	Dahi Bara Aludum Half × 1	₹ 40
Subtotal	₹ 40
Delivery Charges	₹10
Total Discount in (%)	20%
Total	₹42', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-07-28T08:42:09.910' AS DateTime), CAST(N'2019-07-28T08:42:09.910' AS DateTime), N'test sale, Lodha Casa bella', N'pay_Cz8ZyYJ1VGPDyb', 2, 42, N'puurnbhoj')
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (10, N'fd64c53e-f78d-4ac3-8d38-b7959e1cb73e', N'Sr.	Item(s)	Price
1	Extra Pav (2pc) × 1	₹ 20
Subtotal	₹ 20
Delivery Charges	₹10
Total Discount in (%)	20%
Total	₹26', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-07-28T09:30:22.197' AS DateTime), CAST(N'2019-07-28T09:30:22.197' AS DateTime), N'test 2 payment, Lakeshore Greens Palava', N'pay_Cz9PNMVgbEqstA', 2, 26, N'puurnbhoj')
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (11, N'c0139702-38af-4e3e-86e8-2334fb77b9c2', N'Vegitable Soup
? 150
 1 ', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-07-28T10:19:24.480' AS DateTime), CAST(N'2019-07-28T10:19:24.480' AS DateTime), N'1501 UNO K - Lakeshore Greens Palava', N'', 1, 0, N'puurnbhoj')
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (12, N'9df0b2f7-b824-4504-9ad5-b38dce844252', N'Vegitable Soup
? 150
 1 ', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-08-04T06:38:18.563' AS DateTime), CAST(N'2019-08-04T06:38:18.563' AS DateTime), N'1501, UNO K - Lakeshore Greens Palava', N'', 1, 0, N'cart4all')
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (13, N'6ecedf01-db5c-4120-822b-bc262362b7d8', N'Vegitable Soup
? 150
 1 ', N'mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-08-04T06:40:45.817' AS DateTime), CAST(N'2019-08-04T06:40:45.817' AS DateTime), N'1501 UNO K - Lakeshore Greens Palava', N'', 1, 0, N'puurnbhoj')
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (14, N'8a05a500-7ce4-4945-b1b5-360a687a665b', N'Vegitable Soup
? 150
 1 ', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-08-04T06:43:15.033' AS DateTime), CAST(N'2019-08-04T06:43:15.033' AS DateTime), N'1501 UNO K - Lakeshore Greens Palava', N'', 1, 0, N'puurnbhoj')
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (15, N'3e28611e-5a89-4173-98a0-4fda5327a07b', N'Omlet Pav
? 80
 1 ', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-08-07T04:54:49.963' AS DateTime), CAST(N'2019-08-07T04:54:49.963' AS DateTime), N'nbjh - Lakeshore Greens Palava', N'', 1, 0, N'cart4all')
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (16, N'af9e2392-f5e4-47ff-a72b-cbf2011ad77e', N'Vegitable Soup
? 150
 1 
Egg Masala Omlette
? 50
 1 
Mutton Keema Dosa
? 180
 1 ', N'Mayank', N'7985804882', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-08-10T13:11:22.030' AS DateTime), CAST(N'2019-08-10T13:11:22.030' AS DateTime), N'1501 Uno K - Lakeshore Greens Palava', N'', 1, 0, N'cart4all')
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (17, N'd4593677-2ed8-4294-9064-d6aca3144454', N'Vegitable Soup
? 150
 1 ', N'Mayank', N'9619282867', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-08-17T03:41:22.413' AS DateTime), CAST(N'2019-08-17T03:41:22.413' AS DateTime), N'1501 UNO K - Lakeshore Greens Palava', N'', 1, 0, N'cart4all')
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (18, N'04d51445-0c59-4c47-a2a6-f5088e77ef4a', N'Sr.	Item(s)	Price
1	Dahi Bara Aludum Half × 1	₹ 40
Subtotal	₹ 40
Delivery Charges	₹10
Total Discount in (%)	20%
Total	₹42', N'Mayank', N'9967248008', N'happy.gpt1@gmail.com', 1, CAST(N'2019-08-18T05:39:14.347' AS DateTime), CAST(N'2019-08-18T05:39:14.347' AS DateTime), N'1501 UNO K, Lakeshore Greens Palava', N'pay_D7OhaVKwmOrQRI', 2, 42, N'cart4all')
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (19, N'd0d3494a-7682-4501-a271-bf0af14197be', N'Sr.	Item(s)	Price
1	Tawa Roti × 1	₹ 10
Subtotal	₹ 10
Delivery Charges	₹10
Total Discount in (%)	20%
Total	₹18', N'Mayank', N'9967248008', N'mayank.gpt1@gmail.com', 1, CAST(N'2019-08-18T10:48:20.887' AS DateTime), CAST(N'2019-08-18T10:48:20.887' AS DateTime), N'1501 uno k, Lakeshore Greens Palava', N'pay_D7TybytPPjzJ9Q', 2, 18, N'coreproject20190818080709')
INSERT [mayank].[orders] ([id], [orderId], [OrderedItems], [username], [userPhone], [userEmail], [status], [createdDate], [modifiedDate], [address], [paymentId], [deliveryMode], [paidAmount], [restaurant]) VALUES (20, N'efbb2b5e-cb38-4541-a607-bdeafd769a29', N'
        
            Tawa Roti
            ? 10
            
                
                    
                    1
                    
                
            
        
    ', N'Mayank Kumar Gupta', N'9967248008', N'Mayank.gpt1@gmail.com', 1, CAST(N'2019-08-19T01:38:53.727' AS DateTime), CAST(N'2019-08-19T01:38:53.727' AS DateTime), N'Plot No 21, Awadhpuri 1
Khargapur
GOMTI NAGAR extension - Lakeshore Greens Palava', N'', 1, 0, N'coreproject20190818080709')
SET IDENTITY_INSERT [mayank].[orders] OFF
SET IDENTITY_INSERT [mayank].[Quality] ON 

INSERT [mayank].[Quality] ([id], [descr]) VALUES (1, N'Premium')
INSERT [mayank].[Quality] ([id], [descr]) VALUES (2, N'Ordinary')
SET IDENTITY_INSERT [mayank].[Quality] OFF
ALTER TABLE [dbo].[Restaurants] ADD  DEFAULT ((0)) FOR [discount]
GO
ALTER TABLE [dbo].[Restaurants] ADD  DEFAULT ('123456') FOR [password]
GO
ALTER TABLE [mayank].[orders] ADD  DEFAULT (getdate()) FOR [createdDate]
GO
ALTER TABLE [mayank].[orders] ADD  DEFAULT (getdate()) FOR [modifiedDate]
GO
ALTER TABLE [mayank].[orders] ADD  DEFAULT ((0)) FOR [paidAmount]
GO
/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddUser] 
@FirstName varchar(30),
@LastName varchar(30),
@PanCard varchar(12)
AS
insert into users (FirstName,LastName, PanCard) values (@FirstName,@LastName,@PanCard)
GO
/****** Object:  StoredProcedure [dbo].[BindRestaurantMenu]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BindRestaurantMenu] 
@domain nvarchar(250)
AS
select mm.menuid as id,	mm.Name from mayank.menumaster mm join restaurants r on r.id =  mm.RestaurantId
where r.domain = @domain and r.isactive=1
--exec BindRestaurantMenu 'cartforall'


GO
/****** Object:  StoredProcedure [dbo].[CreateNewOrder]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateNewOrder] 
@OrderId uniqueidentifier,
@OrderedItems varchar(max),
@username varchar(100),
@userPhone varchar(10),
@userEmail varchar(100),
@address varchar(1000),
@deliveryMode int,
@paymentId nvarchar(250),
@restaurant nvarchar(100)
AS
insert into [mayank].orders (orderId,OrderedItems,username,userPhone,userEmail,status, address, deliveryMode, paymentId, paidamount, restaurant) values(
@OrderId,@OrderedItems,@username,@userPhone,@userEmail, 1, @address, @deliveryMode, @paymentId, 0, @restaurant)
--exec CreateNewOrder 
GO
/****** Object:  StoredProcedure [dbo].[CreateNewOrderPayment]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateNewOrderPayment] 
@OrderId uniqueidentifier,
@OrderedItems nvarchar(max),
@username varchar(100),
@userPhone varchar(10),
@userEmail varchar(100),
@address varchar(1000),
@price float,
@deliveryMode int,
@paymentId nvarchar(250),
@restaurant nvarchar(100)
AS
insert into [mayank].orders (orderId,OrderedItems,username,userPhone,userEmail,address, paidamount, deliveryMode, paymentId, status, restaurant) values(
@OrderId,@OrderedItems,@username,@userPhone,@userEmail, @address,@price, @deliveryMode, @paymentId, 1, @restaurant)
--exec CreateNewOrder 
GO
/****** Object:  StoredProcedure [dbo].[DeleteUser]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteUser] 
@UserId int
AS
delete from users where id=@UserId;
GO
/****** Object:  StoredProcedure [dbo].[GetFoodItemList]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFoodItemList] 
@domain nvarchar(250)
AS
select f.Id,f.CatId, f.descr as name,
(select Descr from MealType where id = MealTypeId) as type,
f.Price as price,
(f.qualityId) as Quality,f.discount, f.isActive,  r.isActive as rest
from fooditems f
 join restaurants r on r.id= f.RestaurantId
where r.domain=@domain and r.isActive=1
--exec GetFoodItemList 1
GO
/****** Object:  StoredProcedure [dbo].[GetFoodItemList_Admin]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetFoodItemList_Admin] 
@domain varchar(50)
AS
select fi.Id,fi.CatId, fi.descr as name,
(select Descr from MealType where id = fi.MealTypeId) as type,
fi.Price as price,
(fi.qualityId) as Quality,fi.discount, fi.isActive, r.isactive as OnOff
from fooditems fi join restaurants r 
on r.Id=fi.RestaurantId where r.domain = @domain
--exec GetFoodItemList_Admin 'puurnbhoj'
--update fooditems set isActive=0 where id = 4
--select * from MealType
GO
/****** Object:  StoredProcedure [dbo].[GetMenuById]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetMenuById] 
@RestaurantId Int
AS
select Id,CatId, descr as name,
(select Descr from MealType where id = MealTypeId) as type,
Price as price,
(qualityId) as Quality,discount
from fooditems where RestaurantId=@RestaurantId and isActive=1
--exec GetMenuById 1
GO
/****** Object:  StoredProcedure [dbo].[GetRestaurantDetails]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRestaurantDetails] 
@domainName varchar(50)
AS
select Descr,	Address,	Pincode,	Landline1,	State,	City, fssai, email, discount
from Restaurants where domain=@domainName and isActive=1
--exec GetRestaurantDetails 'puurnbhoj'
--select * from restaurants
--update Restaurants set fssai='2158104000040' where id=1
GO
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUser] 
@UserId int
AS
select * from users where id=@UserId;
GO
/****** Object:  StoredProcedure [dbo].[GetUsers]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetUsers]
AS
select * from users;
GO
/****** Object:  StoredProcedure [dbo].[LogSQLExpections]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LogSQLExpections] 
@Descr varchar(max)
AS
insert into ErrorLog (Descr,LastDateModified,LastUpdatedBy) values(@Descr,getdate(),'1')
--select * from ErrorLog
GO
/****** Object:  StoredProcedure [dbo].[ONOFFRESTAURANT]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ONOFFRESTAURANT] 
@restaurant nvarchar(50),
@status bit
AS
update Restaurants set ISACTIVE= @status where domain=@restaurant;
GO
/****** Object:  StoredProcedure [dbo].[pr_Authenticate]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pr_Authenticate] 
@username nvarchar(50),
@password nvarchar(20)
AS
BEGIN
SET NOCOUNT ON
IF EXISTS(SELECT passcode FROM users WHERE username = @username AND password = @password)
    SELECT 'true' AS UserExists
	
ELSE
    SELECT 'false' AS UserExists
END
print @username + ' = ' + @password
--exec pr_Authenticate 'puurnbhoj', '123456'
GO
/****** Object:  StoredProcedure [dbo].[UpdateFoodItemStatus]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateFoodItemStatus] 
@Id int,
@IsActive bit,
@name nvarchar(50),
@type int,
@price float
AS
update fooditems set descr= @name, MealTypeId =@type,Price=@price,  isactive=@IsActive where id=@Id;
GO
/****** Object:  StoredProcedure [dbo].[UpdateUser]    Script Date: 23-08-2019 03:09:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateUser] 
@Id int,
@FirstName varchar(30),
@LastName varchar(30),
@PanCard varchar(12)
AS
update users set FirstName=@FirstName,LastName=@LastName,PanCard=@PanCard where id=@ID;
GO
