<%@ Page Title="Ver Plan Nutricional" Language="C#" MasterPageFile="~/src/aspx/masterPageUser.Master" AutoEventWireup="true" CodeBehind="frmVerPlan.aspx.cs" Inherits="nutritionApp.src.aspx.frmVerPlan" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/frmVerPlan.css" type="text/css" />
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divVerPlan" class="content-fluid">
        <div class="row justify-content-center">
            <div class="col">
                <h1>Plan Nutricional</h1>
            </div>
        </div>
        <div class="row justify-content-center mb-3">
            <div class="col">
                <h5 class="text-center">¡Hola, <%= Session["Nombre"].ToString() %>!. Este plan nutricional contiene los siguientes datos:</h5>
            </div>
        </div>
        <div class="row justify-content-center mb-3">        
            <h2 class="text-center">Tiempos de Comida</h2>
        </div>
        <div class="row justify-content-center mb-4">
            <%= cardsComida %>
            <!--
            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <img class="card-img-top" src="../img/testimonioImg1.jpg" height="300" alt="Desayuno">
                    <div class="card-body">
                      <h2 class="card-title text-center">Receta</h2>
                      <h6 class="card-subtitle mb-2 text-center">Desayuno</h6>
                      <p class="card-text text-center">
                          Ingredientes de la receta
                      </p>
                      <p class="text-center">
                          <a href="" class="btn btn-primary">Ver Receta</a>
                          <a href="" class="btn btn-warning">Editar Receta</a>
                      </p>
                  
                    </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <img class="card-img-top" src="..." alt="Merienda Manana">
                    <div class="card-body">
                      <h2 class="card-title text-center">Merienda Manana</h2>
                      <p class="card-text text-center">
                          Ingredientes de la receta
                      </p>
                      <p class="text-center">
                          <a href="" class="btn btn-primary">Ver Receta</a>
                      </p>
                  
                    </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <img class="card-img-top" src="..." alt="Almuerzo">
                    <div class="card-body">
                      <h2 class="card-title text-center">Almuerzo</h2>
                      <p class="card-text text-center">
                          Ingredientes de la receta
                      </p>
                      <p class="text-center">
                          <a href="" class="btn btn-primary">Ver Receta</a>
                      </p>
                  
                    </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <img class="card-img-top" src="..." alt="Desayuno">
                    <div class="card-body">
                      <h2 class="card-title text-center">Desayuno</h2>
                      <p class="card-text text-center">
                          Ingredientes de la receta
                      </p>
                      <p class="text-center">
                          <a href="" class="btn btn-primary">Ver Receta</a>
                      </p>
                  
                    </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <img class="card-img-top" src="..." alt="Merienda Manana">
                    <div class="card-body">
                      <h2 class="card-title text-center">Merienda Manana</h2>
                      <p class="card-text text-center">
                          Ingredientes de la receta
                      </p>
                      <p class="text-center">
                          <a href="" class="btn btn-primary">Ver Receta</a>
                      </p>
                  
                    </div>
              </div>
            </div>
            -->
        </div>

        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                <div class="row justify-content-center mb-3">        
                    <h2 class="text-center">Hidratación</h2>
                </div>

                <div class="row justify-content-center mb-3">   
                    <div class="col-8">
                        <div class="card">
                            <img class="card-img-top" src="../img/hidratacion.jpg" height="300" alt="Hidratación Diaria">
                            <div class="card-body">
                     
                              <p class="card-text text-center">
                                  De acuerdo con sus medidas actuales, tienes que consumir (en litros):
                              </p>
                              <h3 class="text-center">
                                  <asp:Label ID="lblLitros" runat="server" Font-Size="50pt" Text="2.5"></asp:Label> l
                              </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                <div class="row justify-content-center mb-3">        
                    <h2 class="text-center">Consumo Calórico</h2>
                </div>

                <div class="row justify-content-center mb-3">   
                    <div class="col-8">
                        <div class="card">
                            <img class="card-img-top" src="../img/calorias.jpg" height="300" alt="Consumo Calórico">
                            <div class="card-body">
                            
                              <p class="card-text text-center">
                                  De acuerdo con sus medidas actuales, debes consumir en 5 comidas: 
                              </p>
                              <h3 class="text-center">
                                  <asp:Label ID="lblCalorias" runat="server" Font-Size="50pt" Text="1800"></asp:Label> kcal
                              </h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>