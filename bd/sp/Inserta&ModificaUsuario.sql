USE [salad]
GO

/****** Object:  StoredProcedure [dbo].[InsertaUsuario]    Script Date: 6/26/2019 3:33:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[InsertaUsuario]
	@foto image NULL,
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
	Values (@foto,@cedula,@genero,@fechaNac,@nombre,@apellido1,@apellido2,@direccion,@telefono1,@estatura,@peso,@proposito,@correo,@usuario,@contrasena,@tipoUsuario)
END
GO

CREATE OR ALTER PROCEDURE [dbo].[ModificaUsuario]
	@id_usuario int,
	@foto image NULL,
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
	Update usuario
	set foto=@foto, cedula=@cedula, genero=@genero, fechaNac=@fechaNac, nombre=@nombre, apellido1=@apellido1, 
	apellido2=@apellido2, direccion=@direccion, telefono1=@telefono1, estatura=@estatura,
	peso=@peso,proposito=@proposito, correo=@correo, usuario=@usuario, contrasena=@contrasena, tipoUsuario=@tipoUsuario
	WHERE idUsuario=@id_usuario
END
GO