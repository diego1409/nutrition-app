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
    public partial class frmDarDeBajaUsuario : System.Web.UI.Page
    {
        string cedulaUsuarioDarDeBaja;
        string origen = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                cedulaUsuarioDarDeBaja = Request.QueryString["cedula"];
                origen= Request.QueryString["origen"];
                txtNumIdentificacion.Text = cedulaUsuarioDarDeBaja;
                txtOrigen.Text = origen;
                //se pregunta si no es una recarga de pagina...
                //validar si es la primera vez que carga la pagina
                //para que no cargue las listas cuando se da click
                //en el boton de guardar
                ManejoDatos md = new ManejoDatos();
                Usuario usuario = new Usuario();
                usuario._Cedula = cedulaUsuarioDarDeBaja;
                foreach (Usuario item in md.RetornaUsuarioCedula(usuario))
                {
                    //Seteando cada uno de los campos del form de acuerdo al usuario
                    txtNombre.Text = item._Nombre + " " + item._Apellido1 + " "+ item._Apellido2;
                    ddlTipoUsuario.SelectedValue = item._TipoUsuario;
                    txtNomUsuario.Text = item._NomUsuario;

                }
            }
        }

        protected void btnDarDeBaja_Click(object sender, EventArgs e)
        {
            ///Verificar que todas las validaciones hayan sido satisfactorias.
                Usuario usuario = new Usuario();
                usuario._Cedula = txtNumIdentificacion.Text;

                ManejoDatos md = new ManejoDatos();
                md.DarDeBajaUsuario(usuario);
                if(txtOrigen.Text == "listausuarios")
                {
                    Response.Redirect("frmListaUsuarios.aspx");
                }
                else {
                    Response.Redirect("frmLogin.aspx");
                }
                
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmListaUsuarios.aspx");
        }
    }
}