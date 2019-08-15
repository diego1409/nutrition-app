using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritionApp.src.aspx
{
    public partial class frmLogoff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                if (ValidarUsuario())
                {
                    //Consultar el valor del parámetro enviado
                    //En este caso, el id_Usuario
                    this.Session["UsuarioLogueado"] = false;
                    Response.Redirect("~/src/aspx/frmLogin");
                }
                else
                    Response.Redirect("~/src/aspx/frmLogin");
            }
        }

        /// <summary>
        /// Valida si hay un usuario logueado o no
        /// </summary>
        /// <returns>El valor de la variable de Session Logged</returns>
        bool ValidarUsuario()
        {

            //Valor de logged para definir si es true o false
            return Convert.ToBoolean(this.Session["UsuarioLogueado"]);

        }
    }
}