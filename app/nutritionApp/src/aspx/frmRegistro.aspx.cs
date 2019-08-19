using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Clases de conexion
using nutritionApp.Clases;

using System.IO;

namespace nutritionApp.src.aspx
{
    public partial class frmRegistro : System.Web.UI.Page
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
            if (this.IsValid) {
                //Se insertan los datos del usuario en una clase
                Usuario nuevo_usuario = new Usuario();
                nuevo_usuario._Cedula = txtNumIdentificacion.Text;
                nuevo_usuario._Genero = ddlGenero.SelectedValue;
                nuevo_usuario._FechaNac = Convert.ToDateTime(txtFechaNac.Text);
                nuevo_usuario._Nombre = txtNombre.Text;
                nuevo_usuario._Apellido1 = txtPrimerApellido.Text;
                nuevo_usuario._Apellido2 = txtSegundoApellido.Text;
                nuevo_usuario._Direccion = txtDireccion.Text;
                nuevo_usuario._Telefono1 = txtTelefono.Text;
                nuevo_usuario._Estatura = Convert.ToInt32(txtEstatura.Text);
                nuevo_usuario._Peso = Convert.ToDecimal(txtPeso.Text);
                nuevo_usuario._Proposito = ddlProposito.SelectedValue;
                nuevo_usuario._Correo = txtCorreo.Text;
                nuevo_usuario._NomUsuario = txtNomUsuario.Text;
                nuevo_usuario._Contrasena = txtPass.Text;
                nuevo_usuario._TipoUsuario = "C";

                //Se inserta el usuario en la bd para registrarlo
                ManejoDatos md = new ManejoDatos();
                md.insertar_usuario(nuevo_usuario);

                fupAgregarFoto.SaveAs(Server.MapPath("../img/usuarios/" + nuevo_usuario._Cedula + ".jpg"));

                //Se crean variables de sesion para el usuario
                int idUsuario = md.RetornaUsuarioPass(nuevo_usuario);
                this.Session.Add("UsuarioLogueado", true);
                this.Session.Add("IdUsuario", idUsuario);
                //Se agregar variables de sesion con los datos principales
                this.Session.Add("Nombre", nuevo_usuario._Nombre);
                this.Session.Add("Apellido1", nuevo_usuario._Apellido1);
                this.Session.Add("Apellido2", nuevo_usuario._Apellido2);
                this.Session.Add("Cedula", nuevo_usuario._Cedula);
                this.Session.Add("tipoUsuario", nuevo_usuario._TipoUsuario);

                // login tipo Cliente
                this.Response.Redirect("~/src/aspx/frmDashboardCliente.aspx");
            }
            else
            {
                Response.Write("<script>window.alert('Contraseñas no coinciden porfavor verificar');</script>");
                txtPass.Text = "";
                txtConfirmarPass.Text = "";
            }
        }

        protected void hplCargarFoto_Click(object sender, EventArgs e)
        {
            //Variables a utilizar
            Byte[] Archivo = null;
            string rutaArchivo = string.Empty;
            string nombreArchivo = string.Empty;
            string extensionArchivo = string.Empty;

            //Verificar si ya se selecciono una foto
            if (fupAgregarFoto.HasFile)
            {
                using (BinaryReader reader = new BinaryReader(fupAgregarFoto.PostedFile.InputStream))
                {
                    Archivo = reader.ReadBytes(fupAgregarFoto.PostedFile.ContentLength);
                }

                rutaArchivo = Server.MapPath(fupAgregarFoto.FileName);
                nombreArchivo = Path.GetFileNameWithoutExtension(fupAgregarFoto.FileName);
                extensionArchivo = Path.GetExtension(fupAgregarFoto.FileName);

                //imgPerfil.ImageUrl = rutaArchivo;
            }
        }
    }
}