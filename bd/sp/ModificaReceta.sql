USE [salad]
GO
/****** Object:  StoredProcedure [dbo].[ModificaUsuario]    Script Date: 8/16/2019 10:33:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[ModificaReceta]
	--No se incluye la foto
	@idReceta int,
	@nombre varchar(100),
	@dificultad char(1),
	@tiempo int,
	@tiempoComida char(2),
	@carbos decimal (5,2),
	@proteinas decimal (5,2),
	@grasas decimal (5,2),
	@azucares decimal (5,2),
	@calorias int,
	@pasos varchar(8000)
AS
BEGIN
	
	Update receta
		set nombre=@nombre, dificultad=@dificultad, tiempo=@tiempo, tiempoComida=@tiempoComida,
		carbos=@carbos, proteinas=@proteinas, grasas=@grasas, azucares=@azucares, calorias=@calorias, pasos=@pasos
		WHERE idReceta=@idReceta
END
