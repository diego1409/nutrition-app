USE [salad]
GO
/****** Object:  StoredProcedure [dbo].[InsertaReceta]    Script Date: 8/5/2019 10:46:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE OR ALTER PROCEDURE [dbo].[InsertaIngredienteReceta]
	@idIngrediente int,
	@cantidad decimal (5,2),
	@medida varchar(30),
	@observaciones varchar(100)

AS
BEGIN
	INSERT INTO ingrediente_receta
	VALUES ((Select max(idReceta) from receta),@idIngrediente,@cantidad,@medida,@observaciones)
END
