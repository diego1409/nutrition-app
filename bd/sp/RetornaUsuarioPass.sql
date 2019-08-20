USE [salad]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE [dbo].[RetornaUsuarioPass]
    @usuario [nvarchar](20),
    @contrasena [nvarchar](50)
AS	
BEGIN
    SELECT [idUsuario],[usuario],[contrasena],cedula,tipoUsuario
    FROM [dbo].[usuario]
    WHERE   [usuario]=@usuario and [contrasena]=@contrasena
END
