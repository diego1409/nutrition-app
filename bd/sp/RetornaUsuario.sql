USE [salad]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE OR ALTER PROCEDURE [dbo].[RetornaUsuario]
 @idUsuario int
AS
BEGIN
	SELECT tU.[idUsuario],
			tU.foto,
			tU.cedula,
			tU.genero,
			tU.fechaNac,
			tu.nombre,
			tu.apellido1,
			tu.apellido2,
			tu.direccion,
			tu.telefono1,
			tu.estatura,
			tu.peso,
			tu.proposito,
			tu.tipoUsuario
		
	FROM [dbo].[usuario] tU 
	WHERE tu.idUsuario= @idUsuario
END
