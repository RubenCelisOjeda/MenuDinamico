USE [DB_MENU_DINAMICO]
GO
/****** Object:  Table [dbo].[SMAN_MENU]    Script Date: 22/08/2022 01:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMAN_MENU](
	[IdMenu] [int] IDENTITY(1,1) NOT NULL,
	[ParenIdMenu] [int] NULL,
	[TitleMenu] [varchar](max) NULL,
	[TitlePagina] [varchar](max) NULL,
	[DescripcionMenu] [varchar](max) NULL,
	[UrlMenu] [varchar](max) NULL,
	[TooltipMenu] [varchar](max) NULL,
	[OrderMenu] [int] NULL,
	[ActiveMenu] [bit] NULL,
	[DeleteMenu] [bit] NULL,
	[DateCreate] [datetime] NULL,
	[UsrAdded] [varchar](100) NULL,
	[UsrLastUpdate] [varchar](100) NULL,
	[UsrDelete] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMAN_MENU_ACCESO]    Script Date: 22/08/2022 01:33:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMAN_MENU_ACCESO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMenu] [int] NULL,
	[RolUsuario] [varchar](100) NOT NULL,
	[IdUsuario] [int] NOT NULL,
	[OrderMenu] [int] NOT NULL,
	[ActivoMenu] [int] NOT NULL,
	[DeleteMenu] [int] NOT NULL,
	[DateCreate] [datetime] NULL,
	[DateUpdate] [datetime] NULL,
	[DateDelete] [datetime] NULL,
	[UserAdded] [varchar](100) NULL,
	[UserLastUpdate] [varchar](100) NULL,
	[UserDelete] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SMAN_MENU] ON 

INSERT [dbo].[SMAN_MENU] ([IdMenu], [ParenIdMenu], [TitleMenu], [TitlePagina], [DescripcionMenu], [UrlMenu], [TooltipMenu], [OrderMenu], [ActiveMenu], [DeleteMenu], [DateCreate], [UsrAdded], [UsrLastUpdate], [UsrDelete]) VALUES (1, 0, N'Reportes', N'Reportes', N'Modulo de Reportes', N'frmReportes', N'Modulo Reportes', 1, 1, 0, CAST(N'2022-08-13T00:18:07.337' AS DateTime), N'sa', N'Ago 13 2022 12:18AM', N'')
INSERT [dbo].[SMAN_MENU] ([IdMenu], [ParenIdMenu], [TitleMenu], [TitlePagina], [DescripcionMenu], [UrlMenu], [TooltipMenu], [OrderMenu], [ActiveMenu], [DeleteMenu], [DateCreate], [UsrAdded], [UsrLastUpdate], [UsrDelete]) VALUES (2, 0, N'Consultas', N'Consultas', N'Modulo de consultas', N'frmConsultas', N'Modulo de Consultas', 2, 1, 0, CAST(N'2022-08-13T00:18:07.337' AS DateTime), N'sa', N'Ago 13 2022 12:18AM', NULL)
INSERT [dbo].[SMAN_MENU] ([IdMenu], [ParenIdMenu], [TitleMenu], [TitlePagina], [DescripcionMenu], [UrlMenu], [TooltipMenu], [OrderMenu], [ActiveMenu], [DeleteMenu], [DateCreate], [UsrAdded], [UsrLastUpdate], [UsrDelete]) VALUES (3, 0, N'Facturacion', N'Facturacion', N'Modulo de facturacion', N'frmFacturacion', N'Modulo de Facturacion', 3, 1, 0, CAST(N'2022-08-13T00:18:07.337' AS DateTime), N'sa', N'Ago 13 2022 12:18AM', NULL)
INSERT [dbo].[SMAN_MENU] ([IdMenu], [ParenIdMenu], [TitleMenu], [TitlePagina], [DescripcionMenu], [UrlMenu], [TooltipMenu], [OrderMenu], [ActiveMenu], [DeleteMenu], [DateCreate], [UsrAdded], [UsrLastUpdate], [UsrDelete]) VALUES (4, 1, N'Reportes 1', N'Reportes 1', N'Reportes 1', N'frmReportes1', N'Modulo de reportes 1', 1, 1, 0, CAST(N'2022-08-13T00:18:07.337' AS DateTime), N'sa', N'Ago 13 2022 12:18AM', NULL)
INSERT [dbo].[SMAN_MENU] ([IdMenu], [ParenIdMenu], [TitleMenu], [TitlePagina], [DescripcionMenu], [UrlMenu], [TooltipMenu], [OrderMenu], [ActiveMenu], [DeleteMenu], [DateCreate], [UsrAdded], [UsrLastUpdate], [UsrDelete]) VALUES (5, 4, N'Reportes 1.1', N'Reportes 1.1', N'Reportes 1.1', N'frmReportes1.1', N'Modulo de reportes 1.1', 1, 1, 0, CAST(N'2022-08-13T00:18:07.337' AS DateTime), N'sa', N'Ago 13 2022 12:18AM', NULL)
SET IDENTITY_INSERT [dbo].[SMAN_MENU] OFF
GO
SET IDENTITY_INSERT [dbo].[SMAN_MENU_ACCESO] ON 

INSERT [dbo].[SMAN_MENU_ACCESO] ([Id], [IdMenu], [RolUsuario], [IdUsuario], [OrderMenu], [ActivoMenu], [DeleteMenu], [DateCreate], [DateUpdate], [DateDelete], [UserAdded], [UserLastUpdate], [UserDelete]) VALUES (1, 1, N'Administrador', 1, 1, 1, 0, CAST(N'2022-08-13T00:18:07.343' AS DateTime), CAST(N'2022-08-13T00:18:07.343' AS DateTime), NULL, N'sa', N'sa', N'')
INSERT [dbo].[SMAN_MENU_ACCESO] ([Id], [IdMenu], [RolUsuario], [IdUsuario], [OrderMenu], [ActivoMenu], [DeleteMenu], [DateCreate], [DateUpdate], [DateDelete], [UserAdded], [UserLastUpdate], [UserDelete]) VALUES (5, 2, N'Administrador', 1, 2, 1, 0, CAST(N'2022-08-13T00:18:07.343' AS DateTime), CAST(N'2022-08-13T00:18:07.343' AS DateTime), NULL, N'sa', N'sa', NULL)
INSERT [dbo].[SMAN_MENU_ACCESO] ([Id], [IdMenu], [RolUsuario], [IdUsuario], [OrderMenu], [ActivoMenu], [DeleteMenu], [DateCreate], [DateUpdate], [DateDelete], [UserAdded], [UserLastUpdate], [UserDelete]) VALUES (6, 3, N'Administrador', 1, 3, 1, 0, CAST(N'2022-08-13T00:18:07.343' AS DateTime), CAST(N'2022-08-13T00:18:07.343' AS DateTime), NULL, N'sa', N'sa', NULL)
INSERT [dbo].[SMAN_MENU_ACCESO] ([Id], [IdMenu], [RolUsuario], [IdUsuario], [OrderMenu], [ActivoMenu], [DeleteMenu], [DateCreate], [DateUpdate], [DateDelete], [UserAdded], [UserLastUpdate], [UserDelete]) VALUES (7, 4, N'Administrador', 1, 1, 1, 0, CAST(N'2022-08-13T00:18:07.343' AS DateTime), CAST(N'2022-08-13T00:18:07.343' AS DateTime), NULL, N'sa', N'sa', NULL)
INSERT [dbo].[SMAN_MENU_ACCESO] ([Id], [IdMenu], [RolUsuario], [IdUsuario], [OrderMenu], [ActivoMenu], [DeleteMenu], [DateCreate], [DateUpdate], [DateDelete], [UserAdded], [UserLastUpdate], [UserDelete]) VALUES (8, 5, N'Administrador', 1, 1, 1, 0, CAST(N'2022-08-13T00:18:07.343' AS DateTime), CAST(N'2022-08-13T00:18:07.343' AS DateTime), NULL, N'sa', N'sa', NULL)
SET IDENTITY_INSERT [dbo].[SMAN_MENU_ACCESO] OFF
GO
