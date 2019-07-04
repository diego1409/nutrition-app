using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritionApp.src.aspx.Usuarios
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
            if (txtPass.Text == txtConfirmarPass.Text)
            {
                Usuario usuario_modificar = new Usuario();
                usuario_modificar._Cedula = txtNumIdentificacion.Text;
                //if (fuFotoPerfil.HasFile)
                //{
                //    int fileLen;
                //    string displayString = "";
                //    fileLen = fuFotoPerfil.PostedFile.ContentLength;
                //    byte[] input = new byte[fileLen - 1];
                //    input = fuFotoPerfil.FileBytes;

                //    usuario_modificar._Foto = input;
                //}
                //else
                //{
                //    usuario_modificar._Foto = null;
                //}
                usuario_modificar._Genero = ddlGenero.SelectedValue;
                usuario_modificar._FechaNac = Convert.ToDateTime(txtFechaNac.Text);
                usuario_modificar._Nombre = txtNombre.Text;
                usuario_modificar._Apellido1 = txtPrimerApellido.Text;
                usuario_modificar._Apellido2 = txtSegundoApellido.Text;
                usuario_modificar._Direccion = txtDireccion.Text;
                usuario_modificar._Telefono1 = txtTelefono.Text;
                usuario_modificar._Estatura = Convert.ToInt32(txtEstatura.Text);
                usuario_modificar._Peso = Convert.ToDecimal(txtPeso.Text);
                usuario_modificar._Proposito = txtProposito.Text;
                usuario_modificar._Correo = txtCorreo.Text;
                usuario_modificar._NomUsuario = txtNomUsuario.Text;
                usuario_modificar._Contrasena = txtPass.Text;
                usuario_modificar._TipoUsuario = "C";

                ManejoDatos modificar_usuario = new ManejoDatos();
                modificar_usuario.modificar_usuario(usuario_modificar);
                Session["ClaseUsuario"] = usuario_modificar;
                Response.Redirect("../Menu.aspx");
            }
            else
            {
                Response.Write("<script>window.alert('Contraseñas no coinciden. Por favor verificar.');</script>");
                txtPass.Text = "";
                txtConfirmarPass.Text = "";
            }
        }
    }
}