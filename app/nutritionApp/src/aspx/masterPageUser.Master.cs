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
        public string tipoUsuario;
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
                tipoUsuario = Session["tipoUsuario"].ToString();

                //Validar que el valor sea correcto
                if (tipoUsuario != null)
                {
                    //Se usa trim para quitar espacios en blanco
                    tipoUsuario = tipoUsuario.Trim();

                    if (tipoUsuario == "C")
                    {
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
                else
                {
                    //Se redirecciona a login
                    this.Response.Redirect("~/src/aspx/frmLogin.aspx");
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