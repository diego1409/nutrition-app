using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Clases de conexion
using nutritionApp.Clases;

namespace nutritionApp.src.aspx
{
    public partial class frmMedidas : System.Web.UI.Page
    {
        ManejoDatos md = new ManejoDatos();
        int idUsuarioMedicion;
        protected void Page_Load(object sender, EventArgs e)
        {
            //se pregunta si no es una recarga de pagina...
            //validar si es la primera vez que carga la pagina
            //para que no cargue las listas cuando se da click
            //en el boton de guardar
            if (!this.IsPostBack)
            {
                //Rellenar IMC 
                txtObservaciones.Text = "";
                idUsuarioMedicion = Convert.ToInt16(Session["idUsuario"]);
                Medicion medicion = new Medicion();
                medicion._IdUsuario = idUsuarioMedicion;


                foreach (Medicion item in md.RetornaUltimaMedicion(medicion))
                {
                    //Rellenar campos
                    txtPeso.Text = item._Peso.ToString();
                    txtGrasa.Text = item._Grasa.ToString();
                    txtHueso.Text = item._Hueso.ToString();
                    txtAgua.Text = item._Agua.ToString();
                    txtObservaciones.Text = item._Observaciones;
                    txtMusculo.Text = item._Musculo.ToString();
                    txtEstatura.Text = item._Estatura.ToString();

                    //Rellenar IMC
                    if (item._Imc < (185 / 10)) {
                        lblIMC.Text = lblIMC.Text + "<h2>" + item._Imc + "</h2><br><p>IMC</p><br><p>Bajo Peso</p>";
                    }
                    else
                    {
                        if (item._Imc < (250 / 10))
                        {
                            lblIMC.Text = lblIMC.Text + "<h2>" + item._Imc + "</h2><br><p>IMC</p><br><p>Peso saludable</p>";
                        }
                        else {
                            if (item._Imc < (300 / 10))
                            {
                                lblIMC.Text = lblIMC.Text + "<h2>" + item._Imc + "</h2><br><p>IMC</p><br><p>Sobrepeso</p>";
                            }
                            else {
                                lblIMC.Text = lblIMC.Text + "<h2>" + item._Imc + "</h2><br><p>IMC</p><br><p>Obesidad</p>";
                            }
                        }
                    }
                }
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Medicion nueva_medicion = new Medicion();
            nueva_medicion._IdUsuario = idUsuarioMedicion;
            nueva_medicion._Peso  = Convert.ToDecimal(txtPeso.Text);
            nueva_medicion._Grasa = Convert.ToDecimal(txtGrasa.Text);
            nueva_medicion._Musculo = Convert.ToDecimal(txtMusculo.Text);
            nueva_medicion._Agua = Convert.ToDecimal(txtAgua.Text);
            nueva_medicion._Hueso = Convert.ToDecimal(txtHueso.Text);
            nueva_medicion._Observaciones = txtObservaciones.Text;

            ManejoDatos md = new ManejoDatos();
            md.insertar_medicion(nueva_medicion);
            Response.Redirect("frmMedidas.aspx");
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmfrmDashboardCliente.aspx");
        }
    }
}