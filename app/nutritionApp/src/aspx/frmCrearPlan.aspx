<%@ Page Title="Crear Plan Nutricional" Language="C#" MasterPageFile="~/src/aspx/masterPageUser.Master" AutoEventWireup="true" CodeBehind="frmCrearPlan.aspx.cs" Inherits="nutritionApp.src.aspx.Plan_Nutricional.frmCrearPlan" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/frmCrearPlan.css" type="text/css" />
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
                <div id="divFormCrearPlan" class="row">
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col">
                                <h2>Datos Nutricionales</h2>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="ddlProposito">Propósito*</label>
                                    <!-- Propósito -->
                                    <asp:DropDownList ID="ddlProposito" CssClass="form-control" runat="server" Width="250px" Enabled="True" AutoPostBack="true" OnSelectedIndexChanged="ddlProposito_SelectedIndexChanged">
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
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col">
                                <h2>Alergias</h2>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <label for="chkAlergias">Seleccione los ingredientes a evitar</label>
                                <div class="form-group">
                                    <!-- Alergias -->
                                    <asp:CheckBoxList ID="chkAlergias" CssClass="form-control" runat="server" Width="250px" Height="162px">
                                    </asp:CheckBoxList>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <h2>Consumo Calórico</h2>
                            </div>
                        </div>
                        <div class="row mb-5">
                            <div class="col">
                                <h3>
                                    De acuerdo con sus medidas actuales, debes consumir en 5 comidas:
                                </h3>
                                <h3 class="text-center">
                                    <asp:Label ID="lblCalorias" runat="server" Font-Size="50pt"></asp:Label> kcal
                                </h3>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-6 align-self-center">
                                <asp:HyperLink ID="hplCancelar" class="btn btn-danger btn-block" runat="server" NavigateUrl="~/src/aspx/Index.aspx">Cancelar</asp:HyperLink>
                            </div>
                            <div class="col-6 align-self-center">
                                <asp:Button ID="btnCrearPlan" class="btn btn-success btn-block" runat="server" Text="Crear Plan" OnClick="btnCrearPlan_Click"  />
                            </div>
                        </div>
                    </div>
                </div>

                
            </div>
        </div>
    </div>
</asp:Content>
