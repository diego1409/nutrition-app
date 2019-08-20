USE [salad]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE dbo.spRetornaTodosLosClientes
AS
BEGIN
	SELECT 
		[cedula],
		[nombre],
		[apellido1],
		[apellido2],
		[genero],
		[telefono1],
		[correo],
		[fechaNac],
		[estatura],
		[peso],
		[proposito],
		[usuario]
	FROM [dbo].[usuario] WHERE [tipoUsuario]= 'C'
END