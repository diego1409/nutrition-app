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
    public partial class frmListaUsuarios : System.Web.UI.Page
    {
        ManejoDatos md = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                foreach (Usuario item in md.ListaUsuarios())
                {
                    usuarios.Text = usuarios.Text + "<tr><td>" + item._Cedula + "</td><td>" + item._Nombre + " " + item._Apellido1 + " " + item._Apellido2 + "</td><td>" + item._Telefono1 + "</td><td>" + item._Correo + "</td><td> <a class='btn btn-primary btn-block' href='frmModificaUsuario.aspx?cedula="+ item._Cedula + "'>Modificar</a></td><td> <a class='btn btn-danger btn-block' href='frmDarDeBajaUsuario.aspx?cedula=" + item._Cedula + "'>Dar de baja</a></td></tr>";
                }
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmInsertaAdmin.aspx");
        }
        protected void btnEliminar_Click(object sender, EventArgs e)
        {

        }
    }
}