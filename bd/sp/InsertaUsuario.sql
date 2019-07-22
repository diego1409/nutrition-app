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
	@cedula varchar(20),
	@genero char(1),
	@fechaNac date,
	@nombre varchar(50),
	@apellido1 varchar(50),
	@apellido2 varchar(50) NULL,
	@direccion varchar(100),
	@telefono1 varchar (10),
	@estatura tinyint,
	@peso decimal(5,2),
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