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
        string contrasenaAntigua;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                cedulaUsuarioModificar = Request.QueryString["cedula"];
                txtNumIdentificacion.Text = cedulaUsuarioModificar;
                txtNumIdentificacion.Enabled = false;
                //se pregunta si no es una recarga de pagina...
                //validar si es la primera vez que carga la pagina
                //para que no cargue las listas cuando se da click
                //en el boton de guardar
                ManejoDatos mostrar = new ManejoDatos();
                Usuario usuario = new Usuario();
                usuario._Cedula = cedulaUsuarioModificar;
                foreach (Usuario item in mostrar.RetornaUsuario(usuario))
                {
                    //Seteando cada uno de los campos del form de acuerdo al usuario
                    txtNombre.Text = item._Nombre;
                    txtPrimerApellido.Text = item._Apellido1;
                    txtSegundoApellido.Text = item._Apellido2;
                    txtCorreo.Text = item._Correo;
                    txtDireccion.Text = item._Direccion;
                    txtEstatura.Text = item._Estatura.ToString();
                    txtPeso.Text = item._Peso.ToString();
                    txtProposito.Text = item._Proposito;
                    ddlGenero.SelectedValue = item._Genero;
                    ddlTipoUsuario.SelectedValue = item._TipoUsuario;
                    txtFechaNac.Text = item._FechaNac.ToString();
                    txtNomUsuario.Text = item._NomUsuario;
                    txtTelefono.Text = item._Telefono1;

                    //Se guarda la contrasena en caso de que el user desee cambiarla
                    contrasenaAntigua = item._Contrasena;
                    
                }
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            ///Verificar que todas las validaciones hayan sido satisfactorias.
            if (txtPass.Text == txtConfirmarPass.Text)
            {
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
                usuarioModificar._Proposito = txtProposito.Text;
                usuarioModificar._Correo = txtCorreo.Text;
                usuarioModificar._NomUsuario = txtNomUsuario.Text;
                usuarioModificar._Contrasena = txtPass.Text;
                usuarioModificar._TipoUsuario = ddlTipoUsuario.SelectedValue;

                ManejoDatos md = new ManejoDatos();
                md.modificar_usuario(usuarioModificar);
                Response.Redirect("frmIMC.aspx");
            }
            else
            {
                Response.Write("<script>window.alert('Por favor verifique su contrasena nueva. No coincide en los campos.');</script>");
                txtPass.Text = "";
                txtConfirmarPass.Text = "";
            }
        }
    }
}