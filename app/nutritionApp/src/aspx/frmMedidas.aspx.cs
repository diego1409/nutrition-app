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
                idUsuarioMedicion = Convert.ToInt16(Request.QueryString["idUsuario"]);
                Medicion medicion = new Medicion();
                medicion._IdUsuario = idUsuarioMedicion;


                foreach (Medicion item in md.RetornaUltimaMedicion(medicion))
                {
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
    }
}