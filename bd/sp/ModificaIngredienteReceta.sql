USE [salad]
GO
/****** Object:  StoredProcedure [dbo].[ModificaReceta]    Script Date: 8/16/2019 11:59:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[ModificaIngredienteReceta]
	@idIngrediente int,
	@idReceta int,
	@cantidad decimal (5,2),
	@medida varchar(30),
	@observaciones varchar(100)
AS
BEGIN
	
	Update ingrediente_receta
		set cantidad=@cantidad, medida=@medida, observaciones=@observaciones
		WHERE idReceta=@idReceta and idIngrediente=@idIngrediente
END
