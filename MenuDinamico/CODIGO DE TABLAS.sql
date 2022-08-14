USE [SISMAN_OTISdev]
GO
/****** Object:  Table [dbo].[SMAN_MENU]    Script Date: 9/07/2022 6:31:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMAN_MENU](
	[IdMenu] [int] NULL,
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
	[UsrDelete] [varchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMAN_MENU_ACCESO]    Script Date: 9/07/2022 6:31:11 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMAN_MENU_ACCESO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdMenu] [int] NOT NULL,
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
	[UserDelete] [varchar](100) NULL
) ON [PRIMARY]
GO
