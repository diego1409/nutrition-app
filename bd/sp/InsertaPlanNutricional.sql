USE salad
GO

CREATE OR ALTER PROCEDURE InsertaPlanNutricional
	@idUsuario int,
	@carbos char(1),
	@proteinas char(1),
	@grasas char(1),
	@azucares char(1),
	@calorias int
AS
BEGIN
	INSERT INTO dbo.planNutricional
	VALUES (@idUsuario,
			GETDATE(),
			@carbos,
			@proteinas,
			@grasas,
			@azucares,
			5,
			@calorias)
END
GO