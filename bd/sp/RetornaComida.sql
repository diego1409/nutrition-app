USE [salad]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE OR ALTER PROCEDURE [dbo].[RetornaComida]
	@idPlan int,
	@tiempoComida char(2)
AS
BEGIN
	SELECT
		r.idReceta as idReceta,
		r.nombre as nombre,
		r.dificultad as dificultad,
		r.tiempo as tiempo,
		r.tiempoComida as tiempoComida,
		r.carbos as carbos,
		r.proteinas as proteinas,
		r.grasas as grasas,
		r.azucares as azucares,
		r.calorias as calorias,
		r.pasos as pasos
	FROM comida c
	INNER JOIN receta r 
	ON c.idReceta = r.idReceta 
	WHERE c.idPlan = @idPlan
	AND c.tiempoComida = @tiempoComida
END