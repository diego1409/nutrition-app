<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmModificaUsuario.aspx.cs" Inherits="nutritionApp.src.aspx.Usuarios.frmModificaUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Salad - Modificar Usuario</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	
</head>
<body>
    <form id="frmModificaUsuario" runat="server">
        <div id="top-add" style="text-align: center">
            <h1>Registrar Usuario</h1>     
        </div>

        <div class="form-group">
            <!-- Hipervínculo Regresar -->
            <button id="btnRegresar" class="btn btn-info" runat="server">Regresar</button>
                
            <br />
            <br />

            <!-- Número de Cédula -->
                <tr>
                    <td><h2>Número de Cédula:</h2></td>
                    <td>
                        <asp:TextBox ID="txtNumIdentificacion" Text="122223333" Enabled="false" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtNumIdentificacion" class="form-control" runat="server" ControlToValidate="txtNumIdentificacion" ErrorMessage="Debe ingresar la cédula del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revtxtNumIdentificacion" class="form-control" runat="server" ErrorMessage="Debe ingresar sólo números para la cédula" ForeColor="Red" ValidationExpression="^[0-9]*" ControlToValidate="txtNumIdentificacion"></asp:RegularExpressionValidator>
                    </td>
                </tr>

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
            </table>
                
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="btnModificar" class="btn btn-primary" runat="server" Text="Modificar usuario" OnClick="btnModificar_Click"  />
               
            <br />
            <br />
            <br />

            <asp:Label ID="lblResultado" class="form-control" runat="server" ForeColor="Green"></asp:Label>
        </div>
    </form>

    <script type="text/javascript">
        $(document).ready(function () {
            var dp = $('#<%=txtFechaNac.ClientID%>');
            dp.datepicker({
                changeMonth: true,  
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "es"
                //todayHighlight: true
            }).on('changeDate', function (ev) {
                $(this).blur();
                $(this).datepicker('hide');
            });
        });
    </script>
</body>
</html>
