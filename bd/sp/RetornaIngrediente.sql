USE [salad]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE OR ALTER PROCEDURE [dbo].[RetornaIngredientes]
AS
BEGIN
    SELECT 
        *
    FROM [dbo].[ingrediente]
END
