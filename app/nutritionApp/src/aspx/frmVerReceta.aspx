<%@ Page Title="Ver Receta" Language="C#" MasterPageFile="~/src/aspx/masterPageUser.Master" AutoEventWireup="true" CodeBehind="frmVerReceta.aspx.cs" Inherits="nutritionApp.src.aspx.frmVerReceta" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/frmVerReceta.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divVerReceta" class="content-fluid">
        <div class="row justify-content-center">
            <div class="col">
                <div class="card">
                    <%= imgReceta %>
                    <div class="card-body">
                      <h2 class="card-title text-center"><%= receta._Nombre %></h2>
                      <h6 class="card-subtitle mb-2 text-center"><%= receta._TiempoComida %></h6>
                    </div>
                    <ul class="list-group">
                        <%= ingredientesReceta %>
                    </ul>
                    <div class="card-body">
                        <p class="text-center">
                            <%= receta._Pasos %>
                        </p>
                    </div>
                    <div class="card-footer">
                        <div class="row">
                            <div class="col-5">
                                <small class="text-muted">
                                    <i class="material-icons">av_timer</i> <%= receta._Tiempo.ToString() %> min.
                                </small>
                            </div>
                            <div class="col-4">
                                <small class="text-muted">
                                    <i class="material-icons">extension</i> <%= dificultad %>
                                </small>
                            </div>
                            <div class="col-3">
                                <small class="text-muted">
                                    <i class="material-icons">fitness_center</i> <%= receta._Calorias %> kcal
                                </small>
                            </div>
                        </div> 
                    </div>
              </div>
            </div>
        </div>
    </div>
</asp:Content>
