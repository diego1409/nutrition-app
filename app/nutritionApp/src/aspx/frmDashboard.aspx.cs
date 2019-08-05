using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritionApp.src.aspx
{
    public partial class frmDashboard : System.Web.UI.Page
    {
        //Variable para determinar tipo usuario y si usuario esta logueado
        public string tipoUsuario;
        public bool logged;
        public string linkDashboard;

        protected void Page_Load(object sender, EventArgs e)
        {
            logged = Convert.ToBoolean(this.Session["UsuarioLogueado"]);

            //Verificar si el user esta logueado
            if (logged)
            {
                string tipoUsuario = Session["tipoUsuario"].ToString();

                //Validar que el valor sea correcto
                if (tipoUsuario != null)
                {
                    //Se usa trim para quitar espacios en blanco
                    tipoUsuario = tipoUsuario.Trim();

                    if (tipoUsuario == "C")
                    {
                       Response.Redirect("frmDashboardCliente.aspx");
                    }
                    else if (tipoUsuario == "A")
                    {
                        Response.Redirect("frmDashboardAdministrador.aspx");
                    }
                }
                else
                {
                    Response.Redirect("frmLogin.aspx");
                }
            }
            else
            {
                Response.Redirect("frmLogin.aspx");
            }
        }
    }
}
