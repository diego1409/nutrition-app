USE [salad]
GO
/****** Object:  StoredProcedure [dbo].[InsertaIngrediente]    Script Date: 7/26/2019 3:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE InsertaComidasPlan
	@idPlan int,
	@caloriasComida decimal (5,2),
	@carbos decimal (5,2),
	@proteinas decimal (5,2),
	@grasas decimal (5,2),
	@azucares decimal (5,2)
AS
DECLARE
	@tiempoComida char(2),
	@idReceta int,
	@idUsuario int
BEGIN
	-- Obtener idUsuario para obtener alergias
	SET @idUsuario = (SELECT idUsuario FROM planNutricional WHERE idPlan = @idPlan)
	-- Desayuno
    SET @tiempoComida = 'D'
    SET @idReceta = (SELECT idReceta FROM receta WHERE (calorias <= @caloriasComida AND tiempoComida = @tiempoComida) AND ((carbos <= @carbos) AND (azucares <= @azucares)) AND ((proteinas <= @proteinas) OR (grasas <= @grasas)))
    -- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con las calorias y el tiempo
	IF (@idReceta IS NULL)
		SET @idReceta = (SELECT TOP 1 idReceta FROM receta WHERE (calorias <= @caloriasComida AND tiempoComida = @tiempoComida) ORDER BY NEWID())
	-- Si no se encuentran alergias en la receta encontrada, se inserta
	IF ((SELECT count(*) FROM ingrediente_receta WHERE idReceta = @idReceta AND idIngrediente IN (SELECT idIngrediente FROM alergia WHERE idUsuario = @idUsuario)) = 0)
		EXEC InsertaComida @idPlan, @tiempoComida, @idReceta

    -- Merienda Manana
    SET @tiempoComida = 'MM'
    SET @idReceta = (SELECT idReceta FROM receta WHERE (calorias <= @caloriasComida AND tiempoComida = @tiempoComida) AND ((carbos <= @carbos) AND (azucares <= @azucares)) AND ((proteinas <= @proteinas) OR (grasas <= @grasas)))
    EXEC InsertaComida @idPlan, @tiempoComida, @idReceta

    -- Almuerzo
    SET @tiempoComida = 'A'
    SET @idReceta = (SELECT idReceta FROM receta WHERE (calorias <= @caloriasComida AND tiempoComida = @tiempoComida) AND ((carbos <= @carbos) AND (azucares <= @azucares)) AND ((proteinas <= @proteinas) OR (grasas <= @grasas)))
    EXEC InsertaComida @idPlan, @tiempoComida, @idReceta

    -- Merienda Tarde
    SET @tiempoComida = 'MT'
    SET @idReceta = (SELECT idReceta FROM receta WHERE (calorias <= @caloriasComida AND tiempoComida = @tiempoComida) AND ((carbos <= @carbos) AND (azucares <= @azucares)) AND ((proteinas <= @proteinas) OR (grasas <= @grasas)))
    EXEC InsertaComida @idPlan, @tiempoComida, @idReceta

    -- Cena
    SET @tiempoComida = 'C'
    SET @idReceta = (SELECT idReceta FROM receta WHERE (calorias <= @caloriasComida AND tiempoComida = @tiempoComida) AND ((carbos <= @carbos) AND (azucares <= @azucares)) AND ((proteinas <= @proteinas) OR (grasas <= @grasas)))
    EXEC InsertaComida @idPlan, @tiempoComida, @idReceta

END
