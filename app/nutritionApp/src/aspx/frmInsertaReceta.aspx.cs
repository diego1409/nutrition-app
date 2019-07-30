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
    public partial class frmInsertaReceta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ManejoDatos md = new ManejoDatos();
            if (!IsPostBack)
            {

                foreach (ingrediente item in md.ListaIngredientes())
                {
                    ddlIngredientes.Items.Add(new ListItem(item._Nombre,item._IdIngrediente.ToString()));
                }
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
                    //Usuario nuevo_usuario = new Usuario();
                    //nuevo_usuario._Cedula = txtNumIdentificacion.Text;

                    //ManejoDatos InsertaUsuario = new ManejoDatos();
                    //InsertaUsuario.insertar_usuario(nuevo_usuario);
                    //Session["ClaseUsuario"] = nuevo_usuario;
                    //Response.Redirect("frmListaUsuarios.aspx");

        }

        protected void btnAgregarIngrediente_Click(object sender, EventArgs e)
        {

        }
    }
}