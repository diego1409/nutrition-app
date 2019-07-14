<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/src/aspx/masterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="nutritionApp.src.aspx.Index" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/Index.css" type="text/css" runat="server" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <!-- Cuerpo de la pagina -->
    <div class="container-fluid">
        <div id="divBienvenida" class="row">
            
            <div class="col">
                <!-- The video -->
                <video autoplay muted loop id="bienvenidaVideo">
                  <source src="../vid/welcomeSalad.mp4" type="video/mp4">
                </video>
            </div>
            <div id="bienvenidaTexto" class="col">
                <div class="text-center">
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
        </div>

        <div class="row">
            <div class="col">
                <div id="divCaracteristicas">
                    <h1>Características</h1>
                    <div id="caracteristicasCards">
                        <div class="row">
			                <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
					            <div class="card border border-secondary rounded text-center"> 
                                    <div class="card-body">
                                        <img src="../img/imcIcon.jpg" width="135" height="135" />
                                        <br />
                                        <h3 class="card-title">Cálculo de IMC</h3>
                                        <p class="card-text">
                                            El Índice de Masa Corporal es una cifra que determina si una persona está o no en su peso ideal. En la aplicación, puedes calcular tu IMC y guardar los resultados para ver tu progreso.
                                        </p>
                                    </div>
                                </div>
				            </div>	 
				
				             <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                 <div class="card border border-secondary rounded text-center"> 
                                    <div class="card-body">
                                        <img src="../img/medicionesIcon.jpg" width="135" height="135" />
                                        <br />
                                        <h3 class="card-title">Mediciones</h3>
                                        <p class="card-text">
                                            En esta aplicación, puedes guardar tus mediciones (masa, grasa, músculo, agua, hueso...) y ver tu progreso en camino hacia tus objetivos personales.
                                        </p>
                                    </div>
                                 </div>
				            </div>	 
				
				             <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                                 <div class="card border border-secondary rounded text-center"> 
                                    <div class="card-body">
                                        <img src="../img/planIcon.jpg" width="135" height="135" />
                                        <br />
                                        <h3 class="card-title">Plan Nutricional</h3>
                                        <p class="card-text">
                                            A la hora de cumplir el objetivo del peso ideal, es importante tener un plan nutricional. Puedes generar tu propio plan nutricional para tener una mejor guía de los alimentos.
                                        </p>
                                    </div>
                                 </div>
				            </div>	 
		                </div>
		            </div>              
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div id="divTestimonios">
                    <h1>Testimonios</h1>
        
                    <div class="container-fluid">
                        <div id="testimonio1" class="row">
                            <div class="col-lg-6 col-md-9 col-xs-12">
                                <img id="img1" src="../img/testimonioImg1.jpg" />
                            </div>
            
                            <div class="col-xl-6 col-lg-6">
                                <div id="txt1">
                                    <h2>Luis Carlos, Profesor</h2>
                                    <p>"Mi nombre es Luis Carlos, soy profesor de educacion física. La herramienta me parece súper útil para implementar las herramientas tecnológicas en mis lecciones para que asi mis alumnos puedan poner en práctica lo aprendido."</p>
                                </div>
                            </div>  
                        </div>
                        <div id="testimonio2" class="row">
                            <div class="col-lg-6 col-md-9 col-xs-12">
                                <img id="img2" src="../img/testimonioImg2.jpg" width="600" />
                            </div> 

                            <div class="col-xl-6 col-lg-6">
                                <div id="txt2">
                                    <h2>María, Oficinista</h2>
                                    <p>"Mi nombre es Maria y soy madre de dos hijos. Utilizo la aplicación para velar por lo que ellos consumen en el colegio ya que paso muy ocupada en mi trabajo como oficinista. ¡¡Súper recomendada esta herramienta!!"</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div id="divNosotros">
                    <h1>Nosotros</h1>

                    <div id="nosotrosDescripcion">
                        <p class="text-center">
                            Somos un grupo de estudiantes de la carrera de Ingeniería Informática.
                            <br />
                            Este proyecto es para el curso de Ingeniería de Software, en donde implementamos nuestros conocimientos con base en la metodología ágil llamada Scrum.
                        </p>
                    </div>
        
                    <div id="nosotrosCards" class="container-fluid">
                        <div class="row">
			                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
					            <div class="card border border-secondary rounded text-center"> 
                                    <div class="card-body">
                                        <img src="../img/male-fill-circle-512.png" width="135" height="135" />
                                        <br />
                                        <h3 class="card-title">Leonardo Aguilar</h3>
                                        <div class="card-text">
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">Estudiante en la UMCA.</li>
                                                <li class="list-group-item">Ingeniería Informática.</li>
                                                <li class="list-group-item">Programador en la parte de back-end de la aplicación.</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
				            </div>	 
				
				             <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                 <div class="card border border-secondary rounded text-center"> 
                                    <div class="card-body">
                                        <img src="../img/male-fill-circle-512.png" width="135" height="135" />
                                        <br />
                                        <h3 class="card-title">Diego Chaves</h3>
                                        <div class="card-text">
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">Estudiante en la UMCA.</li>
                                                <li class="list-group-item">Ingeniería Informática.</li>
                                                <li class="list-group-item">Programador en la parte de front-end de la aplicación.</li>
                                            </ul>
                                        </div>
                                    </div>
                                 </div>
				            </div>	 
				
				             <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                 <div class="card border border-secondary rounded text-center"> 
                                    <div class="card-body">
                                        <img src="../img/male-fill-circle-512.png" width="135" height="135" />
                                        <br />
                                        <h3 class="card-title">Jafet Solano</h3>
                                        <div class="card-text">
                                            <ul class="list-group list-group-flush">
                                                <li class="list-group-item">Estudiante en la UMCA.</li>
                                                <li class="list-group-item">Ingeniería Informática.</li>
                                                <li class="list-group-item">Programador en la parte de back-end de la aplicación.</li>
                                            </ul>
                                        </div>
                                    </div>
                                 </div>
				            </div>	 
		                </div>
		            </div>  

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <div id="divSoporte">
                    <h1>Soporte</h1>

                    <div id="soporteForm">
                        <div class="form-group form-col">
                            <label for="txtNombre">Nombre</label>
                            <input type="text" class="form-control" id="txtNombre" placeholder="Ingrese su nombre completo">
                        </div>
                        <div class="form-row">
                            <div class="form-group col-lg-6 col-md-12 col-sm-12">
                                <label for="txtEmail">Correo Electrónico</label>
                                <input type="email" class="form-control" id="txtEmail" placeholder="Ingrese su correo electrónico">
                            </div>
                            <div class="form-group col-lg-6 col-md-12 col-sm-12">
                                <label for="txtTelefono">Teléfono</label>
                                <input type="text" class="form-control" id="txtTelefono" placeholder="Ingrese su número telefónico">
                            </div>
                        </div>
                        <div class="form-group form-col">
                            <label for="txtMensaje">Mensaje</label>
                            <textarea class="form-control" id="txtMensaje" rows="4"></textarea>
                        </div>
                        <div class="form-col">
                            <button type="button" class="btn btn-success btn-lg btn-block">Enviar mensaje</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--
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
    -->
</asp:Content>
