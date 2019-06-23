USE [salad]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[RetornaUsuarioPass]
@usuario [nvarchar](20),
@contrasena [nvarchar](50)
AS	
SELECT [idUsuario],[usuario],[contrasena],cedula,tipoUsuario
FROM [dbo].[usuario]
WHERE   [usuario]=@usuario and [contrasena]=@contrasena
