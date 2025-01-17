USE [TPFinal - Prog]
GO
/****** Object:  Table [dbo].[Negocio]    Script Date: 12/4/2024 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Negocio](
	[IdNegocio] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Horarios] [varchar](max) NOT NULL,
	[Direccion] [varchar](max) NOT NULL,
	[Foto] [varchar](max) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Mapa] [varchar](max) NULL,
 CONSTRAINT [PK_Negocio] PRIMARY KEY CLUSTERED 
(
	[IdNegocio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personal]    Script Date: 12/4/2024 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personal](
	[IdPersonal] [int] NOT NULL,
	[IdNegocio] [int] NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Edad] [varchar](max) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Genero] [varchar](max) NOT NULL,
	[Foto] [varchar](max) NULL,
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[IdPersonal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Piercing]    Script Date: 12/4/2024 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Piercing](
	[IdPiercing] [int] NOT NULL,
	[Precio] [int] NOT NULL,
	[Material] [varchar](max) NOT NULL,
	[Color] [varchar](max) NOT NULL,
	[Foto] [varchar](max) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Likes] [int] NULL,
 CONSTRAINT [PK_Piercing] PRIMARY KEY CLUSTERED 
(
	[IdPiercing] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 12/4/2024 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservas](
	[IdReserva] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NOT NULL,
	[Apellido] [varchar](max) NOT NULL,
	[Mail] [varchar](max) NOT NULL,
	[Edad] [int] NOT NULL,
	[IdPiercing] [int] NOT NULL,
	[IdNegocio] [int] NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_Reservas] PRIMARY KEY CLUSTERED 
(
	[IdReserva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Personal]  WITH CHECK ADD  CONSTRAINT [FK_Personal_Negocio] FOREIGN KEY([IdNegocio])
REFERENCES [dbo].[Negocio] ([IdNegocio])
GO
ALTER TABLE [dbo].[Personal] CHECK CONSTRAINT [FK_Personal_Negocio]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Negocio] FOREIGN KEY([IdNegocio])
REFERENCES [dbo].[Negocio] ([IdNegocio])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Negocio]
GO
ALTER TABLE [dbo].[Reservas]  WITH CHECK ADD  CONSTRAINT [FK_Reservas_Piercing] FOREIGN KEY([IdPiercing])
REFERENCES [dbo].[Piercing] ([IdPiercing])
GO
ALTER TABLE [dbo].[Reservas] CHECK CONSTRAINT [FK_Reservas_Piercing]
GO
/****** Object:  StoredProcedure [dbo].[SP_EliminarReserva]    Script Date: 12/4/2024 11:24:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EliminarReserva]( 
	@IdReserva int)
AS
BEGIN
	DELETE FROM Reservas WHERE IdReserva = @IdReserva;
END
GO
