USE [salad]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[ModificaUsuario]
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