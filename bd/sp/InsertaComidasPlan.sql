USE [salad]
GO
/****** Object:  StoredProcedure [dbo].[InsertaIngrediente]    Script Date: 7/26/2019 3:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE InsertaComidasPlan
	@idUsuario int,
	@idPlan int,
	@caloriasComida decimal (5,2),
	@carbos decimal (5,2),
	@proteinas decimal (5,2),
	@grasas decimal (5,2),
	@azucares decimal (5,2)
AS
DECLARE
	@tiempoComida char(2),
	@idReceta int
BEGIN

	-- Desayuno
    SET @tiempoComida = 'D'
	SET @idReceta = -1
	-- Se inserta la receta que cumpla con las calorias, el tiempo, la cantidad de nutrientes y las alergias
    SET @idReceta = (
		SELECT TOP 1 r.idReceta 
		FROM receta r
		INNER JOIN ingrediente_receta ir
		ON r.idReceta = ir.idReceta
		WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida) 
		AND ((r.carbos <= @carbos) AND (r.azucares <= @azucares)) 
		AND ((r.proteinas <= @proteinas) OR (r.grasas <= @grasas))
		AND (ir.idIngrediente NOT IN (SELECT idIngrediente from alergia WHERE idUsuario = @idUsuario))
	)
    
	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con las calorias, el tiempo y las alergias
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			INNER JOIN ingrediente_receta ir
			ON r.idReceta = ir.idReceta
			WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida)
			AND (ir.idIngrediente NOT IN (SELECT idIngrediente from alergia WHERE idUsuario = @idUsuario))
			ORDER BY NEWID()
		)

	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con las calorias y el tiempo
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida)
			ORDER BY NEWID()
		)

	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con el tiempo
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			WHERE (r.tiempoComida = @tiempoComida)
			ORDER BY NEWID()
		)

	-- se inserta la receta encontrada
	IF (@idReceta <> -1)
		EXEC InsertaComida @idPlan, @tiempoComida, @idReceta


    -- Merienda Manana
    SET @tiempoComida = 'MM'
    SET @idReceta = -1

	-- Se inserta la receta que cumpla con las calorias, el tiempo, la cantidad de nutrientes y las alergias
    SET @idReceta = (
		SELECT TOP 1 r.idReceta 
		FROM receta r
		INNER JOIN ingrediente_receta ir
		ON r.idReceta = ir.idReceta
		WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida) 
		AND ((r.carbos <= @carbos) AND (r.azucares <= @azucares)) 
		AND ((r.proteinas <= @proteinas) OR (r.grasas <= @grasas))
		AND (ir.idIngrediente NOT IN (SELECT idIngrediente from alergia WHERE idUsuario = @idUsuario))
	)
    
	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con las calorias, el tiempo y las alergias
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			INNER JOIN ingrediente_receta ir
			ON r.idReceta = ir.idReceta
			WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida)
			AND (ir.idIngrediente NOT IN (SELECT idIngrediente from alergia WHERE idUsuario = @idUsuario))
			ORDER BY NEWID()
		)

	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con las calorias y el tiempo
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida)
			ORDER BY NEWID()
		)

	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con el tiempo
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			WHERE (r.tiempoComida = @tiempoComida)
			ORDER BY NEWID()
		)

	-- se inserta la receta encontrada
	IF (@idReceta <> -1)
		EXEC InsertaComida @idPlan, @tiempoComida, @idReceta


    -- Almuerzo
    SET @tiempoComida = 'A'
	SET @idReceta = -1
    
	-- Se inserta la receta que cumpla con las calorias, el tiempo, la cantidad de nutrientes y las alergias
    SET @idReceta = (
		SELECT TOP 1 r.idReceta 
		FROM receta r
		INNER JOIN ingrediente_receta ir
		ON r.idReceta = ir.idReceta
		WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida) 
		AND ((r.carbos <= @carbos) AND (r.azucares <= @azucares)) 
		AND ((r.proteinas <= @proteinas) OR (r.grasas <= @grasas))
		AND (ir.idIngrediente NOT IN (SELECT idIngrediente from alergia WHERE idUsuario = @idUsuario))
	)
    
	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con las calorias, el tiempo y las alergias
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			INNER JOIN ingrediente_receta ir
			ON r.idReceta = ir.idReceta
			WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida)
			AND (ir.idIngrediente NOT IN (SELECT idIngrediente from alergia WHERE idUsuario = @idUsuario))
			ORDER BY NEWID()
		)

	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con las calorias y el tiempo
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida)
			ORDER BY NEWID()
		)

	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con el tiempo
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			WHERE (r.tiempoComida = @tiempoComida)
			ORDER BY NEWID()
		)

	-- se inserta la receta encontrada
	IF (@idReceta <> -1)
		EXEC InsertaComida @idPlan, @tiempoComida, @idReceta


    -- Merienda Tarde
    SET @tiempoComida = 'MT'
    SET @idReceta = -1

	-- Se inserta la receta que cumpla con las calorias, el tiempo, la cantidad de nutrientes y las alergias
    SET @idReceta = (
		SELECT TOP 1 r.idReceta 
		FROM receta r
		INNER JOIN ingrediente_receta ir
		ON r.idReceta = ir.idReceta
		WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida) 
		AND ((r.carbos <= @carbos) AND (r.azucares <= @azucares)) 
		AND ((r.proteinas <= @proteinas) OR (r.grasas <= @grasas))
		AND (ir.idIngrediente NOT IN (SELECT idIngrediente from alergia WHERE idUsuario = @idUsuario))
	)
    
	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con las calorias, el tiempo y las alergias
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			INNER JOIN ingrediente_receta ir
			ON r.idReceta = ir.idReceta
			WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida)
			AND (ir.idIngrediente NOT IN (SELECT idIngrediente from alergia WHERE idUsuario = @idUsuario))
			ORDER BY NEWID()
		)

	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con las calorias y el tiempo
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida)
			ORDER BY NEWID()
		)

	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con el tiempo
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			WHERE (r.tiempoComida = @tiempoComida)
			ORDER BY NEWID()
		)

	-- se inserta la receta encontrada
	IF (@idReceta <> -1)
		EXEC InsertaComida @idPlan, @tiempoComida, @idReceta


    -- Cena
    SET @tiempoComida = 'C'
    SET @idReceta = -1

	-- Se inserta la receta que cumpla con las calorias, el tiempo, la cantidad de nutrientes y las alergias
    SET @idReceta = (
		SELECT TOP 1 r.idReceta 
		FROM receta r
		INNER JOIN ingrediente_receta ir
		ON r.idReceta = ir.idReceta
		WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida) 
		AND ((r.carbos <= @carbos) AND (r.azucares <= @azucares)) 
		AND ((r.proteinas <= @proteinas) OR (r.grasas <= @grasas))
		AND (ir.idIngrediente NOT IN (SELECT idIngrediente from alergia WHERE idUsuario = @idUsuario))
	)
    
	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con las calorias, el tiempo y las alergias
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			INNER JOIN ingrediente_receta ir
			ON r.idReceta = ir.idReceta
			WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida)
			AND (ir.idIngrediente NOT IN (SELECT idIngrediente from alergia WHERE idUsuario = @idUsuario))
			ORDER BY NEWID()
		)

	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con las calorias y el tiempo
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			WHERE (r.calorias <= @caloriasComida AND r.tiempoComida = @tiempoComida)
			ORDER BY NEWID()
		)

	-- Si no se encuentra un idReceta que cumpla con las caracteristicas, se usa una receta que cumpla solo con el tiempo
	IF (@idReceta = -1)
		SET @idReceta = (
			SELECT TOP 1 r.idReceta
			FROM receta r
			WHERE (r.tiempoComida = @tiempoComida)
			ORDER BY NEWID()
		)

	-- se inserta la receta encontrada
	IF (@idReceta <> -1)
		EXEC InsertaComida @idPlan, @tiempoComida, @idReceta
END
