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
    public partial class frmInsertaAdmin : System.Web.UI.Page
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

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            ///Verificar que todas las validaciones hayan sido satisfactorias.
                if (txtPass.Text == txtConfirmarPass.Text)
                {
                    Usuario nuevo_usuario = new Usuario();
                    nuevo_usuario._Cedula = txtNumIdentificacion.Text;
                    nuevo_usuario._Genero = ddlGenero.SelectedValue;
                    nuevo_usuario._FechaNac = Convert.ToDateTime(txtFechaNac.Text);
                    nuevo_usuario._Nombre = txtNombre.Text;
                    nuevo_usuario._Apellido1 = txtPrimerApellido.Text;
                    nuevo_usuario._Apellido2 = txtSegundoApellido.Text;
                    nuevo_usuario._Direccion = txtDireccion.Text;
                    nuevo_usuario._Telefono1 = txtTelefono.Text;
                    nuevo_usuario._Estatura = 0;
                    nuevo_usuario._Peso = 0;
                    nuevo_usuario._Proposito = "";
                    nuevo_usuario._Correo = txtCorreo.Text;
                    nuevo_usuario._NomUsuario = txtNomUsuario.Text;
                    nuevo_usuario._Contrasena = txtPass.Text;
                    nuevo_usuario._TipoUsuario = ddlTipoUsuario.SelectedValue;

                    ManejoDatos InsertaUsuario = new ManejoDatos();
                    InsertaUsuario.insertar_usuario(nuevo_usuario);
                    Session["ClaseUsuario"] = nuevo_usuario;
                    Response.Redirect("frmListaUsuarios.aspx");
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