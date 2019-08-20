USE salad
GO

-- DarDeBajaUsuario
CREATE OR ALTER PROCEDURE [dbo].[DarDeBajaUsuario]
	--@foto image NULL,
	@cedula varchar(20)
AS
BEGIN
	
	Update usuario
		set tipoUsuario='B'
		WHERE cedula=@cedula

END

-- EliminaAlergia
CREATE OR ALTER PROCEDURE EliminaAlergia
	@idUsuario int,
	@idIngrediente int
AS
BEGIN
	-- Si la alergia se habia insertado antes, se procede a eliminar 
	IF ((SELECT count(*) FROM alergia where idUsuario = @idUsuario AND idIngrediente = @idIngrediente) <> 0)
	BEGIN
		DELETE FROM alergia
		WHERE idUsuario =  @idUsuario
		AND idIngrediente = @idIngrediente
	END
END

-- InsertaAlergia
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

-- InsertaComida
CREATE OR ALTER PROCEDURE InsertaComida
	@idPlan int,
	@tiempoComida char(2),
	@idReceta int
AS
BEGIN
	INSERT INTO comida
	VALUES (@idPlan, @tiempoComida, @idReceta)
END

-- InsertaComidasPlan
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

-- InsertaIngrediente
CREATE OR ALTER PROCEDURE InsertaIngrediente
	@nombre varchar (50)
AS
BEGIN
	INSERT INTO ingrediente
	VALUES (@nombre)
END

-- InsertaIngredienteReceta
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

-- InsertaMedicion
CREATE OR ALTER PROCEDURE [dbo].[InsertaMedicion]
	@idUsuario int,
	@peso decimal(5,2),
	@grasa decimal(5,2),
	@musculo decimal(5,2),
	@agua decimal(5,2),
	@hueso decimal(5,2),
	@observaciones varchar(100)
	
AS
BEGIN
	DECLARE @imc decimal(5,2);
	DECLARE @estatura tinyint;
	
	SET @estatura= (select estatura from usuario where idUsuario=@idUsuario);
	--Dividido por 10000 porque se divide entre 100 para pasar a metros y luego otros 100 para definirlo como porcentaje
	SET @imc = (select @peso / (select SQUARE(@estatura)/10000));

	Insert into medicion (idUsuario,peso,grasa,musculo,agua,hueso,observaciones,imc,fecha)
	Values (@idUsuario,@peso,@grasa,@musculo,@agua,@hueso,@observaciones,@imc,GETDATE());

	Update usuario set peso = @peso where idUsuario=@idUsuario

	return @imc
END

-- InsertaPasosReceta
CREATE OR ALTER PROCEDURE [dbo].[InsertaPasosReceta]
	@pasos varchar(20)
AS
BEGIN
	
	Update receta
		set pasos=@pasos
		WHERE idReceta=(Select max(idReceta) from receta)
END

-- InsertaPlanNutricional
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

-- InsertaReceta
CREATE OR ALTER PROCEDURE InsertaReceta
	@foto image NULL,
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
	INSERT INTO receta
	VALUES (@foto,@nombre,@dificultad,@tiempo,@tiempoComida,@carbos,@proteinas,@grasas,@azucares,@calorias,@pasos)
END

-- InsertaUsuario
CREATE OR ALTER PROCEDURE [dbo].[InsertaUsuario]
	@cedula varchar(20),
	@genero char(1),
	@fechaNac date,
	@nombre varchar(50),
	@apellido1 varchar(50),
	@apellido2 varchar(50) NULL,
	@direccion varchar(100),
	@telefono1 varchar (10),
	@estatura tinyint,
	@peso decimal(5,2),
	@proposito varchar(50),
	@correo varchar(50),
	@usuario varchar(20),
	@contrasena varchar(50),
	@tipoUsuario char(1)
AS
BEGIN
	Insert into usuario
	Values (NULL,@cedula,@genero,@fechaNac,@nombre,@apellido1,@apellido2,@direccion,@telefono1,@estatura,@peso,@proposito,@correo,@usuario,@contrasena,@tipoUsuario)
END

-- ListaPlanes
CREATE OR ALTER PROCEDURE [dbo].[ListaPlanes]
	@idUsuario int
AS
BEGIN
	
	SELECT
		idPlan,
		fecha,
		(CASE carbos  
			--A= Alta, M= Media, B= Baja, N= Nula
			WHEN 'A' THEN 'Alta'
			WHEN 'M' THEN 'Media'
			WHEN 'B' THEN 'Baja'
			WHEN 'N' THEN 'Nula'
			ELSE 'Nula'  
		END) AS carbos,
		(CASE proteinas  
			--A= Alta, M= Media, B= Baja, N= Nula
			WHEN 'A' THEN 'Alta'
			WHEN 'M' THEN 'Media'
			WHEN 'B' THEN 'Baja'
			WHEN 'N' THEN 'Nula'
			ELSE 'Nula'  
		END) AS proteinas,
		(CASE grasas  
			--A= Alta, M= Media, B= Baja, N= Nula
			WHEN 'A' THEN 'Alta'
			WHEN 'M' THEN 'Media'
			WHEN 'B' THEN 'Baja'
			WHEN 'N' THEN 'Nula'
			ELSE 'Nula'  
		END) AS grasas,
		(CASE azucares  
			--A= Alta, M= Media, B= Baja, N= Nula
			WHEN 'A' THEN 'Alta'
			WHEN 'M' THEN 'Media'
			WHEN 'B' THEN 'Baja'
			WHEN 'N' THEN 'Nula'
			ELSE 'Nula'  
		END) AS azucares,
		calorias
	FROM planNutricional
	WHERE idUsuario = @idUsuario

