USE [TPFinal - Prog]
GO
/****** Object:  Table [dbo].[Negocio]    Script Date: 8/11/2023 08:16:31 ******/
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
/****** Object:  Table [dbo].[Personal]    Script Date: 8/11/2023 08:16:31 ******/
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
 CONSTRAINT [PK_Personal] PRIMARY KEY CLUSTERED 
(
	[IdPersonal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Piercing]    Script Date: 8/11/2023 08:16:31 ******/
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
 CONSTRAINT [PK_Piercing] PRIMARY KEY CLUSTERED 
(
	[IdPiercing] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservas]    Script Date: 8/11/2023 08:16:31 ******/
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
INSERT [dbo].[Negocio] ([IdNegocio], [Nombre], [Horarios], [Direccion], [Foto], [Telefono], [Mapa]) VALUES (1, N'Golden ink', N'13 a 20', N'Gurruchaga 1831', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5CFUTtk9atQsvBsCAj0joVMZ_PvrPWlA2NdwQilbN7RWGHXQD8He3TLA80GGa8ujxsY0&usqp=CAU', 1160766554, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.643471918546!2d-58.42941162348318!3d-34.58788677296004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcb5832d7d9acb%3A0xc48e49928d88609c!2sGolden%20Ink%20Tattoo%20and%20Piercing!5e0!3m2!1ses!2sar!4v1698242785410!5m2!1ses!2sar" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>')
INSERT [dbo].[Negocio] ([IdNegocio], [Nombre], [Horarios], [Direccion], [Foto], [Telefono], [Mapa]) VALUES (2, N'Mondo Bizarro', N'12 a 19', N'Melincué 3212', N'https://i.pinimg.com/736x/3b/c0/89/3bc089bffd16ffb88a02ee85c68b0b2a.jpg', 1164534312, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.03856980278!2d-58.499130110437605!3d-34.60318618772455!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcb63ab1413d4b%3A0x94893f8d2ebcb231!2sMONDO%20BIZARRO%20TATTOO%20STUDIO!5e0!3m2!1ses!2sar!4v1698242880752!5m2!1ses!2sar" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>')
INSERT [dbo].[Negocio] ([IdNegocio], [Nombre], [Horarios], [Direccion], [Foto], [Telefono], [Mapa]) VALUES (3, N'Motoka', N'10 a 20', N'Aráoz 348', N'https://lh3.googleusercontent.com/p/AF1QipOXTv1BjANiHGufH5P3C37Bsg5MBjFWDHdvm5NW=w1080-h608-p-k-no-v0', 112210103, N'<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3284.1617891522574!2d-58.44014962334289!3d-34.60007015730719!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x95bcca730976f931%3A0xf0e6aa4614db300e!2sMotoka%20Tattoo%20y%20barber!5e0!3m2!1ses!2sar!4v1698243012846!5m2!1ses!2sar" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>')
GO
INSERT [dbo].[Personal] ([IdPersonal], [IdNegocio], [Nombre], [Edad], [Telefono], [Genero]) VALUES (1, 2, N'Carlos', N'43', 1123242526, N'Masculino')
INSERT [dbo].[Personal] ([IdPersonal], [IdNegocio], [Nombre], [Edad], [Telefono], [Genero]) VALUES (2, 1, N'Paula', N'22', 1134564889, N'Femenino')
INSERT [dbo].[Personal] ([IdPersonal], [IdNegocio], [Nombre], [Edad], [Telefono], [Genero]) VALUES (3, 1, N'Maria', N'20', 1155667788, N'Femenino')
INSERT [dbo].[Personal] ([IdPersonal], [IdNegocio], [Nombre], [Edad], [Telefono], [Genero]) VALUES (4, 3, N'Ariel', N'31', 1109877665, N'No binario')
GO
INSERT [dbo].[Piercing] ([IdPiercing], [Precio], [Material], [Color], [Foto], [Nombre]) VALUES (1, 3000, N'Acero', N'Plateado', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQyL_De65NnF19faRDysEzN4V1zcPYXYi2S2A&usqp=CAU', N'Helix')
INSERT [dbo].[Piercing] ([IdPiercing], [Precio], [Material], [Color], [Foto], [Nombre]) VALUES (2, 4500, N'Titanio', N'Dorado', N'https://www.wildfawnjewellery.com/cdn/shop/products/18ct-Textured-Gold-Conch-Hoop_967x.jpg?v=1667156461', N'Conch')
INSERT [dbo].[Piercing] ([IdPiercing], [Precio], [Material], [Color], [Foto], [Nombre]) VALUES (3, 2700, N'Acero', N'Negro', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQwvU-eZi-rYqR0_IfbZqMIWLitdt7nZq5dw&usqp=CAU', N'Lobulo')
INSERT [dbo].[Piercing] ([IdPiercing], [Precio], [Material], [Color], [Foto], [Nombre]) VALUES (4, 5000, N'Titanio', N'Tornasolado', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgsnN8KQRmwje8SGwZe2j_Rfs9jeQNBE4Rp8iqffveepEWVnrqTkpd7ynOCSSFzPjPGL4&usqp=CAU', N'Septum')
INSERT [dbo].[Piercing] ([IdPiercing], [Precio], [Material], [Color], [Foto], [Nombre]) VALUES (5, 5800, N'Titanio', N'Plateado', N'https://www.steelofdoom.com/wp-content/uploads/2021/07/piercing-ombligo-barcelona-02.jpg', N'Navel')
GO
SET IDENTITY_INSERT [dbo].[Reservas] ON 

INSERT [dbo].[Reservas] ([IdReserva], [Nombre], [Apellido], [Mail], [Edad], [IdPiercing], [IdNegocio], [Fecha]) VALUES (1, N'maui', N'kupet', N'jmash@', 16, 1, 1, CAST(N'2023-02-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Reservas] ([IdReserva], [Nombre], [Apellido], [Mail], [Edad], [IdPiercing], [IdNegocio], [Fecha]) VALUES (2, N'maui', N'kupet', N'jmash@', 16, 3, 1, CAST(N'2023-11-24T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Reservas] OFF
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
/****** Object:  StoredProcedure [dbo].[SP_EliminarReserva]    Script Date: 8/11/2023 08:16:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EliminarReserva]( 
	@mail varchar(MAX))
AS
BEGIN
	DELETE FROM Reservas WHERE Mail = @mail;
END
GO
