<%@ Page Title="Modificar Usuario" Language="C#" MasterPageFile="~/src/aspx/masterPageAdmin.Master" AutoEventWireup="true" CodeBehind="frmDarDeBajaUsuario.aspx.cs" Inherits="nutritionApp.src.aspx.frmDarDeBajaUsuario" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/frmDarDeBajaUsuario.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">

    <div id="divDarDeBajaUsuario" class="container-fluid">
        <div class="row justify-content-center">
            <div class="col">
                <div class="row">
                    <div class="col">
                        <h1>Dar de Baja a Usuario</h1>
                    </div>
                </div>
                <div class="row">
                    <div id="frmDescripcion" class="col">
                        <p class="text-center">
                            El siguiente usuario será dado de baja en los registros. Para confirma, selecciona la opción de "Dar de Baja".
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div id="darDeBajaForm" class="container mb-5">
                            <div class="form-row">
                                <div class="col">
                                    <label for="txtNumIdentificacion">Número de Cédula</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="material-icons">
                                                    perm_identity
                                                </i>
                                            </span>
                                        </div>
                                        <!-- Número de Cédula -->
                                        <asp:TextBox ID="txtNumIdentificacion" class="form-control" runat="server" Width="250px" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col">
                                    <label for="txtNombre">Nombre</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="material-icons">
                                                    person
                                                </i>
                                            </span>
                                        </div>
                                        <!-- Nombre -->
                                        <asp:TextBox ID="txtNombre" class="form-control" runat="server" Width="250px" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col">
                                    <label for="txtNomUsuario">Nombre de Usuario</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="material-icons">
                                                    alternate_email
                                                </i>
                                            </span>
                                        </div>
                                        <!-- Nombre de Usuario -->
                                        <asp:TextBox ID="txtNomUsuario" class="form-control" runat="server" Width="250px" ReadOnly="true"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col">
                                    <label for="ddlTipoUsuario">Tipo de Usuario</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text">
                                                <i class="material-icons">
                                                    verified_user
                                                </i>
                                            </span>
                                        </div>
                                        <!-- Tipo de Usuario -->
                                        <asp:DropDownList ID="ddlTipoUsuario" runat="server" Height="37px" Width="258px" ReadOnly="False">
                                            <asp:ListItem Value="" Selected="True">Seleccione el tipo de usuario</asp:ListItem>
                                            <asp:ListItem Value="A">Administrador</asp:ListItem>
                                            <asp:ListItem Value="C">Regular</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>

                            <div class="form-row">
                            <div class="col">
                                <div class="input-group">
                                    <!-- Origen de la ventana (no se muestra al usuario) -->
                                    <asp:TextBox ID="txtOrigen" class="form-control" runat="server" Width="250px"
                                        ReadOnly="true" Enabled="False" Visible="False" Font-Size="0pt"></asp:TextBox>
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
                        <asp:Button ID="btnDarDeBaja" class="btn btn-success btn-block" runat="server" Text="Dar de baja" OnClick="btnDarDeBaja_Click"  />
                    </div>
                </div>
            </div>
        </div>
    </div>


</asp:Content>