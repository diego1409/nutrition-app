<%@ Page Title="Modificar Usuario" Language="C#" MasterPageFile="~/src/aspx/masterPageAdmin.Master" AutoEventWireup="true" CodeBehind="frmModificaReceta.aspx.cs" Inherits="nutritionApp.src.aspx.frmModificaReceta" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/frmModificaUsuario.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divModificaUsuario" class="container-fluid">
        <div class="row justify-content-center">
            <div class="col">
                <div class="row">
                    <div class="col">
                        <h1>Modificar Receta</h1>
                    </div>
                </div>
                <div class="row mb-5">
                    <div class="form-group">
            <!-- Hipervínculo Regresar -->
            <button id="btnRegresar" class="btn btn-info" runat="server">Regresar</button>
            <br>
            <br></br>
            <div class="card-header">
				<h2>Datos de la Receta</h2>
			</div>
            <table>
                <!-- ID Receta -->
                <tr>
                    <td>Código de Receta:</td>
                    <td>
                        <asp:TextBox ID="txtIdReceta" class="form-control" runat="server" Width="250px" ReadOnly></asp:TextBox>
                    </td> 
                </tr>
                <!-- Tiempo -->
                <tr>
                    <td>Nombre:</td>
                    <td>
                        <asp:TextBox ID="txtNombre" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td">
                        <asp:RequiredFieldValidator ID="rqvTxtNombre" class="form-control" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe ingresar el nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <!-- Foto de receta -->
                <tr>
                    <td>Imagen:</td>
                    <td>
                        <asp:FileUpload ID="fotoReceta" class="form-control" runat="server" Width="250px" accept=".jpg"></asp:FileUpload>
                    </td> 
                </tr>

                <!-- Dificultad -->
                <tr>
                    <td>Dificultad:</td>
                    <td>
                        <asp:DropDownList ID="ddlDificultad" runat="server" Height="37px" Width="258px" Enabled="True">
                            <asp:ListItem Value="F">Fácil</asp:ListItem>
                            <asp:ListItem Value="M">Media</asp:ListItem>
                            <asp:ListItem Value="D">Dificil</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rqvDdlDificultad" runat="server" ControlToValidate="ddlDificultad" ErrorMessage="Debe seleccionar la dificultad" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Tiempo -->
                <tr>
                    <td>Tiempo:</td>
                    <td>
                        <asp:TextBox ID="txtTiempo" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td">
                        <asp:RequiredFieldValidator ID="rqvTxtTiempo" class="form-control" runat="server" ControlToValidate="txtTiempo" ErrorMessage="Debe ingresar el tiempo" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Tiempo de comida -->
                <tr>
                    <td>Tiempo de comida:</td>
                    <td>
                        <asp:DropDownList ID="ddlTiempoComida" runat="server" Height="37px" Width="258px" Enabled="True">
                            <asp:ListItem Value="D">Desayuno</asp:ListItem>
                            <asp:ListItem Value="MM">Merienda de la mañana</asp:ListItem>
                            <asp:ListItem Value="A">Almuerzo</asp:ListItem>
                            <asp:ListItem Value="MT">Merienda de la tarde</asp:ListItem>
                            <asp:ListItem Value="C">Cena</asp:ListItem>
                            <asp:ListItem Value="MN">Merienda de la noche</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rqvDdlTiempoComida" runat="server" ControlToValidate="ddlTiempoComida" ErrorMessage="Debe seleccionar el tiempo de la comida" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Carbohidratos -->
                <tr>
                    <td>Carbohidratos:</td>
                    <td>
                        <asp:TextBox ID="txtCarbos" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtCarbos" class="form-control" runat="server" ControlToValidate="txtCarbos" ErrorMessage="Debe ingresar los carbohidratos" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Proteinas -->
                <tr>
                    <td>Proteínas:</td>
                    <td>
                        <asp:TextBox ID="txtProteinas" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtProteinas" class="form-control" runat="server" ControlToValidate="txtProteinas" ErrorMessage="Debe ingresar las proteínas" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Grasas -->
                <tr>
                    <td>Grasas:</td>
                    <td>
                        <asp:TextBox ID="txtGrasas" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtGrasas" class="form-control" runat="server" ControlToValidate="txtGrasas" ErrorMessage="Debe ingresar las grasas" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Azúcares -->
                <tr>
                    <td>Azúcares:</td>
                    <td>
                        <asp:TextBox ID="txtAzucares" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtAzucares" class="form-control" runat="server" ControlToValidate="txtAzucares" ErrorMessage="Debe ingresar los azúcares" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Calorías -->
                <tr>
                    <td>Calorías:</td>
                    <td>
                        <asp:TextBox ID="txtCalorias" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtCalorias" class="form-control" runat="server" ControlToValidate="txtCalorias" ErrorMessage="Debe ingresar las calorías" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr></table>
            <br><br>

                <div class="card-header">
				<h2>Ingredientes de la Receta:</h2>
			    </div>
            <br>

                <!-- Selecciona Ingredientes -->
            <table>
                </table>
            <br><br>

                <div class="card-header">
				<h2>Pasos de la receta</h2>
			    </div>
            <br>
                  
                <!-- Pasos -->
            <table>
                <tr>
                    <td>Pasos:</td>
                    <td>
                        <asp:TextBox ID="txtPasos" class="form-control" runat="server" Width="500px" Height="100px" TextMode="MultiLine" ></asp:TextBox>
                    </td> 
                    <%--<td>
                        <asp:RequiredFieldValidator ID="rqvTxtPasos" class="form-control" runat="server" ControlToValidate="txtPasos" ErrorMessage="Debe ingresar los pasos" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>--%>
                </tr>

            </table>
                
            <br />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:Button ID="btnModificarReceta" class="btn btn-primary" runat="server" Text="Modificar Receta" />
        </div>
            </div>
        </div>
    </div>
</asp:Content>