<%@ Page Title="Lista de Recetas" Language="C#" MasterPageFile="~/src/aspx/masterPageAdmin.Master" AutoEventWireup="true" CodeBehind="frmListaRecetas.aspx.cs" Inherits="nutritionApp.src.aspx.frmListaRecetas" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="../css/frmListaRecetas.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divListaRecetas" class="container-fluid">
        <div class="row">
            <div class="col">
                <h1>Lista de Recetas</h1>
            </div>
        </div>
        <div id="divTabla" class="row">
            <div class="col">
                <table class="table">
                    <thead>
                        <tr>
                          <th scope="col">Nombre</th>
                          <th scope="col">Tiempo (en min.)</th>
                          <th scope="col">Tiempo de Comida</th>
                          <th scope="col">Muestra de consumo</th>
                          <th scope="col" class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- En este label se van a cargar los resultados de la tabla -->
                        <asp:Label ID="recetas" runat="server" Text=""></asp:Label>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="btnTabla" class="row">
            <div class="col-6 align-self-center">
                <asp:Hyperlink ID="hplRegresar" class="btn btn-danger btn-block" runat="server" Text="Regresar" NavigateUrl="~/src/aspx/frmDashboardAdministrador.aspx"  />
            </div>
            <div class="col-6 align-self-center">
                <asp:Button ID="btnAgregar" class="btn btn-success btn-block" runat="server" OnClick="btnRegistrar_Click" Text="Agregar Receta"></asp:Button>
            </div>
        </div>
  </div>
</asp:Content>
