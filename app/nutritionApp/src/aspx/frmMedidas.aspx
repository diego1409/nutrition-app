<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/src/aspx/masterPage.Master" AutoEventWireup="true" CodeBehind="frmMedidas.aspx.cs" Inherits="nutritionApp.src.aspx.frmMedidas" %>

<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../css/Login.css" type="text/css" />
</asp:Content>


<asp:Content ID="body" ContentPlaceHolderID="body" runat="server">
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
<li><strong>Si su IMC es inferior a 18.5</strong>, está dentro de los valores correspondientes a “bajo peso”.</li>
<li><strong>Si su IMC es entre 18.5 y 24.9</strong>, está dentro de los valores “normales” o de peso saludable.</li>
<li><strong>Si su IMC es entre 25.0 y 29.9</strong>, está dentro de los valores correspondientes a “sobrepeso”.</li>
<li><strong>Si su IMC es 30.0 o superior</strong>, está dentro de los valores de “obesidad”.</li>
</ul>
<p>“Bajo peso”, “normal”, “sobrepeso” y “obesidad” son términos para referirse a los distintos rangos de peso corporal. La obesidad y el sobrepeso caracterizan a los rangos de peso que exceden lo que se considera saludable para una determinada estatura, el bajo peso describe al peso corporal inferior a lo que se considera saludable. Si su IMC está fuera del rango “normal” o peso saludable, se recomienda que hable con su médico o proveedor de atención médica sobre cómo puede llegar a un peso corporal más saludable. Se ha demostrado que la obesidad y el sobrepeso aumentan la probabilidad de padecer ciertas enfermedades y otros problemas de salud.</p>
<p>A nivel individual, el IMC puede usarse como un método de detección, pero no sirve para diagnosticar la grasa corporal ni la salud de las personas. Un proveedor de atención médica con experiencia es quien debe realizar las evaluaciones médicas adecuadas para estimar el estado de salud y los riesgos de las personas.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>

  </div>
