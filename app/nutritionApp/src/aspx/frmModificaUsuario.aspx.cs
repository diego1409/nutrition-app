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
        protected void Page_Load(object sender, EventArgs e)
        {
            //se pregunta si no es una recarga de pagina...
            //validar si es la primera vez que carga la pagina
            //para que no cargue las listas cuando se da click
            //en el boton de guardar
            if (!this.IsPostBack)
            {
                
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            ///Verificar que todas las validaciones hayan sido satisfactorias.
                if (txtPass.Text == txtConfirmarPass.Text)
                {
                    Usuario usuario = new Usuario();
                    usuario._Cedula = txtNumIdentificacion.Text;
                    usuario._Genero = ddlGenero.SelectedValue;
                    usuario._FechaNac = Convert.ToDateTime(txtFechaNac.Text);
                    usuario._Nombre = txtNombre.Text;
                    usuario._Apellido1 = txtPrimerApellido.Text;
                    usuario._Apellido2 = txtSegundoApellido.Text;
                    usuario._Direccion = txtDireccion.Text;
                    usuario._Telefono1 = txtTelefono.Text;
                    usuario._Estatura = Convert.ToInt32(txtEstatura.Text);
                    usuario._Peso = Convert.ToDecimal(txtPeso.Text);
                    usuario._Proposito = txtProposito.Text;
                    usuario._Correo = txtCorreo.Text;
                    usuario._NomUsuario = txtNomUsuario.Text;
                    usuario._Contrasena = txtPass.Text;
                    usuario._TipoUsuario = "C";

                    ManejoDatos md = new ManejoDatos();
                    md.modificar_usuario(usuario);
                    Response.Redirect("Menu.aspx");
                }
                else
                {
                    Response.Write("<script>window.alert('Contraseñas no coinciden. Por favor verificar');</script>");
                    txtPass.Text = "";
                    txtConfirmarPass.Text = "";
                }
        }
    }
}