USE [salad]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE OR ALTER PROCEDURE [dbo].[RetornaAlergias]
    @idUsuario int
AS
BEGIN
    SELECT 
        *
    FROM [dbo].[alergia]
    WHERE [idUsuario] = @idUsuario
END
