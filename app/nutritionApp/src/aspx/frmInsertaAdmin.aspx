<%@ Page Title="Insertar Admin" Language="C#" MasterPageFile="~/src/aspx/masterPage.Master" AutoEventWireup="true" CodeBehind="frmInsertaAdmin.aspx.cs" Inherits="nutritionApp.src.aspx.frmInsertaAdmin" %>

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
				<h1>Registrar Administrador</h1>
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
                
            <br />
            <br />

            <table>
                <!-- Nombre -->
                <tr>
                    <td>Nombre:</td>
                    <td>
                        <asp:TextBox ID="txtNombre" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtNombre" class="form-control" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe ingresar el nombre del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Primer Apellido -->
                <tr>
                    <td>Primer Apellido:</td>
                    <td>
                        <asp:TextBox ID="txtPrimerApellido" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td">
                        <asp:RequiredFieldValidator ID="rqvTxtPrimerApellido" class="form-control" runat="server" ControlToValidate="txtPrimerApellido" ErrorMessage="Debe ingresar el primer apellido del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Segundo Apellido -->
                <tr>
                    <td>Segundo Apellido:</td>
                    <td>
                        <asp:TextBox ID="txtSegundoApellido" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtSegundoApellido" class="form-control" runat="server" ControlToValidate="txtSegundoApellido" ErrorMessage="Debe ingresar el segundo apellido del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                    
                <!-- Número de Cédula -->
                <tr>
                    <td>Número de Cédula:</td>
                    <td>
                        <asp:TextBox ID="txtNumIdentificacion" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtNumIdentificacion" class="form-control" runat="server" ControlToValidate="txtNumIdentificacion" ErrorMessage="Debe ingresar la cédula del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revtxtNumIdentificacion" class="form-control" runat="server" ErrorMessage="Debe ingresar sólo números para la cédula" ForeColor="Red" ValidationExpression="^[0-9]*" ControlToValidate="txtNumIdentificacion"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <!-- Genero -->
                <tr>
                    <td>Genero:</td>
                    <td>
                        <asp:DropDownList ID="ddlGenero" runat="server" Height="37px" Width="258px" Enabled="True">
                            <asp:ListItem Value="" Selected="True">Seleccione su genero</asp:ListItem>
                            <asp:ListItem Value="M">Masculino</asp:ListItem>
                            <asp:ListItem Value="F">Femenino</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rqvDdlGenero" runat="server" ControlToValidate="ddlGenero" ErrorMessage="Debe seleccionar un genero" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Fecha de Nacimiento -->
                <tr>
                    <td>Fecha de Nacimiento:</td>
                    <td>
                        <asp:TextBox ID="txtFechaNac" class="form-control" runat="server" CssClass="form-control" Width="249px" TextMode="Date"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtFechaNac" class="form-control" runat="server" ControlToValidate="txtFechaNac" ErrorMessage="Debe ingresar la fecha de nacimiento del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Dirección -->
                <tr>
                    <td>Dirección:</td>
                    <td>
                        <asp:TextBox ID="txtDireccion" class="form-control" runat="server" Width="250px" Height="71px" TextMode="MultiLine"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtDireccion" class="form-control" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar la dirección del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Correo Electrónico -->
                <tr>
                    <td>Correo Electrónico:</td>
                    <td>
                        <asp:TextBox ID="txtCorreo" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvCorreo" class="form-control" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar el correo electrónico del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <!-- Telefono -->
                <tr>
                    <td>Telefono:</td>
                    <td>
                        <asp:TextBox ID="txtTelefono" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtTelefono" class="form-control" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Debe ingresar el telefono" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>


                <!-- Nombre de usuario -->
                <tr>
                    <td>Nombre de usuario:</td>
                    <td>
                        <asp:TextBox ID="txtNomUsuario" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvNomUsuario" class="form-control" runat="server" ControlToValidate="txtNomUsuario" ErrorMessage="Debe ingresar su nombre de usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>


                <!-- Contraseña -->
                <tr>
                    <td>Contraseña:</td>
                    <td>
                        <asp:TextBox ID="txtPass" class="form-control" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtPass" class="form-control" runat="server" ControlToValidate="txtPass" ErrorMessage="Debe ingresar la contraseña del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Confirmar Contraseña -->
                <tr>
                    <td>Confirmar Contraseña:</td>
                    <td>
                        <asp:TextBox ID="txtConfirmarPass" class="form-control" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtConfirmarPass" class="form-control" runat="server" ControlToValidate="txtConfirmarPass" ErrorMessage="Debe ingresar la confirmación de la contraseña del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>

                    </td>
                    <td>
                        <!-- CompareValidator para comparar contrasenas -->
                        <asp:CompareValidator ID="cmvPass" class="form-control" runat="server" ControlToCompare="txtConfirmarPass" ControlToValidate="txtPass" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>

                <!-- Tipo de usuario -->
                <tr>
                    <td>Tipo de usuario:</td>
                    <td>
                        <asp:DropDownList ID="ddlTipoUsuario" runat="server" Height="37px" Width="258px" Enabled="True">
                            <asp:ListItem Value="" Selected="True">Seleccione el tipo de usuario</asp:ListItem>
                            <asp:ListItem Value="A">Administrador</asp:ListItem>
                            <asp:ListItem Value="C">Regular</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rqvDdlTipoUsuario" runat="server" ControlToValidate="ddlTipoUsuario" ErrorMessage="Debe seleccionar un tipo de usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
                
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="btnRegistrar" class="btn btn-primary" runat="server" Text="Registrar usuario" OnClick="btnRegistrar_Click"  />
        </div>
			</div>
		</div>
	</div>
</div>


</asp:Content>
