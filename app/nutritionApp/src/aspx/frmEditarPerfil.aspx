<%@ Page Title="Modificar Usuario" Language="C#" MasterPageFile="~/src/aspx/masterPageUser.Master" AutoEventWireup="true" CodeBehind="frmEditarPerfil.aspx.cs" Inherits="nutritionApp.src.aspx.frmEditarPerfil" %>

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
				<h1>Editar Perfil</h1>
			</div>
			<div class="card-body">
				
        <div id="top-add" style="text-align: center">
            
        </div>

        <div class="form-group">
            <!-- Hipervínculo Regresar -->
            <asp:Button ID="btnRegresar" class="btn btn-info" runat="server" Text="Regresar" OnClick="btnRegresar_Click" />
                
            <br />
            <br />
            <!-- En este label se van a cargar los resultados de la tabla -->
            <asp:Label ID="usuarioModificar" runat="server" Text=""></asp:Label>

            <table>

                <!-- Número de Cédula -->
                <tr>
                    <td>Número de Cédula:</td>
                    <td>
                        <asp:TextBox ID="txtNumIdentificacion" class="form-control" runat="server" Width="250px" ReadOnly></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtNumIdentificacion" class="form-control" runat="server" ControlToValidate="txtNumIdentificacion" ErrorMessage="Debe ingresar la cédula del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revtxtNumIdentificacion" class="form-control" runat="server" ErrorMessage="Debe ingresar sólo números para la cédula" ForeColor="Red" ValidationExpression="^[0-9]*" ControlToValidate="txtNumIdentificacion"></asp:RegularExpressionValidator>
                    </td>
                </tr>
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
                   

                <!-- Tipo de Usuario -->
                <tr>
                    <td>Genero:</td>
                    <td>
                        <asp:DropDownList ID="ddlGenero" runat="server" Height="37px" Width="258px" Enabled="True">
                            <asp:ListItem Value="" Selected="True">Seleccione su género</asp:ListItem>
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
                        <asp:TextBox ID="txtFechaNac" class="form-control" runat="server" CssClass="form-control" Width="249px"></asp:TextBox>
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

                <!-- Estatura -->
                <tr>
                    <td>Estatura:</td>
                    <td>
                        <asp:TextBox ID="txtEstatura" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtEstatura" class="form-control" runat="server" ControlToValidate="txtEstatura" ErrorMessage="Debe ingresar su estatura" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Peso -->
                <tr>
                    <td>Peso:</td>
                    <td>
                        <asp:TextBox ID="txtPeso" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtPeso" class="form-control" runat="server" ControlToValidate="txtPeso" ErrorMessage="Debe ingresar su peso" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Proposito -->
                <tr>
                    <td>Proposito:</td>
                    <td>
                        <asp:DropDownList ID="ddlProposito" runat="server" Height="37px" Width="258px" Enabled="True">
                            <asp:ListItem Value="Bajar peso">Bajar peso</asp:ListItem>
                            <asp:ListItem Value="Aumentar peso">Aumentar peso</asp:ListItem>
                            <asp:ListItem Value="Mantener peso">Mantener peso</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rqvDdlProposito" runat="server" ControlToValidate="ddlProposito" ErrorMessage="Debe seleccionar un propósito" ForeColor="Red"></asp:RequiredFieldValidator>
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

                <!-- Contraseña nueva -->
                <tr>
                    <td>Contraseña nueva (deje en blanco si no desea cambiarla):</td>
                    <td>
                        <asp:TextBox ID="txtContrasenaNueva" class="form-control" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    </td> 
                </tr>

                <!-- Confirmar Contraseña -->
                <tr>
                    <td>Confirmar contraseña:</td>
                    <td>
                        <asp:TextBox ID="txtConfirmarContrasena" class="form-control" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    </td> 
                </tr>

                                <!-- Contraseña antigua -->
                <tr>
                    <td>Digite su contraseña antigua para validar todos los cambios:</td>
                    <td>
                        <asp:TextBox ID="txtContrasenaAntigua" class="form-control" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtContrasenaAntigua" class="form-control" runat="server" ControlToValidate="txtContrasenaAntigua" ErrorMessage="Debe ingresar la contraseña antigua" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Contraseña (no se muestra al usuario) -->
                <tr>
                    <td>
                        <asp:TextBox ID="txtContrasena" class="form-control" runat="server" Width="250px" ReadOnly Enabled="False" Visible="False" Font-Size="0pt"></asp:TextBox>
                    </td> 
                </tr>

                <!-- Tipo de usuario -->
                <tr>
                    <td>
                        <asp:TextBox ID="txtTipoUsuario" class="form-control" runat="server" Width="250px" ReadOnly Enabled="False" Visible="False" Font-Size="0pt"></asp:TextBox>
                    </td> 
                </tr>


            </table>
                
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="btnModificar" class="btn btn-primary" runat="server" Text="Modificar usuario" OnClick="btnModificar_Click"  />
        </div>
			</div>
		</div>
	</div>
</div>


</asp:Content>
