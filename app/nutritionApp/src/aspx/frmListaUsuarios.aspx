<%@ Page Title="Lista Usuarios" Language="C#" MasterPageFile="~/src/aspx/masterPageUser.Master" AutoEventWireup="true" CodeBehind="frmListaUsuarios.aspx.cs" Inherits="nutritionApp.src.aspx.frmListaUsuarios" %>

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
				<h1>Lista de usuarios</h1>
				<!--<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-instagram"></i></span>
				</div> -->
			</div>
			<div class="card-body">
				
        <div id="top-add" style="text-align: center">
            
        </div>

                <!-- Modal Eliminar -->
            <div class="modal fade" id="modalEliminarUsuario" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header text-center">
                    <h4 class="modal-title w-100 font-weight-bold">¿Seguro que desea eliminar al usuario?</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-footer d-flex justify-content-center">
                    <asp:Button ID="btnEliminar" class="btn btn-danger" runat="server" Text="Eliminar" OnClick="btnEliminar_Click"/>
                  </div>
                    <div class="modal-footer d-flex justify-content-center">
                    <button type="button" class="btn btn-light" data-dismiss="modal" aria-label="Close">Cancelar</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- Modal end-->

        <div class="form-group">
                    <table class="table">
                      <thead>
                        <tr>
                          <th scope="col">Cédula</th>
                          <th scope="col">Nombre Completo</th>
                          <th scope="col">Teléfono</th>
                          <th scope="col">Correo</th>
                          <th scope="col" colspan="2" align="center">Acciones</th>

                        </tr>
                      </thead>
                        <tbody>
                            <!-- En este label se van a cargar los resultados de la tabla -->
                            <asp:Label ID="usuarios" runat="server" Text=""></asp:Label>
                        </tbody>
                    </table>
            <asp:Button ID="btnRegistrar" class="btn btn-primary" runat="server" Text="Registrar usuario" OnClick="btnRegistrar_Click"/>
            <br><br>
            <button id="btnRegresar" class="btn btn-info" runat="server">Regresar</button>
        </div>
			</div>
		</div>
	</div>
</div>


</asp:Content>
