<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/src/aspx/masterPageUser.Master" AutoEventWireup="true" CodeBehind="frmCalcCalorias.aspx.cs" Inherits="nutritionApp.src.aspx.frmCalcCalorias" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/Login.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divLogin">
        <div id="divLoginIzq">

            
        </div>
    </div>
        <div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h1>Calculadora Calorias</h1>
			</div>
			<div class="panel panel-default">
								<div class="panel-heading"><h2 class="panel-title">Calcular  por alimento</h2></div>
								<div class="panel-body">
									<form class="form-horizontal" name="calorias" method="post" action="">
										<div class="form-group">
											<label class="col-sm-4" for="categoria">Categoría</label>
											<div class="col-sm-8">
												<select name="categoria" id="categoria">
													<option value="todos">-- Todas las categorías --</option>
																										<option value="frutas" tipo="frutas">frutas</option>
																										<option value="verduras" tipo="verduras">verduras</option>
																										<option value="carnes" tipo="carnes">carnes</option>
																										<option value="pescados" tipo="pescados">pescados</option>
																										<option value="lacteos" tipo="lacteos">lacteos</option>
																										<option value="cereales" tipo="cereales">cereales</option>
																										<option value="legumbres" tipo="legumbres">legumbres</option>
																										<option value="frutos-secos" tipo="frutos-secos">frutos-secos</option>
																										<option value="otros-alimentos" tipo="otros-alimentos">otros-alimentos</option>
																										<option value="platos" tipo="platos">platos</option>
																										<option value="bebidas" tipo="bebidas">bebidas</option>
																									</select>
											</div>
										</div>
											<div class="form-group">
											<label class="col-sm-4" for="alimento">Alimento</label>
											<div class="col-sm-8">
												<select name="alimento" id="alimento">
													<option value="todos">-- Todos los alimentos --</option>
																										<option tipo="otros-alimentos" value="7194" class="otros-alimentos">Aceite de linaza  (Aceite de lino)</option>
																										<option tipo="otros-alimentos" value="2025" class="otros-alimentos">Aceite de oliva  </option>
																										<option tipo="otros-alimentos" value="3159" class="otros-alimentos">Aceitunas  (olivas)</option>
																										<option tipo="verduras" value="407" class="verduras">Acelga  </option>
																										<option tipo="frutas" value="1622" class="frutas">Aguacate  (Palta o avocado)</option>
																										<option tipo="frutas" value="439" class="frutas">Albaricoque  (Damasco, Chabacano, Albérchigo, Alberge)</option>
																										<option tipo="platos" value="2714" class="platos">Albóndigas  </option>
																										<option tipo="verduras" value="2776" class="verduras">Alcachofa  (alcaucil, alcachofera, cardo)</option>
																										<option tipo="otros-alimentos" value="2722" class="otros-alimentos">Alegrías de amaranto  </option>
																										<option tipo="cereales" value="1210" class="cereales">Alforfón  (Trigo sarraceno, fajol)</option>
																										<option tipo="frutos-secos" value="532" class="frutos-secos">Almendras  </option>
																										<option tipo="legumbres" value="1454" class="legumbres">Altramuces  (Chochos, entremozo, lupino blanco)</option>
																										<option tipo="legumbres" value="1398" class="legumbres">Alubias o frijoles blancos  (judías blancas, habichuelas blancas, porotos blancos)</option>
																										<option tipo="legumbres" value="1431" class="legumbres">Alubias o frijoles negros  (judías negras, habichuelas negras, porotos negros)</option>
																										<option tipo="legumbres" value="1414" class="legumbres">Alubias o frijoles pintos  (judías pintas, habichuelas pintas, porotos pintos)</option>
																										<option tipo="legumbres" value="1407" class="legumbres">Alubias o frijoles rojos  (judías rojas, habichuelas rojas, porotos rojos)</option>
																										<option tipo="cereales" value="2717" class="cereales">Amaranto  (Kiwicha)</option>
																										<option tipo="frutos-secos" value="552" class="frutos-secos">Anacardos  (nuez de la india, castaña de cajú, marañón, caguil o merey)</option>
																										<option tipo="pescados" value="2960" class="pescados">Anchoas  (filetes de anchoa)</option>
																										<option tipo="verduras" value="461" class="verduras">Apio  </option>
																										<option tipo="frutas" value="497" class="frutas">Arándano  (Mirtilo myrtillus)</option>
																										<option tipo="frutas" value="795" class="frutas">Arándano rojo  (Arándano rojo americano, Cranberry)</option>
																										<option tipo="cereales" value="2760" class="cereales">Arepas  (tortillas, changas)</option>
																										<option tipo="cereales" value="1064" class="cereales">Arroz  </option>
																										<option tipo="cereales" value="2779" class="cereales">Arroz integral  (arroz pardo, arroz moreno, arroz cargo)</option>
																										<option tipo="frutas" value="1014" class="frutas">Asaí  (Açai)</option>
																										<option tipo="pescados" value="2633" class="pescados">Atún  (Atún común, atún azul, atún rojo, cimarrón)</option>
																										<option tipo="pescados" value="2636" class="pescados">Atún (en conserva)  (Atún en lata)</option>
																										<option tipo="frutos-secos" value="535" class="frutos-secos">Avellanas  </option>
																										<option tipo="cereales" value="1151" class="cereales">Avena  </option>
																										<option tipo="otros-alimentos" value="4073" class="otros-alimentos">Azúcar  </option>
																										<option tipo="cereales" value="2931" class="cereales">Bagel  </option>
																										<option tipo="verduras" value="723" class="verduras">Berenjena  </option>
																										<option tipo="verduras" value="1004" class="verduras">Berro  (Berro de agua)</option>
																										<option tipo="verduras" value="1034" class="verduras">Berza  (Berza común, col forrajera, berza col, col caballar, col gallega, col abierta o kale)</option>
																										<option tipo="verduras" value="2795" class="verduras">Boniato  (batata, camote, chaco, papa dulce)</option>
																										<option tipo="pescados" value="2964" class="pescados">Boquerones  (bocarte, aladroque o anchoa europea)</option>
																										<option tipo="verduras" value="1268" class="verduras">Brócoli  (Brécol)</option>
																										<option tipo="pescados" value="2973" class="pescados">Caballa  (macarela, xarda)</option>
																										<option tipo="frutos-secos" value="538" class="frutos-secos">Cacahuetes  (Maní)</option>
																										<option tipo="bebidas" value="3162" class="bebidas">Café  </option>
																										<option tipo="bebidas" value="3170" class="bebidas">Café descafeinado  (café sin cafeína, café soluble)</option>
																										<option tipo="bebidas" value="3165" class="bebidas">Café expreso  (café solo, café exprés, espresso )</option>
																										<option tipo="verduras" value="299" class="verduras">Calabacín  (Zucchinis)</option>
																										<option tipo="verduras" value="412" class="verduras">Calabaza  (Zapallo, zapallito, calabacera)</option>
																										<option tipo="pescados" value="3116" class="pescados">Camarones  (quisquillas, esquilas)</option>
																										<option tipo="verduras" value="3514" class="verduras">Canónigos  </option>
																										<option tipo="frutas" value="9344" class="frutas">Caqui  (Kaki)</option>
																										<option tipo="frutas" value="1213" class="frutas">Carambola  (Carambolera, Torombolo, Chiramelo, Miramelo, Tamarindo chino, Tamarindo culí)</option>
																										<option tipo="frutos-secos" value="544" class="frutos-secos">Castañas  </option>
																										<option tipo="cereales" value="1130" class="cereales">Cebada  </option>
																										<option tipo="verduras" value="437" class="verduras">Cebolla  (Cebolla temprana, cebolla tardía)</option>
																										<option tipo="cereales" value="1189" class="cereales">Centeno  </option>
																										<option tipo="carnes" value="1830" class="carnes">Cerdo  (Carne de porcino)</option>
																										<option tipo="frutas" value="1299" class="frutas">Cereza  (Guinda)</option>
																										<option tipo="bebidas" value="2934" class="bebidas">Cerveza  </option>
																										<option tipo="verduras" value="2823" class="verduras">Champiñón  </option>
																										<option tipo="verduras" value="1776" class="verduras">Chayote  (papa del aire, zapallo japonés)</option>
																										<option tipo="verduras" value="566" class="verduras">Chile  (Pimentón, ají, guindilla)</option>
																										<option tipo="verduras" value="601" class="verduras">Chirivía  (Pastinaca, zanahoria blanca, cherevía, elafobosco)</option>
																										<option tipo="otros-alimentos" value="2654" class="otros-alimentos">Chocolate  (45-60% de cacao)</option>
																										<option tipo="otros-alimentos" value="2666" class="otros-alimentos">Chocolate con almendras  </option>
																										<option tipo="otros-alimentos" value="2662" class="otros-alimentos">Chocolate con leche  </option>
																										<option tipo="otros-alimentos" value="2658" class="otros-alimentos">Chocolate negro  (70-85% de cacao)</option>
																										<option tipo="carnes" value="2897" class="carnes">Chorizo  </option>
																										<option tipo="frutas" value="1344" class="frutas">Ciruela  </option>
																										<option tipo="otros-alimentos" value="2826" class="otros-alimentos">Clara de huevo  </option>
																										<option tipo="frutas" value="3323" class="frutas">Coco  </option>
																										<option tipo="verduras" value="630" class="verduras">Col  (Repollo, col repollo, col cerrada)</option>
																										<option tipo="verduras" value="666" class="verduras">Col de Bruselas  (Repollos de Bruselas, repollito)</option>
																										<option tipo="verduras" value="731" class="verduras">Col verde  (Kale, col crespa o col rizada)</option>
																										<option tipo="verduras" value="701" class="verduras">Coliflor  </option>
																										<option tipo="cereales" value="1178" class="cereales">Copos de avena  </option>
																										<option tipo="carnes" value="7480" class="carnes">Cordero  (Carne de cordero)</option>
																										<option tipo="otros-alimentos" value="1809" class="otros-alimentos">Croissant  (cruasán, media luna, cachito)</option>
																										<option tipo="frutos-secos" value="523" class="frutos-secos">Dátiles  </option>
																										<option tipo="otros-alimentos" value="3326" class="otros-alimentos">Dulce de batata  (Dulce de boniato)</option>
																										<option tipo="lacteos" value="760" class="lacteos">Dulce de Leche  (manjar blanco, arequipe o cajeta)</option>
																										<option tipo="otros-alimentos" value="2981" class="otros-alimentos">Dulce de membrillo  (carne de membrillo, ate)</option>
																										<option tipo="pescados" value="2937" class="pescados">Emperador  (Pez espada)</option>
																										<option tipo="cereales" value="1943" class="cereales">Espaguetis  (Spaguetti)</option>
																										<option tipo="verduras" value="893" class="verduras">Espárrago  </option>
																										<option tipo="cereales" value="1185" class="cereales">Espelta  (escaña mayor, escanda mayor)</option>
																										<option tipo="verduras" value="901" class="verduras">Espinaca  </option>
																										<option tipo="frutas" value="376" class="frutas">Frambuesa  (Frambueso)</option>
																										<option tipo="frutas" value="643" class="frutas">Fresa  (Frutilla)</option>
																										<option tipo="cereales" value="3234" class="cereales">Galletas de arroz  </option>
																										<option tipo="otros-alimentos" value="3173" class="otros-alimentos">Galletas de soda  (crackers, galletas saladas)</option>
																										<option tipo="pescados" value="3176" class="pescados">Gambas  </option>
																										<option tipo="legumbres" value="200" class="legumbres">Garbanzos  </option>
																										<option tipo="legumbres" value="1442" class="legumbres">Garrofón  (pallar, habón, haba de lima)</option>
																										<option tipo="otros-alimentos" value="3329" class="otros-alimentos">Gazpacho andaluz  </option>
																										<option tipo="frutas" value="887" class="frutas">Granada  (Magrana)</option>
																										<option tipo="otros-alimentos" value="1785" class="otros-alimentos">Granola  (Barra de cereales)</option>
																										<option tipo="frutas" value="1142" class="frutas">Grosella negra  </option>
																										<option tipo="frutas" value="7298" class="frutas">Guayaba  (Goiaba)</option>
																										<option tipo="legumbres" value="1463" class="legumbres">Guisante  (Guisante, chícharo, arveja, arbeyu, guisante verde)</option>
																										<option tipo="legumbres" value="1448" class="legumbres">Habas  </option>
																										<option tipo="cereales" value="3044" class="cereales">Harina de maiz  </option>
																										<option tipo="cereales" value="1790" class="cereales">Harina de trigo  </option>
																										<option tipo="carnes" value="7491" class="carnes">Hígado de pollo  </option>
																										<option tipo="carnes" value="7246" class="carnes">Hígado de ternera  </option>
																										<option tipo="frutas" value="208" class="frutas">Higo  (Breva)</option>
																										<option tipo="verduras" value="929" class="verduras">Hinojo dulce  </option>
																										<option tipo="verduras" value="1359" class="verduras">Hojas de mostaza  ( Mostaza castaña, mostaza de la India o mostaza china )</option>
																										<option tipo="verduras" value="1419" class="verduras">Hojas de nabos  (Grelos o nabizas)</option>
																										<option tipo="bebidas" value="1631" class="bebidas">Horchata de chufa  </option>
																										<option tipo="otros-alimentos" value="1096" class="otros-alimentos">Huevos  </option>
																										<option tipo="platos" value="2833" class="platos">Hummus  </option>
																										<option tipo="carnes" value="1798" class="carnes">Jamón Serrano  (Jamón ibérico)</option>
																										<option tipo="carnes" value="1799" class="carnes">Jamón York  (Jamón cocido)</option>
																										<option tipo="legumbres" value="1436" class="legumbres">Judías verdes  (Ejotes, vainitas, chauchas, habichuelas verdes, porotos verdes)</option>
																										<option tipo="frutas" value="164" class="frutas">Kiwi  (Quiui, fruto bardero o actinidia)</option>
																										<option tipo="pescados" value="3179" class="pescados">Langostinos  </option>
																										<option tipo="lacteos" value="1569" class="lacteos">Leche entera  (Leche de vaca)</option>
																										<option tipo="bebidas" value="1616" class="bebidas">Leche de almendras  </option>
																										<option tipo="bebidas" value="1621" class="bebidas">Leche de arroz  </option>
																										<option tipo="bebidas" value="1627" class="bebidas">Leche de coco  </option>
																										<option tipo="bebidas" value="1600" class="bebidas">Leche de soja  (Leche de soya, bebida de soja)</option>
																										<option tipo="lacteos" value="1582" class="lacteos">Leche desnatada  (Leche descremada)</option>
																										<option tipo="lacteos" value="1578" class="lacteos">Leche semidesnatada  (Leche semidescremada)</option>
																										<option tipo="lacteos" value="3182" class="lacteos">Leche sin lactosa  (Leche deslactosada)</option>
																										<option tipo="verduras" value="1521" class="verduras">Lechuga  </option>
																										<option tipo="legumbres" value="204" class="legumbres">Lentejas  </option>
																										<option tipo="frutas" value="1681" class="frutas">Lima  </option>
																										<option tipo="frutas" value="1393" class="frutas">Limón  </option>
																										<option tipo="frutas" value="5193" class="frutas">Litchi  </option>
																										<option tipo="carnes" value="2839" class="carnes">Lomo de cerdo  </option>
																										<option tipo="pescados" value="2801" class="pescados">Lubina  (róbalo)</option>
																										<option tipo="cereales" value="2836" class="cereales">Macarrones  (plumas)</option>
																										<option tipo="cereales" value="3047" class="cereales">Maicena  (fécula de maiz, maizena, almidón del maíz)</option>
																										<option tipo="cereales" value="1112" class="cereales">Maiz  (Choclo, Millo)</option>
																										<option tipo="verduras" value="97" class="verduras">Maíz Dulce  (Millo, Olote o Choclo)</option>
																										<option tipo="otros-alimentos" value="3186" class="otros-alimentos">Malvaviscos  (masmelos, nubes, esponjitas, jamones, bombones, fringuels)</option>
																										<option tipo="frutas" value="2072" class="frutas">Mandarina  </option>
																										<option tipo="frutas" value="13" class="frutas">Mango  (Melocotón de los trópicos)</option>
																										<option tipo="lacteos" value="737" class="lacteos">Mantequilla  (Manteca)</option>
																										<option tipo="otros-alimentos" value="7201" class="otros-alimentos">Mantequilla de almendra  (Manteca de almendra)</option>
																										<option tipo="otros-alimentos" value="3230" class="otros-alimentos">Mantequilla de cacahuete  (mantequilla de maní, crema de maní)</option>
																										<option tipo="frutas" value="21" class="frutas">Manzana  (Pero)</option>
																										<option tipo="otros-alimentos" value="2900" class="otros-alimentos">Mayonesa  (mahonesa)</option>
																										<option tipo="pescados" value="3448" class="pescados">Mejillones  (clóchinas, choros)</option>
																										<option tipo="frutas" value="347" class="frutas">Melocotón  (Durazno, Presco, Presiego o Piesco)</option>
																										<option tipo="frutas" value="365" class="frutas">Melón  </option>
																										<option tipo="frutas" value="2977" class="frutas">Membrillo  </option>
																										<option tipo="otros-alimentos" value="2904" class="otros-alimentos">Miel  </option>
																										<option tipo="cereales" value="1144" class="cereales">Mijo  </option>
																										<option tipo="frutas" value="56" class="frutas">Moras  (Zarzamoras)</option>
																										<option tipo="verduras" value="1155" class="verduras">Nabo  (Nabiza)</option>
																										<option tipo="frutas" value="1371" class="frutas">Naranja  </option>
																										<option tipo="frutas" value="386" class="frutas">Nectarina  (Briñón, Bruñon, Berisco, Pelón, Peladillo, Pavía y Ratón)</option>
																										<option tipo="frutas" value="5186" class="frutas">Níspero  (Níspero japonés, Cardápano, Miézpola)</option>
																										<option tipo="frutos-secos" value="541" class="frutos-secos">Nueces  </option>
																										<option tipo="frutos-secos" value="548" class="frutos-secos">Nueces de Macadamia  (Macadamia, nuez de arbusto, nuez maroochi)</option>
																										<option tipo="otros-alimentos" value="3069" class="otros-alimentos">Palomitas de maíz  (rositas, crispetas, popcorn)</option>
																										<option tipo="cereales" value="1816" class="cereales">Pan  (Pan blanco, pan de harina de trigo)</option>
																										<option tipo="cereales" value="2907" class="cereales">Pan de centeno  (pan negro)</option>
																										<option tipo="cereales" value="9330" class="cereales">Pan de pita  (Pan árabe)</option>
																										<option tipo="frutas" value="676" class="frutas">Papaya  (Papayón, papayo, melón papaya, fruta bomba, lechosa, melón de árbol)</option>
																										<option tipo="verduras" value="227" class="verduras">Patata  (Papas)</option>
																										<option tipo="platos" value="2820" class="platos">Patatas fritas  (Papas fritas)</option>
																										<option tipo="carnes" value="2990" class="carnes">Pavo  (Guajolote o pavo salvaje)</option>
																										<option tipo="verduras" value="282" class="verduras">Pepino  (Cohombro )</option>
																										<option tipo="frutas" value="767" class="frutas">Pera  </option>
																										<option tipo="verduras" value="348" class="verduras">Pimiento verde  (Chile verde o ají)</option>
																										<option tipo="verduras" value="7292" class="verduras">Pimiento amarillo  (Chile amarillo, ají amarillo)</option>
																										<option tipo="verduras" value="7282" class="verduras">Pimiento rojo  (Pimiento morrón, Chile rojo, morrón rojo)</option>
																										<option tipo="frutas" value="134" class="frutas">Piña  (Ananás, Ananá. )</option>
																										<option tipo="frutos-secos" value="555" class="frutos-secos">Pistachos  (pistache o alfóncigo)</option>
																										<option tipo="frutas" value="938" class="frutas">Plátano  (Banana, Banano)</option>
																										<option tipo="carnes" value="832" class="carnes">Pollo  </option>
																										<option tipo="frutas" value="1934" class="frutas">Pomelo  (Toronja, Pamplemusa)</option>
																										<option tipo="verduras" value="366" class="verduras">Puerro  (Porro, ajo porro o cebolla larga)</option>
																										<option tipo="lacteos" value="255" class="lacteos">Queso Azul  </option>
																										<option tipo="lacteos" value="241" class="lacteos">Queso Brie  </option>
																										<option tipo="lacteos" value="262" class="lacteos">Queso Camembert  </option>
																										<option tipo="lacteos" value="229" class="lacteos">Queso Cheddar  </option>
																										<option tipo="lacteos" value="748" class="lacteos">Queso Crema  (Philadelphia o queso de untar)</option>
																										<option tipo="lacteos" value="754" class="lacteos">Queso de cabra  </option>
																										<option tipo="lacteos" value="743" class="lacteos">Queso Edam  </option>
																										<option tipo="lacteos" value="304" class="lacteos">Queso Feta  </option>
																										<option tipo="lacteos" value="763" class="lacteos">Queso fresco  (queso blanco o queso de Burgos)</option>
																										<option tipo="lacteos" value="307" class="lacteos">Queso Gouda  </option>
																										<option tipo="lacteos" value="325" class="lacteos">Queso Gruyère  </option>
																										<option tipo="lacteos" value="310" class="lacteos">Queso Mozzarella  </option>
																										<option tipo="lacteos" value="2910" class="lacteos">Queso Oaxaca  (queso de hebra, queso asadero, quesillo)</option>
																										<option tipo="lacteos" value="313" class="lacteos">Queso Parmesano  </option>
																										<option tipo="lacteos" value="316" class="lacteos">Queso Provolone  </option>
																										<option tipo="lacteos" value="322" class="lacteos">Queso Ricotta  (Requesón)</option>
																										<option tipo="lacteos" value="319" class="lacteos">Queso Roquefort  </option>
																										<option tipo="cereales" value="1198" class="cereales">Quinoa  (Quinua)</option>
																										<option tipo="verduras" value="8194" class="verduras">Rábano  </option>
																										<option tipo="bebidas" value="3471" class="bebidas">Refresco de cola  (Coca-cola, Pepsi)</option>
																										<option tipo="bebidas" value="3474" class="bebidas">Refresco de naranja  (Fanta naranja)</option>
																										<option tipo="verduras" value="131" class="verduras">Remolacha  (Betarraga)</option>
																										<option tipo="platos" value="3517" class="platos">Rollo de huevo  (egg roll, rollito de primavera)</option>
																										<option tipo="verduras" value="9335" class="verduras">Rúcula  </option>
																										<option tipo="frutas" value="1017" class="frutas">Ruibarbo  </option>
																										<option tipo="otros-alimentos" value="4070" class="otros-alimentos">Sal  </option>
																										<option tipo="carnes" value="2798" class="carnes">Salchicha de Frankfurt  (salchicha vienesa, frankfurter, hotdog)</option>
																										<option tipo="pescados" value="1728" class="pescados">Salmón  (Salmón atlántico)</option>
																										<option tipo="pescados" value="1719" class="pescados">Salmón ahumado  </option>
																										<option tipo="otros-alimentos" value="3332" class="otros-alimentos">Salmorejo  </option>
																										<option tipo="cereales" value="8198" class="cereales">Salvado  (Salvado de avena)</option>
																										<option tipo="platos" value="2913" class="platos">San Jacobo  </option>
																										<option tipo="frutas" value="1087" class="frutas">Sandia  (Patilla, Paitilla, Aguamelón, Melón de agua)</option>
																										<option tipo="pescados" value="2954" class="pescados">Sardinas (en conserva)  (sardinas en lata)</option>
																										<option tipo="cereales" value="7317" class="cereales">Seitán  </option>
																										<option tipo="frutos-secos" value="10485" class="frutos-secos">Semillas de calabaza  (Pipas o pepitas de calabaza)</option>
																										<option tipo="frutos-secos" value="10488" class="frutos-secos">Semillas de chía  </option>
																										<option tipo="frutos-secos" value="558" class="frutos-secos">Semillas de girasol  (Pipas)</option>
																										<option tipo="cereales" value="7191" class="cereales">Semillas de linaza  (Lino, Semillas de lino)</option>
																										<option tipo="frutos-secos" value="10491" class="frutos-secos">Semillas de sésamo  (Ajonjolí)</option>
																										<option tipo="frutos-secos" value="13781" class="frutos-secos">Semillas de flor de loto  (Semillas de loto)</option>
																										<option tipo="verduras" value="7488" class="verduras">Setas shitakee  </option>
																										<option tipo="legumbres" value="1457" class="legumbres">Soja  (Soya)</option>
																										<option tipo="cereales" value="1136" class="cereales">Sorgo  (zahína, mijo grande)</option>
																										<option tipo="bebidas" value="6775" class="bebidas">Té blanco  (Pai Mu Tan)</option>
																										<option tipo="bebidas" value="6766" class="bebidas">Té rojo  (Pu-erh)</option>
																										<option tipo="bebidas" value="6744" class="bebidas">Té verde  </option>
																										<option tipo="cereales" value="1226" class="cereales">Teff  (Tef)</option>
																										<option tipo="legumbres" value="7321" class="legumbres">Tempeh  </option>
																										<option tipo="carnes" value="1074" class="carnes">Ternera  (Res)</option>
																										<option tipo="legumbres" value="7313" class="legumbres">Tofu  </option>
																										<option tipo="verduras" value="592" class="verduras">Tomate  </option>
																										<option tipo="verduras" value="7494" class="verduras">Tomate seco  </option>
																										<option tipo="verduras" value="639" class="verduras">Topinambur  (tupinambo, pataca o alcachofa de Jerusalem)</option>
																										<option tipo="cereales" value="2648" class="cereales">Tortilla de harina de trigo  (tortilla de trigo, tortilla de harina)</option>
																										<option tipo="cereales" value="2644" class="cereales">Tortilla de maíz  </option>
																										<option tipo="platos" value="2757" class="platos">Tortilla de patatas  (Tortilla de papas, tortilla española)</option>
																										<option tipo="platos" value="2639" class="platos">Tortilla francesa  (Omelet, omelette)</option>
																										<option tipo="platos" value="3066" class="platos">Tortitas  (panqueques, pancakes)</option>
																										<option tipo="cereales" value="3502" class="cereales">Tortitas de maiz  (Galletas de maiz)</option>
																										<option tipo="cereales" value="1120" class="cereales">Trigo  </option>
																										<option tipo="frutas" value="1682" class="frutas">Uva  </option>
																										<option tipo="frutas" value="1715" class="frutas">Uva espina  (Grosella espinosa o agrazón)</option>
																										<option tipo="bebidas" value="3105" class="bebidas">Vino blanco  </option>
																										<option tipo="bebidas" value="3108" class="bebidas">Vino tinto  </option>
																										<option tipo="otros-alimentos" value="2829" class="otros-alimentos">Yema de huevo  (amarilla de huevo)</option>
																										<option tipo="lacteos" value="350" class="lacteos">Yogur Natural  </option>
																										<option tipo="verduras" value="3237" class="verduras">Yuca  (mandioca, tapioca, guacamote, casabe)</option>
																										<option tipo="verduras" value="1546" class="verduras">Zanahoria  </option>
																									</select>
												<input type="hidden" name="test_text" id="text_content" value="">
											</div>
										</div>
										
										<div style="text-align: center"><script async="" src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- BIO_links_adaptable -->
<ins class="adsbygoogle" style="display: block; height: 90px;" data-ad-client="ca-pub-1879349339774425" data-ad-slot="9167303549" data-ad-format="link" data-adsbygoogle-status="done"><ins id="aswift_2_expand" style="display:inline-table;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:718px;background-color:transparent;"><ins id="aswift_2_anchor" style="display:block;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:718px;background-color:transparent;"><iframe width="718" height="90" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_2" name="aswift_2" style="left:0;position:absolute;top:0;border:0px;width:718px;height:90px;"></iframe></ins></ins></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script></div>
										<button class="btn btn-info" value="Calcular calorías" type="submit">Calcular </button>
									</form>
									
								</div>
							</div>
		</div>
	</div>
</div>


</asp:Content>
