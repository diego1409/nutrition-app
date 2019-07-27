using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritionApp.src.aspx
{
    public partial class masterPageAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Se valida si el ususario esta loguado
            bool logged = Convert.ToBoolean(Session["UsuarioLogueado"]);
            if (logged)
            {
                lblNombreCompleto.Text = Session["Nombre"].ToString() + " " + Session["Apellido1"].ToString() + " " + Session["Apellido2"].ToString();
            }
            else
            {
                //Se redirecciona a login
                this.Response.Redirect("~/src/aspx/frmLogin.aspx");
            }
        }
    }
}