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
    public partial class frmHistorialMedidas : System.Web.UI.Page
    {
        int idUsuario;
        ManejoDatos md = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                idUsuario = Convert.ToInt32(Session["IdUsuario"]);
                foreach (Medicion item in md.HistorialMedidas(idUsuario))
                {
                    medidas.Text = medidas.Text + "<tr><td>" + item._Fecha + "</td><td>" + item._Peso + "</td><td>" + item._Grasa + "</td><td>" + item._Musculo + "</td><td>" + item._Agua + "</td><td>" + item._Hueso + "</td><td>" + item._Imc + "</td><td>" + item._Observaciones + "</td></tr>";
                }
            }
        }
    }
}