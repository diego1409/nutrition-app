USE [salad]
GO
/****** Object:  StoredProcedure [dbo].[InsertaIngrediente]    Script Date: 7/26/2019 3:43:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE InsertaAlergia
	@idUsuario int,
	@idIngrediente int

AS
BEGIN
	-- Si la alergia no se habia insertado antes, se procede a insertar 
	IF ((SELECT count(*) FROM alergia where idUsuario = @idUsuario AND idIngrediente = @idIngrediente) = 0)
	BEGIN
		INSERT INTO alergia
		VALUES (@idUsuario, @idIngrediente)
	END
END
