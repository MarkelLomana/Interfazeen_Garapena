USE [WineShop]
GO
/****** Object:  Table [dbo].[Ardoa]    Script Date: 17/11/2022 10:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ardoa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Alkohola] [int] NOT NULL,
	[Deskribapena] [nvarchar](max) NULL,
	[Edukia] [int] NOT NULL,
	[Irudia] [nvarchar](max) NULL,
	[Izena] [nvarchar](max) NOT NULL,
	[MotaId] [int] NOT NULL,
	[Salneurria] [decimal](18, 0) NOT NULL,
	[UpeltegiaId] [int] NOT NULL,
	[Urtea] [int] NOT NULL,
	[Eskaintza] [bit] NULL,
	[Deskontua] [int] NULL,
 CONSTRAINT [PK_Ardoa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BezeroaEskaera]    Script Date: 17/11/2022 10:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BezeroaEskaera](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Izena] [nvarchar](50) NULL,
	[Abizena] [nvarchar](50) NULL,
	[Helbidea] [nvarchar](50) NULL,
	[Hiria] [nvarchar](50) NULL,
	[Herrialdea] [nvarchar](50) NULL,
	[Postakodea] [nchar](5) NULL,
	[Telefonoa] [nchar](10) NULL,
	[Data] [datetime] NULL,
	[Erabiltzailea] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Erosketa]    Script Date: 17/11/2022 10:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Erosketa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Kantitatea] [int] NULL,
	[BezeroaEskaeraId] [int] NULL,
	[ArdoaId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eskualdea]    Script Date: 17/11/2022 10:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eskualdea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HerrialdeaId] [int] NOT NULL,
	[Izena] [nvarchar](max) NULL,
 CONSTRAINT [PK_Eskualde] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Herrialdea]    Script Date: 17/11/2022 10:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Herrialdea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Izena] [nvarchar](max) NULL,
 CONSTRAINT [PK_Herrialde] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mota]    Script Date: 17/11/2022 10:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mota](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Izena] [nvarchar](max) NULL,
 CONSTRAINT [PK_Mota] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SaskiaAlea]    Script Date: 17/11/2022 10:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SaskiaAlea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SaskiaId] [nvarchar](50) NULL,
	[Kantitatea] [int] NULL,
	[Data] [datetime] NULL,
	[ArdoaId] [int] NULL,
 CONSTRAINT [PK_SaskiaAlea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Upeltegia]    Script Date: 17/11/2022 10:59:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Upeltegia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EskualdeaId] [int] NOT NULL,
	[Izena] [nvarchar](max) NULL,
 CONSTRAINT [PK_Upeltegi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ardoa] ON 

INSERT [dbo].[Ardoa] ([Id], [Alkohola], [Deskribapena], [Edukia], [Irudia], [Izena], [MotaId], [Salneurria], [UpeltegiaId], [Urtea], [Eskaintza], [Deskontua]) VALUES (1, 17, N'Remelluri urteko ardoa', 750, N'lindes.jpg', N'Lindes de Remelluri', 2, CAST(12 AS Decimal(18, 0)), 1, 2016, 1, 5)
INSERT [dbo].[Ardoa] ([Id], [Alkohola], [Deskribapena], [Edukia], [Irudia], [Izena], [MotaId], [Salneurria], [UpeltegiaId], [Urtea], [Eskaintza], [Deskontua]) VALUES (2, 17, N'Remelluri ardo zuria', 750, N'remellurizuria.jpg', N'Remelluri zuria', 1, CAST(50 AS Decimal(18, 0)), 1, 2016, 1, 10)
INSERT [dbo].[Ardoa] ([Id], [Alkohola], [Deskribapena], [Edukia], [Irudia], [Izena], [MotaId], [Salneurria], [UpeltegiaId], [Urtea], [Eskaintza], [Deskontua]) VALUES (3, 16, N'Amaren', 750, N'amaren.jpg', N'Amaren', 2, CAST(30 AS Decimal(18, 0)), 2, 2015, 0, 0)
INSERT [dbo].[Ardoa] ([Id], [Alkohola], [Deskribapena], [Edukia], [Irudia], [Izena], [MotaId], [Salneurria], [UpeltegiaId], [Urtea], [Eskaintza], [Deskontua]) VALUES (4, 17, N'Tinto Pesquera', 750, N'tintopesquera.jpg', N'Tinto Pesquera', 2, CAST(10 AS Decimal(18, 0)), 3, 2014, 0, 0)
INSERT [dbo].[Ardoa] ([Id], [Alkohola], [Deskribapena], [Edukia], [Irudia], [Izena], [MotaId], [Salneurria], [UpeltegiaId], [Urtea], [Eskaintza], [Deskontua]) VALUES (5, 12, N'Veuve Clicquot Brut', 750, N'veuvebrut.jpg', N'Veuve Clicquot Brut', 5, CAST(35 AS Decimal(18, 0)), 4, 2017, 1, 7)
INSERT [dbo].[Ardoa] ([Id], [Alkohola], [Deskribapena], [Edukia], [Irudia], [Izena], [MotaId], [Salneurria], [UpeltegiaId], [Urtea], [Eskaintza], [Deskontua]) VALUES (7, 14, N'Saint Bris', 750, N'saintbris.jpg', N'Saint Bris', 1, CAST(23 AS Decimal(18, 0)), 5, 2016, 1, 8)
INSERT [dbo].[Ardoa] ([Id], [Alkohola], [Deskribapena], [Edukia], [Irudia], [Izena], [MotaId], [Salneurria], [UpeltegiaId], [Urtea], [Eskaintza], [Deskontua]) VALUES (8, 13, N'Chardonnay', 750, N'chardonnay.jpg', N'Chardonnay', 1, CAST(12 AS Decimal(18, 0)), 6, 2014, 1, 5)
INSERT [dbo].[Ardoa] ([Id], [Alkohola], [Deskribapena], [Edukia], [Irudia], [Izena], [MotaId], [Salneurria], [UpeltegiaId], [Urtea], [Eskaintza], [Deskontua]) VALUES (11, 14, N'Rose 2017', 750, N'rose2017.jpg', N'Rose 2017', 3, CAST(25 AS Decimal(18, 0)), 6, 2017, 0, 0)
INSERT [dbo].[Ardoa] ([Id], [Alkohola], [Deskribapena], [Edukia], [Irudia], [Izena], [MotaId], [Salneurria], [UpeltegiaId], [Urtea], [Eskaintza], [Deskontua]) VALUES (12, 19, N'Dolcetto', 750, N'dolcetto.jpg', N'Dolcetto', 4, CAST(17 AS Decimal(18, 0)), 7, 2017, 0, 0)
INSERT [dbo].[Ardoa] ([Id], [Alkohola], [Deskribapena], [Edukia], [Irudia], [Izena], [MotaId], [Salneurria], [UpeltegiaId], [Urtea], [Eskaintza], [Deskontua]) VALUES (13, 14, N'Carignane', 750, N'carignane.jpg', N'Carignane', 3, CAST(10 AS Decimal(18, 0)), 7, 2016, 0, 0)
INSERT [dbo].[Ardoa] ([Id], [Alkohola], [Deskribapena], [Edukia], [Irudia], [Izena], [MotaId], [Salneurria], [UpeltegiaId], [Urtea], [Eskaintza], [Deskontua]) VALUES (14, 13, N'Meissner', 750, N'meissner.jpg', N'Meissner', 1, CAST(28 AS Decimal(18, 0)), 8, 2016, 1, 15)
SET IDENTITY_INSERT [dbo].[Ardoa] OFF
GO
SET IDENTITY_INSERT [dbo].[Eskualdea] ON 

INSERT [dbo].[Eskualdea] ([Id], [HerrialdeaId], [Izena]) VALUES (1, 1, N'Rioja')
INSERT [dbo].[Eskualdea] ([Id], [HerrialdeaId], [Izena]) VALUES (2, 1, N'Ribera de Duero')
INSERT [dbo].[Eskualdea] ([Id], [HerrialdeaId], [Izena]) VALUES (3, 2, N'Champagne')
INSERT [dbo].[Eskualdea] ([Id], [HerrialdeaId], [Izena]) VALUES (4, 2, N'Borgoña')
INSERT [dbo].[Eskualdea] ([Id], [HerrialdeaId], [Izena]) VALUES (5, 3, N'Lower Hunter Valley')
INSERT [dbo].[Eskualdea] ([Id], [HerrialdeaId], [Izena]) VALUES (6, 4, N'Mendocino')
INSERT [dbo].[Eskualdea] ([Id], [HerrialdeaId], [Izena]) VALUES (7, 5, N'Sajonia')
SET IDENTITY_INSERT [dbo].[Eskualdea] OFF
GO
SET IDENTITY_INSERT [dbo].[Herrialdea] ON 

INSERT [dbo].[Herrialdea] ([Id], [Izena]) VALUES (1, N'España')
INSERT [dbo].[Herrialdea] ([Id], [Izena]) VALUES (2, N'Francia')
INSERT [dbo].[Herrialdea] ([Id], [Izena]) VALUES (3, N'Australia')
INSERT [dbo].[Herrialdea] ([Id], [Izena]) VALUES (4, N'USA')
INSERT [dbo].[Herrialdea] ([Id], [Izena]) VALUES (5, N'Alemania')
SET IDENTITY_INSERT [dbo].[Herrialdea] OFF
GO
SET IDENTITY_INSERT [dbo].[Mota] ON 

INSERT [dbo].[Mota] ([Id], [Izena]) VALUES (1, N'Zuria')
INSERT [dbo].[Mota] ([Id], [Izena]) VALUES (2, N'Beltza')
INSERT [dbo].[Mota] ([Id], [Izena]) VALUES (3, N'Gorria')
INSERT [dbo].[Mota] ([Id], [Izena]) VALUES (4, N'Gozoa')
INSERT [dbo].[Mota] ([Id], [Izena]) VALUES (5, N'Aparduna')
SET IDENTITY_INSERT [dbo].[Mota] OFF
GO
SET IDENTITY_INSERT [dbo].[Upeltegia] ON 

INSERT [dbo].[Upeltegia] ([Id], [EskualdeaId], [Izena]) VALUES (1, 1, N'Remelluri')
INSERT [dbo].[Upeltegia] ([Id], [EskualdeaId], [Izena]) VALUES (2, 1, N'Luis Cañas')
INSERT [dbo].[Upeltegia] ([Id], [EskualdeaId], [Izena]) VALUES (3, 2, N'Pesquera')
INSERT [dbo].[Upeltegia] ([Id], [EskualdeaId], [Izena]) VALUES (4, 3, N'Veuve clicquot')
INSERT [dbo].[Upeltegia] ([Id], [EskualdeaId], [Izena]) VALUES (5, 4, N'Chablis')
INSERT [dbo].[Upeltegia] ([Id], [EskualdeaId], [Izena]) VALUES (6, 5, N'Audrey Wilkinson')
INSERT [dbo].[Upeltegia] ([Id], [EskualdeaId], [Izena]) VALUES (7, 6, N'Pacific Star')
INSERT [dbo].[Upeltegia] ([Id], [EskualdeaId], [Izena]) VALUES (8, 7, N'Hoflosnitz')
SET IDENTITY_INSERT [dbo].[Upeltegia] OFF
GO
ALTER TABLE [dbo].[Ardoa]  WITH CHECK ADD  CONSTRAINT [FK_Ardoa_Mota_MotaId] FOREIGN KEY([MotaId])
REFERENCES [dbo].[Mota] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ardoa] CHECK CONSTRAINT [FK_Ardoa_Mota_MotaId]
GO
ALTER TABLE [dbo].[Ardoa]  WITH CHECK ADD  CONSTRAINT [FK_Ardoa_Upeltegi_UpeltegiId] FOREIGN KEY([UpeltegiaId])
REFERENCES [dbo].[Upeltegia] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ardoa] CHECK CONSTRAINT [FK_Ardoa_Upeltegi_UpeltegiId]
GO
ALTER TABLE [dbo].[Eskualdea]  WITH CHECK ADD  CONSTRAINT [FK_Eskualde_Herrialde_HerrialdeId] FOREIGN KEY([HerrialdeaId])
REFERENCES [dbo].[Herrialdea] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Eskualdea] CHECK CONSTRAINT [FK_Eskualde_Herrialde_HerrialdeId]
GO
ALTER TABLE [dbo].[Upeltegia]  WITH CHECK ADD  CONSTRAINT [FK_Upeltegi_Eskualde_EskualdeId] FOREIGN KEY([EskualdeaId])
REFERENCES [dbo].[Eskualdea] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Upeltegia] CHECK CONSTRAINT [FK_Upeltegi_Eskualde_EskualdeId]
GO