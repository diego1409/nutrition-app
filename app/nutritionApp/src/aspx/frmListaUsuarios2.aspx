<%@ Page Title="Lista Usuarios" Language="C#" MasterPageFile="~/src/aspx/masterPageUser.Master" AutoEventWireup="true" CodeBehind="frmListaUsuarios2.aspx.cs" Inherits="nutritionApp.src.aspx.frmListaUsuarios2" %>

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

        <div class="form-group">
            <!-- Hipervínculo Regresar -->
            <button id="btnRegresar" class="btn btn-info" runat="server">Regresar</button>

                    <table class="table">
                      <thead>
                        <tr>
                          <th scope="col">Cédula</th>
                          <th scope="col">Nombre Completo</th>
                          <th scope="col">Teléfono</th>
                          <th scope="col">Correo</th>
                          <th scope="col">Acciones</th>

                        </tr>
                      </thead>
                        <tbody>
                            <!-- En este label se van a cargar los resultados de la tabla -->
                            <asp:Label ID="usuarios" runat="server" Text=""></asp:Label>
                        </tbody>
                    </table>
                    


            <asp:Button ID="btnRegistrar" class="btn btn-primary" runat="server" Text="Registrar usuario" OnClick="btnRegistrar_Click"  />
        </div>
			</div>
		</div>
	</div>
</div>


</asp:Content>
