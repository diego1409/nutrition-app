USE [master]
GO
/****** Object:  Database [salad]    Script Date: 7/19/2019 12:06:12 PM ******/
CREATE DATABASE [salad]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'salad', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\salad.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'salad_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\salad_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [salad].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [salad] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [salad] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [salad] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [salad] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [salad] SET ARITHABORT OFF 
GO
ALTER DATABASE [salad] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [salad] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [salad] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [salad] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [salad] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [salad] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [salad] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [salad] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [salad] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [salad] SET  ENABLE_BROKER 
GO
ALTER DATABASE [salad] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [salad] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [salad] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [salad] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [salad] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [salad] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [salad] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [salad] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [salad] SET  MULTI_USER 
GO
ALTER DATABASE [salad] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [salad] SET DB_CHAINING OFF 
GO
ALTER DATABASE [salad] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [salad] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [salad] SET DELAYED_DURABILITY = DISABLED 
GO
USE [salad]
GO
/****** Object:  Table [dbo].[alergia]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alergia](
	[idUsuario] [int] NOT NULL,
	[idIngrediente] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comida]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comida](
	[idComida] [int] IDENTITY(1,1) NOT NULL,
	[idPlan] [int] NOT NULL,
	[tiempoComida] [char](1) NOT NULL,
	[idReceta] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idComida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[imc]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imc](
	[idIMC] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[estatura] [tinyint] NOT NULL,
	[peso] [real] NOT NULL,
	[resultado] [real] NOT NULL,
	[observaciones] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idIMC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ingrediente]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ingrediente](
	[idIngrediente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idIngrediente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ingrediente_receta]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ingrediente_receta](
	[idReceta] [int] NOT NULL,
	[idIngrediente] [int] NOT NULL,
	[cantidad] [real] NOT NULL,
	[medida] [varchar](30) NOT NULL,
	[observaciones] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicion]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicion](
	[idMedicion] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[peso] [real] NOT NULL,
	[grasa] [real] NOT NULL,
	[musculo] [real] NOT NULL,
	[agua] [real] NOT NULL,
	[hueso] [real] NOT NULL,
	[observaciones] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMedicion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[planNutricional]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[planNutricional](
	[idPlan] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[carbos] [char](1) NOT NULL,
	[proteinas] [char](1) NOT NULL,
	[grasas] [char](1) NOT NULL,
	[azucares] [char](1) NOT NULL,
	[cantComidas] [int] NOT NULL,
	[calorias] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idPlan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[receta]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[receta](
	[idReceta] [int] IDENTITY(1,1) NOT NULL,
	[foto] [image] NULL,
	[dificultad] [char](1) NOT NULL,
	[tiempo] [int] NOT NULL,
	[carbos] [real] NOT NULL,
	[proteinas] [real] NOT NULL,
	[grasas] [real] NOT NULL,
	[azucares] [real] NOT NULL,
	[calorias] [int] NULL,
	[pasos] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED 
(
	[idReceta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[foto] [image] NULL,
	[cedula] [varchar](20) NOT NULL,
	[genero] [char](1) NOT NULL,
	[fechaNac] [date] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido1] [varchar](50) NOT NULL,
	[apellido2] [varchar](50) NULL,
	[direccion] [varchar](100) NOT NULL,
	[telefono1] [varchar](10) NOT NULL,
	[estatura] [tinyint] NOT NULL,
	[peso] [decimal](5, 2) NOT NULL,
	[proposito] [varchar](50) NOT NULL,
	[correo] [varchar](50) NOT NULL,
	[usuario] [varchar](20) NOT NULL,
	[contrasena] [varchar](50) NOT NULL,
	[tipoUsuario] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 

INSERT [dbo].[usuario] ([idUsuario], [foto], [cedula], [genero], [fechaNac], [nombre], [apellido1], [apellido2], [direccion], [telefono1], [estatura], [peso], [proposito], [correo], [usuario], [contrasena], [tipoUsuario]) VALUES (1, NULL, N'123', N'M', CAST(N'1997-08-03' AS Date), N'Alonso', N'Perez', N'Mora', N'San Sebas', N'22272003', 185, CAST(85.00 AS Decimal(5, 2)), N'Mantener peso', N'alo@algo.com', N'leo', N'1234', N'A')
INSERT [dbo].[usuario] ([idUsuario], [foto], [cedula], [genero], [fechaNac], [nombre], [apellido1], [apellido2], [direccion], [telefono1], [estatura], [peso], [proposito], [correo], [usuario], [contrasena], [tipoUsuario]) VALUES (2, NULL, N'116820936', N'M', CAST(N'1997-03-08' AS Date), N'Leonardo ', N'Aguilar', N'Molina', N'San Sebas', N'87512416', 185, CAST(85.00 AS Decimal(5, 2)), N'Aumentar peso', N'leonardoaguil@hotmail.com', N'Update', N'1234', N'A')
SET IDENTITY_INSERT [dbo].[usuario] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__usuario__415B7BE575D6143F]    Script Date: 7/19/2019 12:06:12 PM ******/
ALTER TABLE [dbo].[usuario] ADD UNIQUE NONCLUSTERED 
(
	[cedula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[alergia]  WITH CHECK ADD FOREIGN KEY([idIngrediente])
REFERENCES [dbo].[ingrediente] ([idIngrediente])
GO
ALTER TABLE [dbo].[alergia]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[comida]  WITH CHECK ADD FOREIGN KEY([idPlan])
REFERENCES [dbo].[planNutricional] ([idPlan])
GO
ALTER TABLE [dbo].[comida]  WITH CHECK ADD FOREIGN KEY([idReceta])
REFERENCES [dbo].[receta] ([idReceta])
GO
ALTER TABLE [dbo].[imc]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[ingrediente_receta]  WITH CHECK ADD FOREIGN KEY([idIngrediente])
REFERENCES [dbo].[ingrediente] ([idIngrediente])
GO
ALTER TABLE [dbo].[ingrediente_receta]  WITH CHECK ADD FOREIGN KEY([idReceta])
REFERENCES [dbo].[receta] ([idReceta])
GO
ALTER TABLE [dbo].[medicion]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[planNutricional]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[comida]  WITH CHECK ADD CHECK  (([tiempoComida]='MN' OR [tiempoComida]='C' OR [tiempoComida]='MT' OR [tiempoComida]='A' OR [tiempoComida]='MM' OR [tiempoComida]='D'))
GO
ALTER TABLE [dbo].[planNutricional]  WITH CHECK ADD CHECK  (([azucares]='N' OR [azucares]='B' OR [azucares]='M' OR [azucares]='A'))
GO
ALTER TABLE [dbo].[planNutricional]  WITH CHECK ADD CHECK  (([carbos]='N' OR [carbos]='B' OR [carbos]='M' OR [carbos]='A'))
GO
ALTER TABLE [dbo].[planNutricional]  WITH CHECK ADD CHECK  (([grasas]='N' OR [grasas]='B' OR [grasas]='M' OR [grasas]='A'))
GO
ALTER TABLE [dbo].[planNutricional]  WITH CHECK ADD CHECK  (([proteinas]='N' OR [proteinas]='B' OR [proteinas]='M' OR [proteinas]='A'))
GO
ALTER TABLE [dbo].[receta]  WITH CHECK ADD CHECK  (([dificultad]='D' OR [dificultad]='M' OR [dificultad]='F'))
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD CHECK  (([genero]='O' OR [genero]='F' OR [genero]='M'))
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD  CONSTRAINT [CK__usuario__tipoUsu__5535A963] CHECK  (([tipoUsuario]='A' OR [tipoUsuario]='B' OR [tipoUsuario]='C'))
GO
ALTER TABLE [dbo].[usuario] CHECK CONSTRAINT [CK__usuario__tipoUsu__5535A963]
GO
/****** Object:  StoredProcedure [dbo].[DarDeBajaUsuario]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[DarDeBajaUsuario]
	--@foto image NULL,
	@cedula varchar(20)
AS
BEGIN
	
	Update usuario
		set tipoUsuario='B'
		WHERE cedula=@cedula

END
GO
/****** Object:  StoredProcedure [dbo].[InsertaUsuario]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE   PROCEDURE [dbo].[InsertaUsuario]
	@cedula varchar(20),
	@genero char(1),
	@fechaNac date,
	@nombre varchar(50),
	@apellido1 varchar(50),
	@apellido2 varchar(50) NULL,
	@direccion varchar(100),
	@telefono1 varchar (10),
	@estatura tinyint,
	@peso real,
	@proposito varchar(50),
	@correo varchar(50),
	@usuario varchar(20),
	@contrasena varchar(50),
	@tipoUsuario char(1)
AS
BEGIN
	Insert into usuario
	Values (NULL,@cedula,@genero,@fechaNac,@nombre,@apellido1,@apellido2,@direccion,@telefono1,@estatura,@peso,@proposito,@correo,@usuario,@contrasena,@tipoUsuario)
END
GO
/****** Object:  StoredProcedure [dbo].[ListaUsuarios]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[ListaUsuarios]
as
SELECT * from usuario

GO
/****** Object:  StoredProcedure [dbo].[ModificaUsuario]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   PROCEDURE [dbo].[ModificaUsuario]
	--@foto image NULL,
	@cedula varchar(20),
	@genero char(1),
	@fechaNac date,
	@nombre varchar(50),
	@apellido1 varchar(50),
	@apellido2 varchar(50) NULL,
	@direccion varchar(100),
	@telefono1 varchar (10),
	@estatura tinyint,
	@peso real,
	@proposito varchar(50),
	@correo varchar(50),
	@usuario varchar(20),
	@contrasena varchar(50) NULL,
	@tipoUsuario char(1)
AS
BEGIN
	
	Update usuario
		set genero=@genero, fechaNac=@fechaNac, nombre=@nombre, apellido1=@apellido1, 
		apellido2=@apellido2, direccion=@direccion, telefono1=@telefono1, estatura=@estatura,
		peso=@peso,proposito=@proposito, correo=@correo, usuario=@usuario, contrasena=@contrasena, tipoUsuario=@tipoUsuario
		WHERE cedula=@cedula

	if @contrasena IS NOT NULL
	BEGIN
		Update usuario
		set contrasena=@contrasena
		WHERE cedula=@cedula
	END
END
GO
/****** Object:  StoredProcedure [dbo].[RetornaUsuario]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[RetornaUsuario]
	@cedula varchar(20)
AS
BEGIN
	Select * from usuario where cedula=@cedula
END
GO
/****** Object:  StoredProcedure [dbo].[RetornaUsuarioPass]    Script Date: 7/19/2019 12:06:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[RetornaUsuarioPass]
@usuario [nvarchar](20),
@contrasena [nvarchar](50)
AS	
SELECT [idUsuario],[usuario],[contrasena]
FROM [dbo].[usuario]
WHERE   [usuario]=@usuario and [contrasena]=@contrasena

GO
USE [master]
GO
ALTER DATABASE [salad] SET  READ_WRITE 
GO
