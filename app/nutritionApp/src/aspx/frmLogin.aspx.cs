using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritionApp.src.aspx
{
    public partial class frmLogin : System.Web.UI.Page
    {
        SaladEntities modeloBD = new SaladEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_onClick(object sender, EventArgs e)
        {
            if (this.Page.IsValid)
            {
                // invocar aquí el sp de retornaUsuarioPass

                if (resultado_sp != null)
                {
                    this.Session.Add();

                }
            }
        }
    }

   

}