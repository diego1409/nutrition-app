<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/src/aspx/masterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="nutritionApp.src.aspx.frmIndex" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/Index.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <!-- Cuerpo de la pagina -->
    <div id="divBienvenida">
        <div id="bienvenidaTexto">
            <h1>
                Bienvenido a Salad
            </h1>
            <p>
                Bienvenido a la aplicación de nutrición más completa.
                <br />
                Desde calcular su IMC hasta crear su propio plan nutricional.
            </p>
            <p>
                <a href="#divCaracteristicas">Conocer más</a>
            </p>
        </div>
    </div>

    <div id="divCaracteristicas">
        <h1>Características</h1>
        <div id="caracteristicasCards">
            <div class="row">
			    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div id="cardIMC" class="box-part text-center">  
                        
						<div class="title">
							<h4>Cálculo de IMC</h4>
						</div>
						<div class="text">
							<span>El Índice de Masa Corporal es una cifra que determina si una persona está o no en su peso ideal. En la aplicación, puedes calcular tu IMC y guardar los resultados para ver tu progreso.</span>
						</div>
					 </div>
				</div>	 
				
				 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="box-part text-center"> 
					    <i class="fa fa-twitter fa-3x" aria-hidden="true"></i>
						<div class="title">
							<h4>Twitter</h4>
						</div>
						<div class="text">
							<span>Lorem ipsum dolor sit amet, id quo eruditi eloquentiam. Assum decore te sed. Elitr scripta ocurreret qui ad.</span>
						</div>  
					 </div>
				</div>	 
				
				 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					<div class="box-part text-center">   
                        <i class="fa fa-facebook fa-3x" aria-hidden="true"></i>
						<div class="title">
							<h4>Facebook</h4>
						</div>
						<div class="text">
							<span>Lorem ipsum dolor sit amet, id quo eruditi eloquentiam. Assum decore te sed. Elitr scripta ocurreret qui ad.</span>
						</div>
					 </div>
				</div>	 
		    </div>
		
		</div>            
            <!--
            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>

            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>

            <div class="card" style="width: 18rem;">
                <img src="..." class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                </div>
            </div>
            -->
        </div>
</asp:Content>
