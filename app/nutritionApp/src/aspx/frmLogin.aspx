<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/src/aspx/masterPage.Master" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="nutritionApp.src.aspx.frmLogin" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/Login.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divLogin">
        <div id="divLoginIzq">
            <h1>Inicia Sesión</h1>
            <p class="text">
                ¡Hola! Bienvenido a Salad. Inicia sesión para acceder a tu historial de planes, mediciones, etc. ¿No tienes una cuenta? Regístrate
            </p>
            
        </div>
    </div>
        <div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Ingresar</h3>
				<!--<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-instagram"></i></span>
				</div> -->
			</div>
			<div class="card-body">
				
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
                        <asp:TextBox ID="txtUsuarioLogin" runat="server" class="form-control" placeholder="Usuario" autofocus="autofocus"></asp:TextBox>
						
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
                         <asp:TextBox ID="txtPasswordUsuarioLogin" runat="server" class="form-control" placeholder="Contraseña" type="Password"></asp:TextBox>
						
					</div>
					<div class="form-group">
						
                        <asp:Button ID="btnIngresar" runat="server" Text="Entrar" class="btn float-right login_btn" OnClick="btnIngresar_onClick"/>
					</div>

			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					¿No tiene una cuenta?<a href="#">Registrarse</a>
				</div>
				<div class="d-flex justify-content-center">
					<a href="#">¿Olvido su contraseña?</a>
				</div>
			</div>
		</div>
	</div>
</div>


</asp:Content>
