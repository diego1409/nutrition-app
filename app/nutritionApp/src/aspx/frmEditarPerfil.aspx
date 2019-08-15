<%@ Page Title="Editar Perfil" Language="C#" MasterPageFile="~/src/aspx/masterPageUser.Master" AutoEventWireup="true" CodeBehind="frmEditarPerfil.aspx.cs" Inherits="nutritionApp.src.aspx.frmEditarPerfil" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/frmEditarPerfil.css" type="text/css" />
</asp:Content>

<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divEditarPerfil" class="container-fluid">
        <div class="row justify-content-center">
            <div class="col">
                <div class="row">
                    <div class="col">
                        <h1>Editar Perfil</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <h2>Datos Personales</h2>
                    </div>
                </div>
                <div class="row mb-5">
                    <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-row">
                            <div class="col">
                                <label for="txtNumIdentificacion">Número de Cédula*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                perm_identity
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Número de Cédula -->
                                    <asp:TextBox ID="txtNumIdentificacion" class="form-control" runat="server" Width="250px" MaxLength="20" ReadOnly="false" TextMode="Number"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtNumIdentificacion" class="form-control" runat="server" ControlToValidate="txtNumIdentificacion" ErrorMessage="Debe ingresar su cédula" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtNombre">Nombre*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                person
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Nombre -->
                                    <asp:TextBox ID="txtNombre" class="form-control" runat="server" Width="250px" MaxLength="50"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtNombre" class="form-control" runat="server" ControlToValidate="txtNombre" ErrorMessage="Debe ingresar su nombre" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtPrimerApellido">Primer Apellido*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                person
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Apellido 1 -->
                                    <asp:TextBox ID="txtPrimerApellido" class="form-control" runat="server" Width="250px" MaxLength="50"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtPrimerApellido" class="form-control" runat="server" ControlToValidate="txtPrimerApellido" ErrorMessage="Debe ingresar su primer apellido" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtSegundoApellido">Segundo Apellido</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                person
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Apellido 2 -->
                                    <asp:TextBox ID="txtSegundoApellido" class="form-control" runat="server" Width="250px" MaxLength="50"></asp:TextBox>
                                </div>
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
                                    <asp:RequiredFieldValidator ID="rqvTxtFechaNac" class="form-control" runat="server" ControlToValidate="txtSegundoApellido" ErrorMessage="Debe ingresar su segundo apellido" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                    <asp:TextBox ID="txtDireccion" class="form-control" runat="server" Width="250px" Height="163px" MaxLength="100" TextMode="MultiLine"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtDireccion" class="form-control" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Debe ingresar su dirección" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-row">
                            <div class="col">
                                <label for="ddlGenero">Género*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                people
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Género -->
                                    <asp:DropDownList ID="ddlGenero" runat="server" Width="250px" Enabled="True">
                                        <asp:ListItem Value="" Selected="True">Seleccione su genéro</asp:ListItem>
                                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                                        <asp:ListItem Value="F">Femenino</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvDdlGenero" runat="server" ControlToValidate="ddlGenero" ErrorMessage="Debe seleccionar un genero" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="row mb-3">
                                    <div class="col">
                                        <p class="text">
                                            Foto de Perfil
                                        </p>
                                        <div class="text-center">
                                            <asp:Image ID="imgPerfil" runat="server" Height="240px" Width="240px" ImageUrl="~/src/img/male-fill-circle-512.png" />
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="row mb-3">
                                    <div class="col">
                                        <asp:FileUpload ID="fupAgregarFoto" runat="server" Width="100%" accept="image/*" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <asp:LinkButton ID="hplCargarFoto" runat="server" class="btn btn-success btn-block">Cargar Foto</asp:LinkButton>
                                    </div>
                                </div>
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
                            <div class="col">
                                <label for="ddlProposito">Propósito*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                fitness_center
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Propósito -->
                                    <asp:DropDownList ID="ddlProposito" runat="server" Width="250px" Enabled="True">
                                        <asp:ListItem Value="" Selected="True">Seleccione su propósito</asp:ListItem>
                                        <asp:ListItem Value="Bajar porcentaje de grasa">Bajar porcentaje de grasa</asp:ListItem>
                                        <asp:ListItem Value="Ganar masa muscular">Ganar masa muscular</asp:ListItem>
                                        <asp:ListItem Value="Mantener peso">Mantener peso</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvDdlProposito" class="form-control" runat="server" ControlToValidate="ddlProposito" ErrorMessage="Debe ingresar el propósito del uso de la aplicación" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
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
                                    <asp:TextBox ID="txtCorreo" class="form-control" runat="server" Width="250px" MaxLength="50" TextMode="Email"></asp:TextBox>
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
                                    <asp:TextBox ID="txtNomUsuario" class="form-control" runat="server" Width="250px" MaxLength="20"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvNomUsuario" class="form-control" runat="server" ControlToValidate="txtNomUsuario" ErrorMessage="Debe ingresar su nombre de usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="txtNomUsuario">Tipo de Usuario*</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                verified_user
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Tipo de Usuario -->
                                    <asp:DropDownList ID="ddlTipoUsuario" runat="server" Height="37px" Width="258px" Enabled="True">
                                        <asp:ListItem Value="" Selected="True">Seleccione el tipo de usuario</asp:ListItem>
                                        <asp:ListItem Value="A">Administrador</asp:ListItem>
                                        <asp:ListItem Value="C">Regular</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvDdlTipoUsuario" class="form-control" runat="server" ControlToValidate="ddlTipoUsuario" ErrorMessage="Debe ingresar un tipo de usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row mb-3">
                            <div class="col">
                                <label for="txtPass">Contraseña Nueva</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                vpn_key
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Contraseña Nueva -->
                                    <asp:TextBox ID="txtContrasenaNueva" class="form-control" runat="server" Width="250px" MaxLength="50" ReadOnly="false" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row mb-3">
                            <div class="col">
                                <label for="txtPass">Confirmar Contraseña</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                vpn_key
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Confirmar Contraseña -->
                                    <asp:TextBox ID="txtConfirmarContrasena" class="form-control" runat="server" Width="250px" MaxLength="50" ReadOnly="false" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row mb-3">
                            <div class="col">
                                <label for="txtPass">Digite su contraseña antigua para validar todos los cambios:</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <i class="material-icons">
                                                vpn_key
                                            </i>
                                        </span>
                                    </div>
                                    <!-- Contraseña Antigua -->
                                    <asp:TextBox ID="txtContrasenaAntigua" class="form-control" runat="server" Width="250px" MaxLength="50" ReadOnly="false" TextMode="Password"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtContrasenaAntigua" class="form-control" runat="server" ControlToValidate="txtContrasenaAntigua" ErrorMessage="Debe ingresar la contraseña antigua" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="input-group">
                                    <!-- Contraseña (no se muestra al usuario) -->
                                    <asp:TextBox ID="txtContrasena" class="form-control" runat="server" Width="250px"
                                        ReadOnly="true" Enabled="False" Visible="False" Font-Size="0pt"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row justify-content-center mb-4">
                    <div class="col-6">
                        <!-- En este label se van a cargar los resultados de la tabla -->
                        <asp:Label ID="lblBtnDarDeBaja" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 align-self-center">
                        <asp:HyperLink ID="hplRegresar" class="btn btn-primary btn-block" runat="server" NavigateUrl="~/src/aspx/frmDashboard.aspx">Regresar</asp:HyperLink>
                    </div>
                    <div class="col-6 align-self-center">
                        <asp:Button ID="btnModificar" class="btn btn-success btn-block" runat="server" Text="Guardar Cambios" OnClick="btnModificar_Click"  />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>