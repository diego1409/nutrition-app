<%@ Page Title="Lista de Usuarios" Language="C#" MasterPageFile="~/src/aspx/masterPageAdmin.Master" AutoEventWireup="true" CodeBehind="frmListaUsuarios.aspx.cs" Inherits="nutritionApp.src.aspx.frmListaUsuarios" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
  <link rel="stylesheet" href="../css/frmListaUsuarios.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divListaUsuarios" class="container-fluid">
        <div class="row">
            <div class="col">
                <h1>Lista de Usuarios</h1>
            </div>
        </div>
        <div id="divTabla" class="row">
            <div class="col">
                <table class="table">
                    <thead>
                        <tr>
                          <th scope="col">Cédula</th>
                          <th scope="col">Nombre Completo</th>
                          <th scope="col">Teléfono</th>
                          <th scope="col">Correo</th>
                          <th scope="col">Foto de Perfil</th>
                          <th scope="col" colspan="2" class="text-center">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- En este label se van a cargar los resultados de la tabla -->
                        <asp:Label ID="usuarios" runat="server" Text=""></asp:Label>
                    </tbody>
                </table>
            </div>
        </div>
        <div id="btnTabla" class="row">
            <div class="col-6 align-self-center">
                <asp:Hyperlink ID="hplRegresar" class="btn btn-danger btn-block" runat="server" Text="Regresar" NavigateUrl="~/src/aspx/frmDashboardAdministrador.aspx"  />
            </div>
            <div class="col-6 align-self-center">
                <asp:Button ID="btnRegistrar" class="btn btn-success btn-block" runat="server" OnClick="btnRegistrar_Click" Text="Registrar Usuario"></asp:Button>
            </div>
        </div>
          <!-- Modal Eliminar -->
        <div class="modal fade" id="modalDarDeBajaUsuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold">¿Seguro que desea eliminar al usuario?</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <asp:Button ID="btnEliminar" class="btn btn-danger" runat="server" Text="Eliminar"
                    OnClick="btnEliminar_Click" />
                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <button type="button" class="btn btn-light" data-dismiss="modal" aria-label="Close">Cancelar</button>
                </div>
                </div>
            </div>
        </div>
  </div>
</asp:Content>