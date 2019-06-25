<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmInsertaAdmin.aspx.cs" Inherits="nutritionApp.src.aspx.Usuarios.frmInsertaAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Salad - Registrar Administrador</title>
</head>
<body>
    <form id="frmInsertaAdmin" runat="server">
        <div id="top-add" style="text-align: center">
            <h1>Registrar Administrador</h1>     
        </div>

        <div id="form-add">
            <!-- Hipervínculo Regresar -->
            <button id="btnRegresar" runat="server">Regresar</button>
                
            <br />
            <br />

            <table>
                <!-- Nombre -->
                <tr>
                    <td>Nombre:</td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe ingresar el nombre del administrador" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Primer Apellido -->
                <tr>
                    <td>Primer Apellido:</td>
                    <td>
                        <asp:TextBox ID="txtPrimerApellido" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td">
                        <asp:RequiredFieldValidator ID="rqvTxtPrimerApellido" runat="server" ControlToValidate="txtPrimerApellido" ErrorMessage="Debe ingresar el primer apellido del administrador" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Segundo Apellido -->
                <tr>
                    <td>Segundo Apellido:</td>
                    <td>
                        <asp:TextBox ID="txtSegundoApellido" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtSegundoApellido" runat="server" ControlToValidate="txtSegundoApellido" ErrorMessage="Debe ingresar el segundo apellido del administrador" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                    
                <!-- Número de Cédula -->
                <tr>
                    <td>Número de Cédula:</td>
                    <td>
                        <asp:TextBox ID="txtNumIdentificacion" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtNumIdentificacion" runat="server" ControlToValidate="txtNumIdentificacion" ErrorMessage="Debe ingresar la cédula del administrador" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revtxtNumIdentificacion" runat="server" ErrorMessage="Debe ingresar sólo números para la cédula" ForeColor="Red" ValidationExpression="^[0-9]*" ControlToValidate="txtNumIdentificacion"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <!-- Fecha de Nacimiento -->
                <tr>
                    <td>Fecha de Nacimiento:</td>
                    <td>
                        <asp:TextBox ID="txtFechaNac" runat="server" CssClass="form-control" Width="249px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtFechaNac" runat="server" ControlToValidate="txtFechaNac" ErrorMessage="Debe ingresar la fecha de nacimiento del administrador" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Dirección -->
                <tr>
                    <td>Dirección:</td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server" Width="250px" Height="71px" TextMode="MultiLine"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar la dirección del administrador" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Correo Electrónico -->
                <tr>
                    <td>Correo Electrónico:</td>
                    <td>
                        <asp:TextBox ID="txtCorreo" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar el correo electrónico del administrador" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Tipo de Usuario -->
                <tr>
                    <td>Tipo de Usuario:</td>
                    <td>
                        <asp:DropDownList ID="ddlTipoUsuario" runat="server" Height="37px" Width="258px" Enabled="False">
                            <asp:ListItem Value="A" Selected="True">Administrador</asp:ListItem>
                            <asp:ListItem Value="C">Cliente</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rqvDdlTipoUsuario" runat="server" ControlToValidate="ddlTipoUsuario" ErrorMessage="Debe seleccionar un tipo de usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Contraseña -->
                <tr>
                    <td>Contraseña:</td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtPass" runat="server" ControlToValidate="txtPass" ErrorMessage="Debe ingresar la contraseña del administrador" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Confirmar Contraseña -->
                <tr>
                    <td>Confirmar Contraseña:</td>
                    <td>
                        <asp:TextBox ID="txtConfirmarPass" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtConfirmarPass" runat="server" ControlToValidate="txtConfirmarPass" ErrorMessage="Debe ingresar la confirmación de la contraseña del administrador" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>

                    </td>
                    <td>
                        <!-- CompareValidator para comparar contrasenas -->
                        <asp:CompareValidator ID="cmvPass" runat="server" ControlToCompare="txtConfirmarPass" ControlToValidate="txtPass" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
            </table>
                
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Administrador" Height="52px" Width="143px"  BackColor="White" BorderColor="#660033" BorderStyle="Dotted" BorderWidth="3px" OnClick="btnRegistrar_Click"  />
               
            <br />
            <br />
            <br />

            <asp:Label ID="lblResultado" runat="server" ForeColor="Green"></asp:Label>
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
