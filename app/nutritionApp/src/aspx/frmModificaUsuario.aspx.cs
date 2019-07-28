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
    public partial class frmModificaUsuario : System.Web.UI.Page
    {
        string cedulaUsuarioModificar;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                cedulaUsuarioModificar = this.Request.QueryString["cedula"].ToString();
                txtNumIdentificacion.Text = cedulaUsuarioModificar;
                txtNumIdentificacion.Enabled = false;
                //se pregunta si no es una recarga de pagina...
                //validar si es la primera vez que carga la pagina
                //para que no cargue las listas cuando se da click
                //en el boton de guardar
                ManejoDatos mostrar = new ManejoDatos();
                Usuario usuario = new Usuario();
                usuario._Cedula = cedulaUsuarioModificar;
                foreach (Usuario item in mostrar.RetornaUsuarioCedula(usuario))
                {
                    //Seteando cada uno de los campos del form de acuerdo al usuario
                    txtNombre.Text = item._Nombre;
                    txtPrimerApellido.Text = item._Apellido1;
                    txtSegundoApellido.Text = item._Apellido2;
                    txtCorreo.Text = item._Correo;
                    txtDireccion.Text = item._Direccion;
                    txtEstatura.Text = item._Estatura.ToString();
                    txtPeso.Text = item._Peso.ToString();
                    ddlProposito.SelectedValue = item._Proposito;
                    ddlGenero.SelectedValue = item._Genero;
                    ddlTipoUsuario.SelectedValue = item._TipoUsuario;
                    txtFechaNac.Text = item._FechaNac.ToString("yyyy-MM-dd");
                    txtNomUsuario.Text = item._NomUsuario;
                    txtTelefono.Text = item._Telefono1;
                    txtContrasena.Text = item._Contrasena;
                    
                }
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            ///Verificar que todas las validaciones hayan sido satisfactorias.
                Usuario usuarioModificar = new Usuario();
                usuarioModificar._Cedula = txtNumIdentificacion.Text;
                usuarioModificar._Genero = ddlGenero.SelectedValue;
                usuarioModificar._FechaNac = Convert.ToDateTime(txtFechaNac.Text);
                usuarioModificar._Nombre = txtNombre.Text;
                usuarioModificar._Apellido1 = txtPrimerApellido.Text;
                usuarioModificar._Apellido2 = txtSegundoApellido.Text;
                usuarioModificar._Direccion = txtDireccion.Text;
                usuarioModificar._Telefono1 = txtTelefono.Text;
                usuarioModificar._Estatura = Convert.ToInt32(txtEstatura.Text);
                usuarioModificar._Peso = Convert.ToDecimal(txtPeso.Text);
                usuarioModificar._Proposito = ddlProposito.SelectedValue;
                usuarioModificar._Correo = txtCorreo.Text;
                usuarioModificar._NomUsuario = txtNomUsuario.Text;
                usuarioModificar._TipoUsuario = ddlTipoUsuario.SelectedValue;

                if (cbReinicioContrasena.Checked) {
                usuarioModificar._Contrasena = "Salad123";
                }
                else {
                    usuarioModificar._Contrasena = txtContrasena.Text;
                }

                ManejoDatos md = new ManejoDatos();
                md.modificar_usuario(usuarioModificar);
                Response.Redirect("frmIMC.aspx");
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmListaUsuarios.aspx");
        }
    }
}