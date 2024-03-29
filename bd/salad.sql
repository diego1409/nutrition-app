USE [master]
GO

-- =====================================================--
-- Estudiantes:	Leonardo Aguilar Molina					--
--				Diego Chaves Castro						--
--				Jafet Solano Márquez					--
--														--
-- Proyecto:	Salad - Aplicación de Nutrición			--
--														--
-- Descripción:	Creación de Base de datos.			    --
-- =====================================================--
CREATE DATABASE [salad]
 
GO
USE [salad]
GO

-- =====================================================--
-- Tabla:		usuario									--
-- Descripción:	Datos de Usuarios (Clientes y Admins)	--
-- =====================================================--
CREATE TABLE usuario(
	idUsuario int PRIMARY KEY IDENTITY(1,1),						-- Id de Usuario
	foto image NULL,														-- Imagen del Usuario					
	cedula varchar(20) UNIQUE NOT NULL,								-- Cédula de Usuario
	genero char(1) CHECK (genero IN ('M','F','O')) NOT NULL,		-- Género: M= Masculino, F= Femenino, O= Otro
	fechaNac date NOT NULL,											-- Fecha de Nacimiento
	nombre varchar(50) NOT NULL,									-- Nombre
	apellido1 varchar(50) NOT NULL,									-- Primer Apellido
	apellido2 varchar(50) NULL,      									-- Segundo Apellido
	direccion varchar(100) NOT NULL,								-- Dirección Física
	telefono1 varchar(10) NOT NULL,									-- Teléfono Principal
	estatura tinyint NOT NULL,										-- Estatura (como es tinyint (llega hasta 255), se usa para la estatura)
	peso decimal(5,2) NOT NULL,												-- Peso
	proposito varchar (50) NOT NULL,								-- Propósito del usuario al usar la aplicación
	correo varchar(50) NOT NULL,									-- Correo Electrónico
	usuario varchar(20) NOT NULL,									-- Usuario de Sistema
	contrasena varchar(50) NOT NULL,								-- Contraseña de Sistema
	tipoUsuario char(1) CHECK (tipoUsuario IN ('C','A','B')) NOT NULL	-- Tipo de Usuario: C= Cliente, A= Administrador, B= De Baja
) 

-- =====================================================--
-- Tabla:		ingrediente								--
-- Descripción:	Ingredientes para las recetas			--
-- =====================================================--
CREATE TABLE ingrediente(
	idIngrediente int PRIMARY KEY IDENTITY(1,1),	-- Id de ingrediente
	nombre varchar(50) NOT NULL						-- Nombre de ingrediente
) 

-- =====================================================--
-- Tabla:		alergia									--
-- Descripción:	Alergias del usuario a ingredientes		--
-- =====================================================--
CREATE TABLE alergia(
	idUsuario int NOT NULL REFERENCES usuario(idUsuario),				-- Id de usuario
	idIngrediente int NOT NULL REFERENCES ingrediente(idIngrediente)	-- Id de ingrediente
)

-- =====================================================--
-- Tabla:		medicion								--
-- Descripción:	Registros de mediciones del usuario		--
-- =====================================================--
CREATE TABLE medicion(
	idMedicion int PRIMARY KEY IDENTITY(1,1),				-- Id de medición
	idUsuario int NOT NULL REFERENCES usuario(idUsuario),	-- Usuario
    fecha date NOT NULL,                                    -- Fecha
	peso decimal(5,2) NOT NULL,								-- Peso
	grasa decimal(5,2) NOT NULL,							-- % de Grasa
	musculo decimal(5,2) NOT NULL,							-- % de Músculo
	agua decimal(5,2) NOT NULL,								-- % de Agua
	hueso decimal(5,2) NOT NULL,							-- % de Hueso
    imc decimal(5,2) NOT NULL,                              -- IMC
	observaciones varchar(100)								-- Observaciones
)

