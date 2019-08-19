USE [salad]
GO
/****** Object:  StoredProcedure [dbo].[InsertaIngrediente]    Script Date: 7/26/2019 3:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE InsertaComida
	@idPlan int,
	@tiempoComida char(2),
	@idReceta int
AS
BEGIN
	INSERT INTO comida
	VALUES (@idPlan, @tiempoComida, @idReceta)
END
