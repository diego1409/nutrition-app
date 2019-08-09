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
    public partial class frmModificaReceta : System.Web.UI.Page
    {
        int IdRecetaModificar;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                IdRecetaModificar = Convert.ToInt32(this.Request.QueryString["idReceta"]);
                txtIdReceta.Text = IdRecetaModificar.ToString();
                txtIdReceta.Enabled = false;
                //se pregunta si no es una recarga de pagina...
                //validar si es la primera vez que carga la pagina
                //para que no cargue las listas cuando se da click
                //en el boton de guardar
                ManejoDatos mostrar = new ManejoDatos();
                receta Receta = new receta();
                Receta._idReceta = IdRecetaModificar;
                foreach (receta item in mostrar.RetornaRecetaID(Receta))
                {
                    //Seteando cada uno de los campos del form de acuerdo al usuario
                    txtIdReceta.Text = item._idReceta.ToString();
                    txtNombre.Text = item._Nombre;
                    ddlDificultad.SelectedValue = item._Dificultad.ToString();
                    txtTiempo.Text = item._Tiempo.ToString();
                    ddlTiempoComida.SelectedValue = item._TiempoComida;
                    txtCarbos.Text = item._Carbos.ToString();
                    txtProteinas.Text = item._Proteinas.ToString();
                    txtGrasas.Text = item._Grasas.ToString();
                    txtAzucares.Text = item._Azucares.ToString();
                    txtCalorias.Text = item._Calorias.ToString();
                    txtPasos.Text = item._Pasos;
                    
                }
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            ///Verificar que todas las validaciones hayan sido satisfactorias.
                //Usuario usuarioModificar = new Usuario();
                //usuarioModificar._Cedula = txtNumIdentificacion.Text;
                //usuarioModificar._Genero = ddlGenero.SelectedValue;
                //usuarioModificar._FechaNac = Convert.ToDateTime(txtFechaNac.Text);
                //usuarioModificar._Nombre = txtNombre.Text;
                //usuarioModificar._Apellido1 = txtPrimerApellido.Text;
                //usuarioModificar._Apellido2 = txtSegundoApellido.Text;
                //usuarioModificar._Direccion = txtDireccion.Text;
                //usuarioModificar._Telefono1 = txtTelefono.Text;
                //usuarioModificar._Estatura = Convert.ToInt32(txtEstatura.Text);
                //usuarioModificar._Peso = Convert.ToDecimal(txtPeso.Text);
                //usuarioModificar._Proposito = ddlProposito.SelectedValue;
                //usuarioModificar._Correo = txtCorreo.Text;
                //usuarioModificar._NomUsuario = txtNomUsuario.Text;
                //usuarioModificar._TipoUsuario = ddlTipoUsuario.SelectedValue;

                //ManejoDatos md = new ManejoDatos();
                //md.modificar_usuario(usuarioModificar);
                //Response.Redirect("frmListausuarios.aspx");
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmListaUsuarios.aspx");
        }
    }
}