-- =====================================================--
-- Tabla:		receta									--
-- Descripción:	Recetas a utilizar en los planes		--
-- =====================================================--
CREATE TABLE receta(
	idReceta int PRIMARY KEY IDENTITY(1,1),												-- Id de Receta
	foto image NULL,																	-- Imagen de la Receta
	nombre varchar (100) NOT NULL,														-- Nombre de la Receta
	dificultad char(1) CHECK (dificultad IN ('F','M','D')) NOT NULL,					-- Dificultad de la receta: F= Fácil, M= Media, D= Difícil
	tiempo int NOT NULL,																-- Duración de la receta (en minutos)
	tiempoComida char(2) CHECK (tiempoComida IN ('D','MM','A','MT','C','MN')) NOT NULL,	-- Tiempo de Comida: D= Desayuno, MM= Merienda Mañana, A= Almuerzo, MT= Merienda Tarde, C= Cena, MN= Merienda Noche
	carbos decimal (5,2) NOT NULL,																-- Cantidad Carbohidratos por cada 100g
	proteinas decimal (5,2) NOT NULL,															-- Cantidad Proteínas por cada 100g
	grasas decimal (5,2) NOT NULL,																-- Cantidad Grasas por cada 100g
	azucares decimal (5,2) NOT NULL,																-- Cantidad Azúcares por cada 100g
	calorias int,																		-- Cantidad de Calorías
	pasos varchar(8000)																	-- Pasos de la Receta
)

-- =====================================================--
-- Tabla:		ingrediente_receta						--
-- Descripción:	Ingredientes de las recetas				--
-- =====================================================--
CREATE TABLE ingrediente_receta(
	idReceta int NOT NULL REFERENCES receta(idReceta),					-- Id de Receta
	idIngrediente int NOT NULL REFERENCES ingrediente(idIngrediente),	-- Id de ingrediente
	cantidad decimal (5,2) NOT NULL,												-- Cantidad del ingrediente
	medida varchar(30) NOT NULL,										-- Medida a utilizar del ingrediente
	observaciones varchar(100)											-- Observaciones de la cantidad de ingrediente (forma)
)
-- =====================================================--
-- Tabla:		planNutricional							--
-- Descripción:	Plan nutricional del usuario			--
-- =====================================================--
CREATE TABLE planNutricional(
	idPlan int PRIMARY KEY IDENTITY(1,1),							-- Id de Plan
	idUsuario int NOT NULL REFERENCES usuario(idUsuario),			-- Usuario del Plan
	fecha datetime NOT NULL,										-- Fecha de Plan
	carbos char(1) CHECK (carbos IN ('A','M','B','N')) NOT NULL,	-- Cantidad Carbohidratos: A= Alta, M= Media, B= Baja, N= Nula
	proteinas char(1) CHECK (proteinas IN ('A','M','B','N')) NOT NULL,	-- Cantidad Proteínas: A= Alta, M= Media, B= Baja, N= Nula
	grasas char(1) CHECK (grasas IN ('A','M','B','N')) NOT NULL,	-- Cantidad Grasas: A= Alta, M= Media, B= Baja, N= Nula
	azucares char(1) CHECK (azucares IN ('A','M','B','N')) NOT NULL,	-- Cantidad Azúcares: A= Alta, M= Media, B= Baja, N= Nula
	cantComidas int NOT NULL,										-- Cantidad de Comidas a distribuir
	calorias int													-- Cantidad de Calorías a consumir diariamente
)

-- =====================================================--
-- Tabla:		Comida									--
-- Descripción:	Comida inclida dentro del plan			--
-- =====================================================--
CREATE TABLE comida(
	idComida int PRIMARY KEY IDENTITY(1,1),											-- Id de Comida
	idPlan int NOT NULL REFERENCES planNutricional(idPlan),							-- Plan Ligado
	tiempoComida char(2) CHECK (tiempoComida IN ('D','MM','A','MT','C','MN')) NOT NULL,	-- Tiempo de Comida: D= Desayuno, MM= Merienda Mañana, A= Almuerzo
	idReceta int NOT NULL REFERENCES receta(idReceta)								-- 					 MT= Merienda Tarde, C= Cena, MN= Merienda Noche
)