USE salad
GO
CREATE   PROCEDURE [dbo].[DarDeBajaUsuario]
	--@foto image NULL,
	@cedula varchar(20)
AS
BEGIN
	
	Update usuario
		set tipoUsuario='B'
		WHERE cedula=@cedula

END
GO