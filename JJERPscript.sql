USE [jjerp]
GO
/****** Object:  Table [dbo].[CompanyType]    Script Date: 12/26/2015 17:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CreatedByUserId] [int] NULL,
	[UpdatedByUserId] [int] NULL,
 CONSTRAINT [PK_CompanyType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CompanyType] ON
INSERT [dbo].[CompanyType] ([ID], [Description], [CreatedDate], [UpdatedDate], [CreatedByUserId], [UpdatedByUserId]) VALUES (1, N'Sales', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[CompanyType] OFF
/****** Object:  Table [dbo].[Company1]    Script Date: 12/26/2015 17:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company1](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[CompanyTypeID] [int] NULL,
	[Street] [nvarchar](50) NULL,
	[HouseNumber] [nvarchar](50) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[CountryID] [int] NULL,
	[LandMark] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[Telephone] [nvarchar](100) NULL,
	[Email] [nvarchar](150) NULL,
	[Website] [nvarchar](150) NULL,
	[PaymentTermDays] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CreatedByUserId] [int] NULL,
	[UpdatedByUserId] [int] NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Company1] ON
INSERT [dbo].[Company1] ([ID], [Name], [CompanyTypeID], [Street], [HouseNumber], [City], [State], [CountryID], [LandMark], [Description], [Telephone], [Email], [Website], [PaymentTermDays], [CreatedDate], [UpdatedDate], [CreatedByUserId], [UpdatedByUserId]) VALUES (1, N'rrr', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Company1] ([ID], [Name], [CompanyTypeID], [Street], [HouseNumber], [City], [State], [CountryID], [LandMark], [Description], [Telephone], [Email], [Website], [PaymentTermDays], [CreatedDate], [UpdatedDate], [CreatedByUserId], [UpdatedByUserId]) VALUES (2, N'qqq', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Company1] ([ID], [Name], [CompanyTypeID], [Street], [HouseNumber], [City], [State], [CountryID], [LandMark], [Description], [Telephone], [Email], [Website], [PaymentTermDays], [CreatedDate], [UpdatedDate], [CreatedByUserId], [UpdatedByUserId]) VALUES (3, N'eee', 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Company1] OFF
/****** Object:  Table [dbo].[Company]    Script Date: 12/26/2015 17:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Company_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON
INSERT [dbo].[Company] ([Id], [Name]) VALUES (1, N'rishabh')
SET IDENTITY_INSERT [dbo].[Company] OFF
/****** Object:  Table [dbo].[Country]    Script Date: 12/26/2015 17:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CreatedByUserId] [int] NULL,
	[UpdatedByUserId] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Country] ON
INSERT [dbo].[Country] ([ID], [Name], [CreatedDate], [UpdatedDate], [CreatedByUserId], [UpdatedByUserId]) VALUES (1, N'iNDIA', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Country] OFF
/****** Object:  Table [dbo].[VendorType]    Script Date: 12/26/2015 17:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VendorType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CreatedByUserId] [int] NULL,
	[UpdatedByUserId] [int] NULL,
 CONSTRAINT [PK_VendorType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendor]    Script Date: 12/26/2015 17:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[VendorTypeID] [int] NULL,
	[Street] [nvarchar](50) NULL,
	[HouseNumber] [nvarchar](50) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[CountryID] [int] NULL,
	[LandMark] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[Telephone] [nvarchar](100) NULL,
	[Email] [nvarchar](150) NULL,
	[Website] [nvarchar](150) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CreatedByUserId] [int] NULL,
	[UpdatedByUserId] [int] NULL,
 CONSTRAINT [PK_Vendor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactPerson]    Script Date: 12/26/2015 17:02:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactPerson](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](100) NULL,
	[Lastname] [nvarchar](100) NULL,
	[CompanyID] [int] NULL,
	[VendorID] [int] NULL,
	[Designation] [nvarchar](100) NULL,
	[Street] [nvarchar](50) NULL,
	[HouseNumber] [nvarchar](50) NULL,
	[City] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[CountryID] [int] NULL,
	[LandMark] [nvarchar](150) NULL,
	[Description] [nvarchar](max) NULL,
	[Telephone] [nvarchar](100) NULL,
	[Mobile] [nvarchar](100) NULL,
	[Email] [nvarchar](150) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CreatedByUserId] [int] NULL,
	[UpdatedByUserId] [int] NULL,
 CONSTRAINT [PK_ContactPerson] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_ContactPerson_Country]    Script Date: 12/26/2015 17:02:41 ******/
ALTER TABLE [dbo].[ContactPerson]  WITH CHECK ADD  CONSTRAINT [FK_ContactPerson_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[ContactPerson] CHECK CONSTRAINT [FK_ContactPerson_Country]
GO
/****** Object:  ForeignKey [FK_ContactPerson_Vendor]    Script Date: 12/26/2015 17:02:41 ******/
ALTER TABLE [dbo].[ContactPerson]  WITH CHECK ADD  CONSTRAINT [FK_ContactPerson_Vendor] FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendor] ([ID])
GO
ALTER TABLE [dbo].[ContactPerson] CHECK CONSTRAINT [FK_ContactPerson_Vendor]
GO
/****** Object:  ForeignKey [FK_Vendor_Country]    Script Date: 12/26/2015 17:02:41 ******/
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Vendor] CHECK CONSTRAINT [FK_Vendor_Country]
GO
/****** Object:  ForeignKey [FK_Vendor_VendorType]    Script Date: 12/26/2015 17:02:41 ******/
ALTER TABLE [dbo].[Vendor]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_VendorType] FOREIGN KEY([VendorTypeID])
REFERENCES [dbo].[VendorType] ([ID])
GO
ALTER TABLE [dbo].[Vendor] CHECK CONSTRAINT [FK_Vendor_VendorType]
GO
