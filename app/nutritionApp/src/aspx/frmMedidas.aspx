<%@ Page Title="Actualizar Medidas" Language="C#" MasterPageFile="~/src/aspx/masterPageAdmin.Master" AutoEventWireup="true" CodeBehind="frmMedidas.aspx.cs" Inherits="nutritionApp.src.aspx.frmMedidas" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/frmMedidas.css" type="text/css" />
</asp:Content>


<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
    <div id="divMedidas" class="container-fluid">
        <div class="row justify-content-center">
            <div class="col">
                <div class="row">
                    <div class="col">
                        <h1>Actualizar Medidas</h1>
                    </div>
                </div>
                <div id="divFormMedidas" class="row">
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col">
                                <h2>Datos de Peso</h2>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="txtEstatura">Estatura (en cms)*</label>
                                    <!-- Estatura -->
                                    <asp:TextBox ID="txtEstatura" class="form-control" runat="server" Width="250px">
                                    </asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtEstatura" class="form-control" runat="server"
                                        ControlToValidate="txtEstatura" ErrorMessage="Debe ingresar la estatura"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="txtPeso">Peso (en kgs)*</label>
                                    <!-- Peso -->
                                    <asp:TextBox ID="txtPeso" class="form-control" runat="server" Width="250px"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtPeso" class="form-control" runat="server"
                                        ControlToValidate="txtPeso" ErrorMessage="Debe ingresar el peso" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtGrasa">Grasa (%)*</label>
                                    <!-- Grasa -->
                                    <asp:TextBox ID="txtGrasa" class="form-control" runat="server" Width="120px"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtGrasa" class="form-control" runat="server"
                                        ControlToValidate="txtGrasa" ErrorMessage="Debe ingresar el porcentaje de grasa"
                                        ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </p>
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtMusculo">Músculo (%)*</label>
                                    <!-- Musculo -->
                                    <asp:TextBox ID="txtMusculo" class="form-control" runat="server" Width="120px">
                                    </asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtMusculo" class="form-control" runat="server"
                                        ControlToValidate="txtMusculo" ErrorMessage="Debe ingresar el porcentaje de musculo"
                                        ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtAgua">Agua (%)*</label>
                                    <!-- Agua -->
                                    <asp:TextBox ID="txtAgua" class="form-control" runat="server" Width="120px"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtAgua" class="form-control" runat="server"
                                        ControlToValidate="txtAgua" ErrorMessage="Debe ingresar el porcentaje de agua"
                                        ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </p>
                            </div>

                            <div class="col-6">
                                <div class="form-group">
                                    <label for="txtHueso">Hueso (%)*</label>
                                    <!-- Hueso -->
                                    <asp:TextBox ID="txtHueso" class="form-control" runat="server" Width="120px"></asp:TextBox>
                                </div>
                                <p class="text-center mb-3">
                                    <asp:RequiredFieldValidator ID="rqvTxtHueso" class="form-control" runat="server"
                                        ControlToValidate="txtHueso"
                                        ErrorMessage="Debe ingresar el porcentaje de hueso en el peso" ForeColor="Red">
                                    </asp:RequiredFieldValidator>
                                </p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="txtObservaciones">Observaciones</label>
                                    <!-- Observaciones -->
                                    <asp:TextBox ID="txtObservaciones" class="form-control" runat="server" Width="250px"
                                        Height="70px" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="txtObservaciones"></label>
                                    <!-- IDUsuario -->
                                    <asp:TextBox ID="txtIDUsuario" class="form-control" runat="server" Width="120px" Visible="false"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col">
                                <h2>Índice de Masa Corporal (IMC)</h2>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <div class="col">
                                <h4>
                                    De acuerdo con sus medidas actuales, este es su IMC:
                                </h4>
                                <h2 class="text-center">
                                    <asp:Label ID="lblIMC" runat="server" Font-Size="50pt"></asp:Label>
                                </h2>
                                <p class="text-center">
                                    <asp:Label ID="lblIMCSub" runat="server" Font-Size="20pt"></asp:Label>
                                </p>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col text-center">
                                <asp:Button ID="btnCalcularIMC" class="btn btn-success" runat="server" Text="Calcular IMC" OnClick="btnCalcularIMC_Click" />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col text-center">
                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#ModalInformacionIMC">Ver información de IMC</button>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 align-self-center">
                                <asp:Hyperlink ID="hplRegresar" class="btn btn-danger btn-block" runat="server" Text="Volver" NavigateUrl="frmHistorialMedidas.aspx" />
                            </div>
                            <div class="col-6 align-self-center">
                                <asp:Button ID="btnActualizar" class="btn btn-success btn-block" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div id="ModalInformacionIMC" class="modal fade" role="dialog">
        <div class="modal-dialog">
            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" align="center">Información</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>

                </div>
                <div class="modal-body">
                    <ul>
                        <li><strong>Si su IMC es inferior a 18.5</strong>, está dentro de los valores correspondientes a
                            “bajo peso”.</li>
                        <li><strong>Si su IMC es entre 18.5 y 24.9</strong>, está dentro de los valores “normales” o de
                            peso saludable.</li>
                        <li><strong>Si su IMC es entre 25.0 y 29.9</strong>, está dentro de los valores correspondientes
                            a “sobrepeso”.</li>
                        <li><strong>Si su IMC es 30.0 o superior</strong>, está dentro de los valores de “obesidad”.
                        </li>
                    </ul>
                    <p>“Bajo peso”, “normal”, “sobrepeso” y “obesidad” son términos para referirse a los distintos
                        rangos de peso corporal. La obesidad y el sobrepeso caracterizan a los rangos de peso que
                        exceden lo que se considera saludable para una determinada estatura, el bajo peso describe al
                        peso corporal inferior a lo que se considera saludable. Si su IMC está fuera del rango “normal”
                        o peso saludable, se recomienda que hable con su médico o proveedor de atención médica sobre
                        cómo puede llegar a un peso corporal más saludable. Se ha demostrado que la obesidad y el
                        sobrepeso aumentan la probabilidad de padecer ciertas enfermedades y otros problemas de salud.
                    </p>
                    <p>A nivel individual, el IMC puede usarse como un método de detección, pero no sirve para
                        diagnosticar la grasa corporal ni la salud de las personas. Un proveedor de atención médica con
                        experiencia es quien debe realizar las evaluaciones médicas adecuadas para estimar el estado de
                        salud y los riesgos de las personas.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger btn-block" data-dismiss="modal">Cerrar</button>
                </div>
            </div>

        </div>
    </div>
</asp:Content>