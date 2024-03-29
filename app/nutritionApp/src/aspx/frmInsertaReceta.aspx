﻿<%@ Page Title="Insertar Receta" Language="C#" MasterPageFile="~/src/aspx/masterPageAdmin.Master" AutoEventWireup="true" CodeBehind="frmInsertaReceta.aspx.cs" Inherits="nutritionApp.src.aspx.frmInsertaReceta" %>

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
				<h1>Insertar Receta</h1>
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
            <br>
            <br>
            <div class="card-header">
				<h2>Paso 1: Crear la receta</h2>
			</div>
                
            <br />
            <br />

            <table>
                <!-- Foto de receta -->
                <tr>
                    <td>Imagen:</td>
                    <td>
                        <asp:FileUpload ID="fotoReceta" class="form-control" runat="server" Width="250px" accept=".jpg"></asp:FileUpload>
                    </td> 
                </tr>

                <!-- Nombre -->
                <tr>
                    <td>Nombre:</td>
                    <td>
                        <asp:TextBox ID="txtNombre" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td">
                        <asp:RequiredFieldValidator ID="rqvTxtNombre" class="form-control" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe ingresar el nombre de la receta" ForeColor="Red"></asp:RequiredFieldValidator>
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
            <asp:Button ID="btnCrearReceta" class="btn btn-primary" runat="server" Text="Crear receta" OnClick="btnCrearReceta_Click"/>
            <br><br>

                <div class="card-header">
				<h2>Paso 2: Seleccionar ingredientes</h2>
			    </div>
            <br>

                <!-- Selecciona Ingredientes -->
            <table>
                <tr>
                    <td>Ingredientes:</td>
                    <td>
                        <asp:DropDownList ID='ddlIngredientes' runat='server' Height='37px' Width='258px' Enabled="false">
                            <asp:ListItem Value="" Selected="True">Seleccione los ingredientes de su receta</asp:ListItem>
                         </asp:DropDownList> 
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtNuevoIngrediente" class="form-control" runat="server" Width="250px" Enabled="false" Text=""></asp:TextBox>
                    </td> 
                    <td>
                        <asp:Button ID="btnRegistrarIngrediente" class="btn btn-info" runat="server" Text="Registrar un nuevo ingrediente" Enabled="false" OnClick="btnRegistrarIngrediente_Click" />
                    </td>
                </tr>
                <tr></br></tr>

                <!-- Cantidad -->
                <tr>
                    <td>Cantidad:</td>
                    <td>
                        <asp:TextBox ID="txtCantidad" class="form-control" runat="server" Width="250px" Enabled="false" Text="1"></asp:TextBox>
                    </td> 
                    <%--<td>
                        <asp:RequiredFieldValidator ID="rqvTxtCantidad" class="form-control" runat="server" ControlToValidate="txtCantidad" ErrorMessage="Debe ingresar la cantidad" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>--%>
                </tr>

                <!-- Medida -->
                <tr>
                    <td>Medida:</td>
                    <td>
                        <asp:TextBox ID="txtMedida" class="form-control" runat="server" Width="250px" Enabled="false" Text="porción"></asp:TextBox>
                    </td> 
                    <%--<td>
                        <asp:RequiredFieldValidator ID="rqvTxtMedida" class="form-control" runat="server" ControlToValidate="txtMedida" ErrorMessage="Debe ingresar la medida" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>--%>
                </tr>

                <!-- Observaciones -->
                <tr>
                    <td>Observaciones:</td>
                    <td>
                        <asp:TextBox ID="txtObservaciones" class="form-control" runat="server" Width="250px" Height="71px" TextMode="MultiLine" Enabled="false" Text=""></asp:TextBox>
                    </td> 
                </tr>

                <!-- Agregar ingrediente -->
                <tr>
                    <td>
                        <asp:Button ID="btnAgregarIngrediente" class="btn btn-primary" runat="server" Text="Agregar ingrediente a la receta" OnClick="btnAgregarIngrediente_Click" />
                    </td>
                </tr>

                <!-- Muestra Ingredientes -->
                <tr>
                    <td>Ingredientes de la receta:</td>
                    <td>
                        <asp:Label ID="lblListaIngredientesReceta" runat="server" Enabled="false"></asp:Label>
                    </td>
                    <td></td>
                </tr></table>
            <br><br>

                <div class="card-header">
				<h2>Paso 3: Instrucciones</h2>
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

            <asp:Button ID="btnInsertarPasos" class="btn btn-primary" runat="server" Text="Registrar instrucciones" OnClick="btnInsertarPasos_Click" />
        </div>
			</div>
		</div>
	</div>
</div>



<!-- Modal -->
    <%--<div id="ModalRegistrarIngrediente" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" align="center">Registrar ingrediente</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <div class="modal-body">
                    
                    <asp:TextBox ID="txtIngredienteNuevo" class="form-control" runat="server" Width="250px" Enabled="false" Text=""></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqvTxtIngredienteNuevo" class="form-control" runat="server" ControlToValidate="txtIngredienteNuevo" ErrorMessage="Debe ingresar el ingrediente" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#ModalRegistrarIngrediente">Registrar nuevo ingrediente</button>
                </div>
            </div>

        </div>
    </div>--%>


</asp:Content>
