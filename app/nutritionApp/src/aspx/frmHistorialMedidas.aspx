<%@ Page Title="Lista de Recetas" Language="C#" MasterPageFile="~/src/aspx/masterPageAdmin.Master" AutoEventWireup="true" CodeBehind="frmHistorialMedidas.aspx.cs" Inherits="nutritionApp.src.aspx.frmHistorialMedidas" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="../css/frmListaRecetas.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divListaRecetas" class="container-fluid">
        <div class="row">
            <div class="col">
                <h1>Historial de Medidas</h1>
            </div>
        </div>
        <div id="divTabla" class="row">
            <div class="col">
                <table class="table">
                    <thead>
                        <tr>
                          <th scope="col">Fecha</th>
                          <th scope="col">Peso</th>
                          <th scope="col">Grasa</th>
                          <th scope="col">Musculo</th>
                          <th scope="col">Agua</th>
                          <th scope="col">Hueso</th>
                          <th scope="col">IMC</th>
                          <th scope="col">Observaciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- En este label se van a cargar los resultados de la tabla -->
                        <asp:Label ID="medidas" runat="server" Text=""></asp:Label>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="btnTabla" class="row">
            <div class="col-6 align-self-center">
                <asp:Hyperlink ID="hplRegresar" class="btn btn-danger btn-block" runat="server" Text="Volver" NavigateUrl="frmDashboard.aspx"  />
            </div>

            <div class="col-6 align-self-center">
                <asp:Hyperlink ID="hplActualizar" class="btn btn-success btn-block" runat="server" Text="Actualizar Medidas" NavigateUrl="frmMedidas.aspx"  />
            </div>
        </div>
  </div>
</asp:Content>
