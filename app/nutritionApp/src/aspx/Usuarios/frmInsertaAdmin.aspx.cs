using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritionApp.src.aspx.Usuarios
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
            if (this.IsValid)
            {
                /*
                //Este bloque de código va a verificar que el correo no se repita en la base de datos
                //Variable que almacena el objeto que retorna el procedimiento
                sp_RetornarUsuariosCorreo_Result registroCorreo = new sp_RetornarUsuariosCorreo_Result();

                //Invocar el procedimiento
                //Es necesario el First Or Default por si hay valores nulos
                registroCorreo = this.modelo.sp_RetornarUsuariosCorreo(this.txtCorreo.Text).FirstOrDefault();

                //Validar si el objeto es nulo
                if (registroCorreo != null)
                {
                    this.lblResultado.Text = "El correo electrónico del administrador ya está registrado. Por favor, ingresa un correo diferente.";
                }
                else
                {
                    try
                    {

                        //// Invocar al procedimiento de la base de datos.
                        // Procedimiento para agregar en la tabla Usuarios
                        // para credenciales de correo y password.
                        this.modelo.sp_InsertarUsuarios(
                            this.txtCorreo.Text,
                            this.txtPass.Text,
                            this.txtNumIdentificacion.Text,
                            this.txtNombre.Text,
                            this.txtPrimerApellido.Text,
                            this.txtSegundoApellido.Text,
                            this.ddlTipoAdministrador.SelectedValue
                            );

                        ///Mostrar el mensaje resultado
                        this.lblResultado.Text = "Datos del administrador registrados correctamente.";


                    }
                    catch (Exception error)
                    {

                        this.lblResultado.Text = "No se logró registrar los datos del administrador en la base de datos.";

                    }
                }
                */
            }
        }
    }
}