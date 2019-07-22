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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string cedulaUsuario = Request.QueryString["cedula"];
                //se pregunta si no es una recarga de pagina...
                //validar si es la primera vez que carga la pagina
                //para que no cargue las listas cuando se da click
                //en el boton de guardar
                ManejoDatos mostrar = new ManejoDatos();
                Usuario usuario = new Usuario();
                usuario._Cedula = cedulaUsuario;
                foreach (Usuario item in mostrar.RetornaUsuarioCedula(usuario))
                {
                    //Seteando cada uno de los campos del form de acuerdo al usuario
                    lblBienvenida.Text = "Bienvenido "+item._Nombre;
                }
            }
        }
    }
}