using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// exporta las clases
using nutritionApp.Clases;

namespace nutritionApp.src.aspx
{
    public partial class frmListaUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack || this.IsPostBack)
            {
                clsProcedimientosAlmacenados mostrar = new clsProcedimientosAlmacenados();
                mostrar.MostrarUsuarios();

                DataTable tabla = new DataTable();
                tabla.Load(mostrar.ExcuteReader());
                grdMuestraUsuarios.DataSource = tabla;
            }
        }
    }
}
