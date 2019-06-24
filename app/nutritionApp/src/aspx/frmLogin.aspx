<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="nutritionApp.src.aspx.frmLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Ingresar</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	
	<link rel="stylesheet" type="text/css" href="../css/Login.css">
</head>
<body>
    <form id="form1" runat="server">
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


    </form>
</body>
</html>
