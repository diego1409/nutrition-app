<%@ Page Title="Administrador" Language="C#" MasterPageFile="~/src/aspx/masterPageAdmin.Master" AutoEventWireup="true" CodeBehind="frmDashboardAdministrador.aspx.cs" Inherits="nutritionApp.src.aspx.frmDashboardAdministrador" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/frmDashboardAdministrador.css" type="text/css" />
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divDashboardAdmin" class="container-fluid">
        <div class="row justify-content-center">
            <div class="col">
            <div class="row">
                <div class="col">
                <h1>¡Bienvenido, <%= Session["Nombre"].ToString() %>!</h1>
                </div>
            </div>
            <div class="row mb-1">
                <div class="col">
                    <div class="card-deck">
                        <div class="card">
                            <img class="card-img-top" src="..." alt="Planes Nutricionales">
                            <div class="card-body">
                                <h2 class="card-title text-center">Planes Nutricionales</h2>
                                <p class="card-text text-center">
                                    En esta sección puedes encontrar los planes nutricionales que has creado o puedes crear uno.

                                </p>
                                <p class="text-center">
                                    <a href="" class="btn btn-primary">Ir a Planes Nutricionales</a>
                                </p>
                  
                            </div>
                        </div>
                        <div class="card">
                            <img class="card-img-top" src="..." alt="Medidas">
                            <div class="card-body">
                                <h2 class="card-title text-center">Medidas</h2>
                                <p class="card-text text-center">
                                    Puedes acceder a tu historial de medidas e incluso, puedes actualizar tus medidas para ver tu progreso.
                                </p>
                                <p class="text-center">
                                    <a href="frmHistorialMedidas.aspx" class="btn btn-primary">Ir a Medidas</a>
                                </p>
                            </div>
                        </div>
                        <div class="card">
                            <img class="card-img-top" src="..." alt="Recetas">
                            <div class="card-body">
                                <h2 class="card-title text-center">Recetas</h2>
                                <p class="card-text text-center">
                                    En esta sección, puedes encontrar el catálogo completo de recetas. Así, puedes encontrar más variedad de comidas
                                    para complementar tu plan nutricional actual.
                                </p>
                                <p class="text-center">
                                    <a href="" class="btn btn-primary">Ir a Recetas</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-4 col-sm">
                <div class="card-deck">
                    <div class="card">
                        <img class="card-img-top" src="..." alt="Usuarios">
                        <div class="card-body">
                            <h2 class="card-title text-center">Usuarios</h2>
                            <p class="card-text text-center">
                                En esta sección, puedes encontrar el catálogo completo de usuarios. Así, puedes editarlos, darlos de baja
                                o crear uno nuevo (como administrador o como cliente).
                            </p>
                            <p class="text-center">
                                <a href="frmListaUsuarios.aspx" class="btn btn-primary">Ir a Usuarios</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
