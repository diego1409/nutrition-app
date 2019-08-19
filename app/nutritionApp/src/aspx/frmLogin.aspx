<%@ Page Title="Login" Language="C#" MasterPageFile="~/src/aspx/masterPage.Master" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="nutritionApp.src.aspx.frmLogin" %>

    <asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" href="../css/Login.css" type="text/css" />
    </asp:Content>

    <asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
        <div id="divLogin" class="container">
            <div class="row justify-content-center">
                <div class="col">
                    <div class="row">
                        <div class="col">
                            <h1>Inicia Sesión</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div id="loginDescripcion">
                                <p class="text-center">
                                    ¡Hola! Bienvenido a Salad. Inicia sesión para acceder a tu historial de planes, mediciones, etc.
                                    <br />
                                    ¿No tienes una cuenta? <a href="frmRegistro.aspx">Regístrate</a>
                                    <br />
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div id="loginForm" class="container">
                                <div class="form-row">
                                    <div class="col">
                                        <label for="txtUsuarioLogin">Usuario</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">
                                                    <i class="material-icons">person
                                                    </i>
                                                </span>
                                            </div>
                                            <asp:TextBox ID="txtUsuarioLogin" runat="server" class="form-control" placeholder="Ingrese su nombre de usuario" autofocus="autofocus"></asp:TextBox>
                                            
                                        </div>
                                        <p class="text-center mb-3">
                                            <asp:RequiredFieldValidator ID="rqvTxtUsuarioLogin" class="form-control" runat="server" ControlToValidate="txtUsuarioLogin" ErrorMessage="Debe ingresar el nombre del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </p>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col">
                                        <label for="txtPasswordUsuarioLogin">Contraseña</label>
                                        <div class="input-group">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">
                                                    <i class="material-icons">vpn_key
                                                    </i>
                                                </span>
                                            </div>
                                            <asp:TextBox ID="txtPasswordUsuarioLogin" runat="server" class="form-control" placeholder="Ingrese su contraseña" type="Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <p class="text-center mb-3">
                                            <asp:RequiredFieldValidator ID="rqvTxtPasswordUsuarioLogin" class="form-control" runat="server" ControlToValidate="txtPasswordUsuarioLogin" ErrorMessage="Debe ingresar una contraseña" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </p>
                                    </div>
                                </div>
                                <div class="form-row justify-content-center mb-4">
                                    <div class="col-lg-6 align-self-center">
                                        <p class="text-center">
                                            <%= this.resultado %>
                                        </p>
                                    </div>
                                </div>
                                <div class="form-row justify-content-center mb-4">
                                    <div class="col-lg-5 align-self-center">
                                        <asp:Button ID="btnIngresar" runat="server" Text="Iniciar Sesión" class="btn btn-success btn-block" OnClick="btnIngresar_onClick" Height="50px" />
                                    </div>
                                </div>
                                <%--<div class="form-row justify-content-center">
                                    <div class="col align-self-center">
                                        <p class="text-center">
                                            <a href="#">¿Olvidaste tu contraseña?</a>
                                        </p>
                                    </div>
                                </div>--%>

                            </div>
                        </div>
                    </div>
                </div>
            </div>  
        </div>
    </asp:Content>
