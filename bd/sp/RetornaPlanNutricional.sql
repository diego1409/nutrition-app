USE [salad]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE OR ALTER PROCEDURE [dbo].[RetornaPlanNutricional]
	@idPlan int
AS
BEGIN
	SELECT *
	FROM planNutricional
	WHERE idPlan = @idPlan
END
