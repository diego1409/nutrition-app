<%@ Page Title="Lista de Planes Nutricionales" Language="C#" MasterPageFile="~/src/aspx/masterPageUser.Master" AutoEventWireup="true" CodeBehind="frmListaPlanes.aspx.cs" Inherits="nutritionApp.src.aspx.frmListaPlanes" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="../css/frmListaPlanes.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divListaPlanes" class="container-fluid">
        <div class="row">
            <div class="col">
                <h1>Lista de Planes Nutricionales</h1>
            </div>
        </div>
        <div id="divTabla" class="row">
            <div class="col">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Fecha de Plan</th>
                            <th scope="col">Carbohidratos</th>
                            <th scope="col">Proteínas</th>
                            <th scope="col">Grasas</th>
                            <th scope="col">Azúcares</th>
                            <th scope="col">Calorías</th>
                            <th scope="col" class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- En este label se van a cargar los resultados de la tabla -->
                        <asp:Label ID="planes" runat="server" Text=""></asp:Label>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="btnTabla" class="row">
            <div class="col-6 align-self-center">
                <asp:Hyperlink ID="hplRegresar" class="btn btn-danger btn-block" runat="server" Text="Regresar" NavigateUrl="~/src/aspx/frmDashboard.aspx"  />
            </div>
            <div class="col-6 align-self-center">
                <asp:Button ID="btnAgregar" class="btn btn-success btn-block" runat="server" OnClick="btnRegistrar_Click" Text="Crear Nuevo Plan"></asp:Button>
            </div>
        </div>
  </div>
</asp:Content>