</div>

    <div id="divLogin">
        <div id="divLoginIzq">

            
        </div>
    </div>
        <div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h1>Medidas</h1>
			</div>

            <table>

                <!-- Número de Cédula -->
                <tr>
                    <td>Número de Cédula:</td>
                    <td>
                        <asp:TextBox ID="txtNumIdentificacion" class="form-control" runat="server" Width="250px" ReadOnly></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtNumIdentificacion" class="form-control" runat="server" ControlToValidate="txtNumIdentificacion" ErrorMessage="Debe ingresar la cédula del usuario" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revtxtNumIdentificacion" class="form-control" runat="server" ErrorMessage="Debe ingresar sólo números para la cédula" ForeColor="Red" ValidationExpression="^[0-9]*" ControlToValidate="txtNumIdentificacion"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <!-- Estatura -->
                <tr>
                    <td>Estatura (en cms):</td>
                    <td>
                        <asp:TextBox ID="txtEstatura" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtEstatura" class="form-control" runat="server" ControlToValidate="txtEstatura" ErrorMessage="Debe ingresar la estatura" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Peso -->
                <tr>
                    <td>Peso (en kgs):</td>
                    <td>
                        <asp:TextBox ID="txtPeso" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td">
                        <asp:RequiredFieldValidator ID="rqvTxtPeso" class="form-control" runat="server" ControlToValidate="txtPeso" ErrorMessage="Debe ingresar el peso" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Grasa -->
                <tr>
                    <td>Grasa (%):</td>
                    <td>
                        <asp:TextBox ID="txtGrasa" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtGrasa" class="form-control" runat="server" ControlToValidate="txtGrasa" ErrorMessage="Debe ingresar el porcentaje de grasa" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Musculo -->
                <tr>
                    <td>Musculo (%):</td>
                    <td>
                        <asp:TextBox ID="txtMusculo" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtMusculo" class="form-control" runat="server" ControlToValidate="txtMusculo" ErrorMessage="Debe ingresar el porcentaje de musculo" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Agua -->
                <tr>
                    <td>Agua (%):</td>
                    <td>
                        <asp:TextBox ID="txtAgua" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtAgua" class="form-control" runat="server" ControlToValidate="txtAgua" ErrorMessage="Debe ingresar el porcentaje de agua" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Hueso -->
                <tr>
                    <td>Hueso (%):</td>
                    <td>
                        <asp:TextBox ID="txtHueso" class="form-control" runat="server" Width="250px"></asp:TextBox>
                    </td> 
                    <td>
                        <asp:RequiredFieldValidator ID="rqvTxtHueso" class="form-control" runat="server" ControlToValidate="txtHueso" ErrorMessage="Debe ingresar el porcentaje de hueso en el peso" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <!-- Observaciones -->
                <tr>
                    <td>Observaciones:</td>
                    <td>
                        <asp:TextBox ID="txtObservaciones" class="form-control" runat="server" Width="250px" Height="71px" TextMode="MultiLine"></asp:TextBox>
                    </td> 
                </tr>

            </table>



			<div class="card-body">
            <div class="form-group">
                <div class="d-flex justify-content-center h-100">
                <asp:Label ID="lblIMC" runat="server"></asp:Label></div><div class="form-group">
                    </div>
                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#ModalInformacionIMC">Ver información de IMC</button>


                <asp:Button ID="btnVolver" class="btn btn-primary" runat="server" Text="Volver" />
                <asp:Button ID="btnActualizar" class="btn btn-primary" runat="server" Text="Actualizar" />
                <div class="bmi-calculator-form">
    <%--<fieldset>

        <div class="calculator">
            <script>
        
                function FigureBMImet(form, cm, kg) {
                    Meters = eval(cm)/100;
                    Kilos = eval(kg);
                    Square = Meters * Meters;
                    form.calcval.value = Math.round(Kilos * 10 / Square) / 10;
                }
            </script>
            <div class="cols">
                <br>
                <div class="col">
                    <div class="col-block">
                        <div class="measurement">Estatura</div>
                        <div class="measurement-unit">en centímetros:</div>
                        <input name="cm" maxlength="5" type="text" class="form-control">
                    </div>
                    <div class="col-block">
                        <div class="measurement">Peso</div>
                        <div class="measurement-unit">en kilogramos:</div>
                        <input name="kg" type="text" maxlength="5" class="form-control">
                    </div>
                    <br>
                    <div class="col-block">
                        <input type="button" class="btn btn-primary" name="calcmet" onclick="FigureBMImet(this.form,this.form.cm.value,this.form.kg.value)" value="Calcular">
                    </div>
                </div>
            </div>
            <br>
            <br>
            <div class="result">
                <span class="result-label">Resultado:</span> <input type="text" name="calcval" maxlength="5" class="result-input">
            </div>
            <div class="result">
                <br>
            <br>
<ul>
<li><strong>Si su IMC es inferior a 18.5</strong>, está dentro de los valores correspondientes a “bajo peso”.</li>
<li><strong>Si su IMC es entre 18.5 y 24.9</strong>, está dentro de los valores “normales” o de peso saludable.</li>
<li><strong>Si su IMC es entre 25.0 y 29.9</strong>, está dentro de los valores correspondientes a “sobrepeso”.</li>
<li><strong>Si su IMC es 30.0 o superior</strong>, está dentro de los valores de “obesidad”.</li>
</ul>
<p>“Bajo peso”, “normal”, “sobrepeso” y “obesidad” son términos para referirse a los distintos rangos de peso corporal. La obesidad y el sobrepeso caracterizan a los rangos de peso que exceden lo que se considera saludable para una determinada estatura, el bajo peso describe al peso corporal inferior a lo que se considera saludable. Si su IMC está fuera del rango “normal” o peso saludable, se recomienda que hable con su médico o proveedor de atención médica sobre cómo puede llegar a un peso corporal más saludable. Se ha demostrado que la obesidad y el sobrepeso aumentan la probabilidad de padecer ciertas enfermedades y otros problemas de salud.</p>
<p>A nivel individual, el IMC puede usarse como un método de detección, pero no sirve para diagnosticar la grasa corporal ni la salud de las personas. Un proveedor de atención médica con experiencia es quien debe realizar las evaluaciones médicas adecuadas para estimar el estado de salud y los riesgos de las personas.</p>
         </div>
        </div>
    </fieldset>--%>
</div>
        </div>
			</div>
		</div>
	</div>
</div>


</asp:Content>
