using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritionApp.src.aspx
{
    public partial class masterPageUser : System.Web.UI.MasterPage
    {
        ManejoDatos md = new ManejoDatos();
        public int idUsuario;
        public int idPlan = 0;
        public string linkPlan;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Se valida si el ususario esta loguado
            bool logged = Convert.ToBoolean(Session["UsuarioLogueado"]);
            if (logged)
            {
                idUsuario = Convert.ToInt32(Session["idUsuario"]);
                lblNombreCompleto.Text = Session["Nombre"].ToString() + " " + Session["Apellido1"].ToString() + " " + Session["Apellido2"].ToString();
                idPlan = md.RetornaUltimoPlan(idUsuario);

                if (idPlan != 0)
                {
                    linkPlan = "href=\"frmVerPlan.aspx?idPlan=" + idPlan.ToString() + "\"";
                }
                else
                {
                    linkPlan = "data-toggle=\"modal\" data-target=\"#noPlanModal\"";
                }
            }
            else
            {
                //Se redirecciona a login
                this.Response.Redirect("~/src/aspx/frmLogin.aspx");
            }


            
        }
    }
}