END

-- ListaRecetas
CREATE OR ALTER PROCEDURE [dbo].[ListaRecetas]
AS
BEGIN
    SELECT
        idReceta,
        nombre,
        tiempo,
        (CASE tiempoComida   
            WHEN 'D' THEN 'Desayuno'
            WHEN 'MM' THEN 'Merienda Mañana'
            WHEN 'A' THEN 'Almuerzo'
            WHEN 'MT' THEN 'Merienda Tarde'
            WHEN 'C' THEN 'Cena'
            WHEN 'MN' THEN 'Merienda Noche'
            ELSE 'Comida'  
        END) AS tiempoComida
    FROM receta
END

-- ListaUsuarios
CREATE OR ALTER PROCEDURE [dbo].[ListaUsuarios]
	@idUsuario int
AS
BEGIN
	SELECT * 
	FROM usuario
	WHERE tipoUsuario <> 'B'
	AND idUsuario <> @idUsuario
END

-- ModificaIngredienteReceta
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

-- ModificaReceta
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

-- ModificaUsuario
CREATE OR ALTER PROCEDURE [dbo].[ModificaUsuario]
	--@foto image NULL,
	@cedula varchar(20),
	@genero char(1),
	@fechaNac date,
	@nombre varchar(50),
	@apellido1 varchar(50),
	@apellido2 varchar(50) NULL,
	@direccion varchar(100),
	@telefono1 varchar (10),
	@estatura tinyint,
	@peso real,
	@proposito varchar(50),
	@correo varchar(50),
	@usuario varchar(20),
	@contrasena varchar(50) NULL,
	@tipoUsuario char(1)
AS
BEGIN
	
	Update usuario
		set genero=@genero, fechaNac=@fechaNac, nombre=@nombre, apellido1=@apellido1, 
		apellido2=@apellido2, direccion=@direccion, telefono1=@telefono1, estatura=@estatura,
		peso=@peso,proposito=@proposito, correo=@correo, usuario=@usuario, contrasena=@contrasena, tipoUsuario=@tipoUsuario
		WHERE cedula=@cedula

	if @contrasena IS NOT NULL
	BEGIN
		Update usuario
		set contrasena=@contrasena
		WHERE cedula=@cedula
	END
END

-- RetornaAlergias
CREATE OR ALTER PROCEDURE [dbo].[RetornaAlergias]
    @idUsuario int
AS
BEGIN
    SELECT 
        *
    FROM [dbo].[alergia]
    WHERE [idUsuario] = @idUsuario
END

-- RetornaComida
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

-- RetornaIngrediente
CREATE OR ALTER PROCEDURE [dbo].[RetornaIngredientes]
AS
BEGIN
    SELECT 
        *
    FROM [dbo].[ingrediente]
END

-- RetornaPlanNutricional
CREATE OR ALTER PROCEDURE [dbo].[RetornaPlanNutricional]
	@idPlan int
AS
BEGIN
	SELECT *
	FROM planNutricional
	WHERE idPlan = @idPlan
END

-- RetornaReceta
CREATE OR ALTER PROCEDURE RetornaReceta
	@idReceta int
AS
BEGIN
	SELECT *
	FROM receta
	WHERE idReceta = @idReceta
END

-- RetornaUsuario
CREATE OR ALTER PROCEDURE [dbo].[RetornaUsuario]
 @idUsuario int
AS
BEGIN
	SELECT tU.[idUsuario],
			tU.foto,
			tU.cedula,
			tU.genero,
			tU.fechaNac,
			tu.nombre,
			tu.apellido1,
			tu.apellido2,
			tu.direccion,
			tu.telefono1,
			tu.estatura,
			tu.peso,
			tu.proposito,
			tu.tipoUsuario
		
	FROM [dbo].[usuario] tU 
	WHERE tu.idUsuario= @idUsuario
END

-- RetornaUsuarioPass
CREATE OR ALTER PROCEDURE [dbo].[RetornaUsuarioPass]
    @usuario [nvarchar](20),
    @contrasena [nvarchar](50)
AS	
BEGIN
    SELECT [idUsuario],[usuario],[contrasena],cedula,tipoUsuario
    FROM [dbo].[usuario]
    WHERE   [usuario]=@usuario and [contrasena]=@contrasena
END

-- spRetornaTodosLosClientes
CREATE OR ALTER PROCEDURE dbo.spRetornaTodosLosClientes
AS
BEGIN
	SELECT 
		[cedula],
		[nombre],
		[apellido1],
		[apellido2],
		[genero],
		[telefono1],
		[correo],
		[fechaNac],
		[estatura],
		[peso],
		[proposito],
		[usuario]
	FROM [dbo].[usuario] WHERE [tipoUsuario]= 'C'
END

GO