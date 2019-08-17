<%@ Page Title="Modificar Usuario" Language="C#" MasterPageFile="~/src/aspx/masterPageAdmin.Master" AutoEventWireup="true" CodeBehind="frmModificaIngredienteReceta.aspx.cs" Inherits="nutritionApp.src.aspx.frmModificaIngredienteReceta" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/frmDarDeBajaUsuario.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">

    <div id="divDarDeBajaUsuario" class="container-fluid">
        <div class="row justify-content-center">
            <div class="col">
                <div class="row">
                    <div class="col">
                        <h1>Modificar ingrediente de receta</h1>
                    </div>
                </div>
                <div class="row">
                    <div id="frmDescripcion" class="col">
                        <p class="text-center">
                            Modifique el ingrediente según lo que se necesite en la receta o elimínelo si lo considera necesario.
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div id="darDeBajaForm" class="container mb-5">
                            <div class="form-row">
                                <div class="col">
                                    <label for="txtCodigoReceta">Codigo de Receta</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="material-icons">
                                                    perm_identity
                                                </i>
                                            </span>
                                        </div>
                                        <!-- Codigo de Receta -->
                                        <asp:TextBox ID="txtCodigoReceta" class="form-control" runat="server" Width="250px" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col">
                                    <label for="txtCodigoIngrediente">Codigo de Ingrediente</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="material-icons">
                                                    perm_identity
                                                </i>
                                            </span>
                                        </div>
                                        <!-- Codigo de Ingrediente -->
                                        <asp:TextBox ID="txtCodigoIngrediente" class="form-control" runat="server" Width="250px" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col">
                                    <label for="txtNombreIngrediente">Nombre de Ingrediente</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="material-icons">
                                                    perm_identity
                                                </i>
                                            </span>
                                        </div>
                                        <!-- Nombre de Ingrediente -->
                                        <asp:TextBox ID="txtNombreIngrediente" class="form-control" runat="server" Width="250px" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col">
                                    <label for="txtCantidad">Cantidad</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="material-icons">
                                                    person
                                                </i>
                                            </span>
                                        </div>
                                        <!-- Cantidad -->
                                        <asp:TextBox ID="txtCantidad" class="form-control" runat="server" Width="250px" ReadOnly="false"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col">
                                    <label for="txtMedida">Medida</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="material-icons">
                                                    alternate_email
                                                </i>
                                            </span>
                                        </div>
                                        <!-- Nombre de Usuario -->
                                        <asp:TextBox ID="txtMedida" class="form-control" runat="server" Width="250px" ReadOnly="false"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col">
                                    <label for="txtObservaciones">Observaciones</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="material-icons">
                                                    alternate_email
                                                </i>
                                            </span>
                                        </div>
                                        <!-- Nombre de Usuario -->
                                        <asp:TextBox ID="txtObservaciones" class="form-control" runat="server" Width="250px" ReadOnly="false"></asp:TextBox>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-6 align-self-center">
                        <asp:Button ID="btnRegresar" class="btn btn-danger btn-block" runat="server" Text="Regresar" OnClick="btnRegresar_Click" />
                    </div>
                    <div class="col-6 align-self-center">
                        <asp:Button ID="btnModificar" class="btn btn-success btn-block" runat="server" Text="Modificar" OnClick="btnModificar_Click"/>
                    </div>
                    <div class="col-6 align-self-center">
                        <asp:Button ID="btnEliminar" class="btn btn-danger btn-block" runat="server" Text="Eliminar de la receta" OnClick="btnEliminar_Click"/>
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>