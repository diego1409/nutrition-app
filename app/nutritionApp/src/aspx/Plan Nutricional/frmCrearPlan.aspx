<%@ Page Title="" Language="C#" MasterPageFile="~/src/aspx/masterPageUser.Master" AutoEventWireup="true" CodeBehind="frmCrearPlan.aspx.cs" Inherits="nutritionApp.src.aspx.Plan_Nutricional.frmCrearPlan" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../css/frmCrearPlan.css" type="text/css" />
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divCrearPlan" class="container-fluid">
        <div class="row justify-content-center">
            <div class="col">
                <div class="row">
                    <div class="col">
                        <h1>Crear Plan Nutricional</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>Datos Nutricionales</h2>
                    </div>
                </div>
                <div class="row mb-5">
                    <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="ddlProposito">Propósito*</label>
                                    <!-- Propósito -->
                                    <asp:DropDownList ID="ddlProposito" CssClass="form-control" runat="server" Width="250px" Enabled="True">
                                        <asp:ListItem Value="" Selected="True">Seleccione su propósito</asp:ListItem>
                                        <asp:ListItem Value="Bajar porcentaje de grasa">Bajar porcentaje de grasa</asp:ListItem>
                                        <asp:ListItem Value="Ganar masa muscular">Ganar masa muscular</asp:ListItem>
                                        <asp:ListItem Value="Mantener peso">Mantener peso</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvDdlProposito" class="form-control" runat="server" ControlToValidate="ddlProposito" ErrorMessage="Debe ingresar el propósito del plan" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="ddlCarbos">Carbohidratos*</label>
                                    <!-- Propósito -->
                                    <asp:DropDownList ID="ddlCarbos" CssClass="form-control" runat="server" Width="250px" Enabled="True">
                                        <asp:ListItem Value="" Selected="True">Seleccione cantidad de carbohidratos</asp:ListItem>
                                        <asp:ListItem Value="N">Nula</asp:ListItem>
                                        <asp:ListItem Value="B">Baja</asp:ListItem>
                                        <asp:ListItem Value="M">Media</asp:ListItem>
                                        <asp:ListItem Value="A">Alta</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvDdlCarbos" class="form-control" runat="server" ControlToValidate="ddlCarbos" ErrorMessage="Debe ingresar la cantidad de carbohidratos" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="ddlProteinas">Proteínas*</label>
                                    <!-- Propósito -->
                                    <asp:DropDownList ID="ddlProteinas" CssClass="form-control" runat="server" Width="250px" Enabled="True">
                                        <asp:ListItem Value="" Selected="True">Seleccione cantidad de proteínas</asp:ListItem>
                                        <asp:ListItem Value="N">Nula</asp:ListItem>
                                        <asp:ListItem Value="B">Baja</asp:ListItem>
                                        <asp:ListItem Value="M">Media</asp:ListItem>
                                        <asp:ListItem Value="A">Alta</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvDdlProteinas" class="form-control" runat="server" ControlToValidate="ddlProteinas" ErrorMessage="Debe ingresar la cantidad de proteínas" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="ddlGrasas">Grasas*</label>
                                    <!-- Propósito -->
                                    <asp:DropDownList ID="ddlGrasas" CssClass="form-control" runat="server" Width="250px" Enabled="True">
                                        <asp:ListItem Value="" Selected="True">Seleccione cantidad de grasas</asp:ListItem>
                                        <asp:ListItem Value="N">Nula</asp:ListItem>
                                        <asp:ListItem Value="B">Baja</asp:ListItem>
                                        <asp:ListItem Value="M">Media</asp:ListItem>
                                        <asp:ListItem Value="A">Alta</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvDdlGrasas" class="form-control" runat="server" ControlToValidate="ddlGrasas" ErrorMessage="Debe ingresar la cantidad de grasas" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="ddlAzucares">Azúcares*</label>
                                    <!-- Propósito -->
                                    <asp:DropDownList ID="ddlAzucares" CssClass="form-control" runat="server" Width="250px" Enabled="True">
                                        <asp:ListItem Value="" Selected="True">Seleccione cantidad de azúcares</asp:ListItem>
                                        <asp:ListItem Value="N">Nula</asp:ListItem>
                                        <asp:ListItem Value="B">Baja</asp:ListItem>
                                        <asp:ListItem Value="M">Media</asp:ListItem>
                                        <asp:ListItem Value="A">Alta</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvDdlAzucares" class="form-control" runat="server" ControlToValidate="ddlAzucares" ErrorMessage="Debe ingresar la cantidad de azúcares" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-row">
                            <div class="col">
                                <label for="txtFechaNac">Fecha de Nacimiento*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                date_range
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Fecha de Nacimiento -->
                                    <asp:TextBox ID="txtFechaNac" class="form-control" runat="server" CssClass="form-control" Width="250px" TextMode="Date"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                   
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtTelefono">Teléfono*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                phone
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Teléfono -->
                                    <asp:TextBox ID="txtTelefono" class="form-control" runat="server" Width="250px" TextMode="Number" MaxLength="10"></asp:TextBox>  
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtTelefono" class="form-control" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Debe ingresar su telefono" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtDireccion">Dirección*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                map
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Dirección -->
                                    <asp:TextBox ID="txtDireccion" class="form-control" runat="server" Width="250px" Height="163px" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtDireccion" class="form-control" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar su dirección" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-5">
                    <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col">
                                <h2>Datos Médicos</h2>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtEstatura">Estatura (en cms)*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                trending_up
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Estatura -->
                                    <asp:TextBox ID="txtEstatura" class="form-control" runat="server" Width="250px" TextMode="Number"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtEstatura" class="form-control" runat="server" ControlToValidate="txtEstatura" ErrorMessage="Debe ingresar su estatura" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtPeso">Peso (en kgs)*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                fitness_center
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Peso -->
                                    <asp:TextBox ID="txtPeso" class="form-control" runat="server" Width="250px"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtPeso" class="form-control" runat="server" ControlToValidate="txtPeso" ErrorMessage="Debe ingresar su peso" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col">
                                <h2>Credenciales de Usuario</h2>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtCorreo">Correo Electrónico*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                mail
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Correo -->
                                    <asp:TextBox ID="txtCorreo" class="form-control" runat="server" Width="250px"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvCorreo" class="form-control" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Debe ingresar su correo electrónico" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtNomUsuario">Nombre de Usuario*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                alternate_email
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Usuario -->
                                    <asp:TextBox ID="txtNomUsuario" class="form-control" runat="server" Width="250px"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvNomUsuario" class="form-control" runat="server" ControlToValidate="txtNomUsuario" ErrorMessage="Debe ingresar su nombre de usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtPass">Contraseña*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                vpn_key
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Contraseña -->
                                    <asp:TextBox ID="txtPass" class="form-control" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtPass" class="form-control" runat="server" ControlToValidate="txtPass" ErrorMessage="Debe ingresar la contraseña del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtConfirmarPass">Confirmar Contraseña*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                vpn_key
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Contraseña -->
                                    <asp:TextBox ID="txtConfirmarPass" class="form-control" runat="server" Width="250px" TextMode="Password"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtConfirmarPass" class="form-control" runat="server" ControlToValidate="txtConfirmarPass" ErrorMessage="Debe ingresar la confirmación de la contraseña del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <!-- CompareValidator para comparar contrasenas -->
                                <asp:CompareValidator ID="cmvPass" class="form-control" runat="server" ControlToCompare="txtConfirmarPass" ControlToValidate="txtPass" ErrorMessage="Las contraseñas no coinciden" ForeColor="Red"></asp:CompareValidator>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-6 align-self-center">
                        <asp:HyperLink ID="hplCancelar" class="btn btn-danger btn-block" runat="server" NavigateUrl="~/src/aspx/Index.aspx">Cancelar</asp:HyperLink>
                    </div>
                    <div class="col-6 align-self-center">
                        <asp:Button ID="btnRegistrar" class="btn btn-success btn-block" runat="server" Text="Registrarse"  />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
