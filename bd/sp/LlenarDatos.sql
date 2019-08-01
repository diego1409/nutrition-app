USE [salad]
GO
/****** Object:  StoredProcedure [dbo].[InsertaMedicion]    Script Date: 7/24/2019 8:48:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Llena de datos las tablas>
-- =============================================
EXEC InsertaUsuario '116820936','M','1997-03-08','Leonardo','Aguilar','Molina','San Sebastian','87512416','169','73','Bajar porcentaje de grasa', 'leonardoaguil@hotmail.com','leoaguilarm','1234','A'
EXEC InsertaUsuario '111111111','M','1997-03-08','Diego','Chaves','Castro','Alajuelita','88887777','175','75','Bajar porcentaje de grasa', 'diego@hotmail.com','diegochavesc','1234','A'
EXEC InsertaUsuario '222222222','M','1997-03-08','Jafet','Solano','Marquez','Rohrmoser','88889999','175','75','Bajar porcentaje de grasa', 'jafet@hotmail.com','jafetsolanom','1234','A'

EXEC InsertaMedicion 1,75,15,35,25,25,'observacion de prueba'
--Vegetales
EXEC InsertaIngrediente 'Lechuga'
EXEC InsertaIngrediente 'Repollo'
EXEC InsertaIngrediente 'Zanahoria'
EXEC InsertaIngrediente 'Palmito'
EXEC InsertaIngrediente 'Tomate'
--Granos
EXEC InsertaIngrediente 'Arroz'
EXEC InsertaIngrediente 'Frijoles'
EXEC InsertaIngrediente 'Lentejas'
EXEC InsertaIngrediente 'Garbanzos'
--Frutas
EXEC InsertaIngrediente 'Papaya'
EXEC InsertaIngrediente 'Piña'
EXEC InsertaIngrediente 'Manzana'
EXEC InsertaIngrediente 'Kiwi'
EXEC InsertaIngrediente 'Naranja'
EXEC InsertaIngrediente 'Manzana de agua'
EXEC InsertaIngrediente 'Banano'
EXEC InsertaIngrediente 'tomate'
--Lácteos
EXEC InsertaIngrediente 'Leche'
EXEC InsertaIngrediente 'Queso'
EXEC InsertaIngrediente 'Yogurt'
EXEC InsertaIngrediente 'Mantequilla'
--Carnes
EXEC InsertaIngrediente 'Carne de res'
EXEC InsertaIngrediente 'Carne de cerdo'
EXEC InsertaIngrediente 'Carne de pollo'
EXEC InsertaIngrediente 'Pescado'



