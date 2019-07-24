<%@ Page Title="Modificar Usuario" Language="C#" MasterPageFile="~/src/aspx/masterPage.Master" AutoEventWireup="true" CodeBehind="frmDarDeBajaUsuario.aspx.cs" Inherits="nutritionApp.src.aspx.frmDarDeBajaUsuario" %>

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
				<h1>Dar de baja usuario</h1>
			</div>
			<div class="card-body">
				
        <div id="top-add" style="text-align: center">
            
        </div>

        <div class="form-group">
            <!-- Hipervínculo Regresar -->
            <asp:Button ID="btnRegresar" class="btn btn-info" runat="server" Text="Regresar" OnClick="btnRegresar_Click" />
                
            <br />
            <br />

            <table>

                <!-- Número de Cédula -->
                <tr>
                    <td>Número de Cédula:</td>
                    <td>
                        <asp:TextBox ID="txtNumIdentificacion" class="form-control" runat="server" Width="250px" ReadOnly></asp:TextBox>
                    </td> 
                </tr>
                <!-- Nombre -->
                <tr>
                    <td>Nombre:</td>
                    <td>
                        <asp:TextBox ID="txtNombre" class="form-control" runat="server" Width="250px" ReadOnly></asp:TextBox>
                    </td> 
                </tr>


                <!-- Nombre de usuario -->
                <tr>
                    <td>Nombre de usuario:</td>
                    <td>
                        <asp:TextBox ID="txtNomUsuario" class="form-control" runat="server" Width="250px" ReadOnly></asp:TextBox>
                    </td> 
                </tr>        

                <!-- Tipo de usuario -->
                <tr>
                    <td>Tipo de usuario:</td>
                    <td>
                        <asp:DropDownList ID="ddlTipoUsuario" runat="server" Height="37px" Width="258px" Enabled="False">
                            <asp:ListItem Value="" Selected="True">Seleccione el tipo de usuario</asp:ListItem>
                            <asp:ListItem Value="A">Administrador</asp:ListItem>
                            <asp:ListItem Value="C">Regular</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

               
            </table>
                
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnDarDeBaja" class="btn btn-primary" runat="server" Text="Dar de baja usuario" OnClick="btnDarDeBaja_Click"  />
        </div>
			</div>
		</div>
	</div>
</div>


</asp:Content>
