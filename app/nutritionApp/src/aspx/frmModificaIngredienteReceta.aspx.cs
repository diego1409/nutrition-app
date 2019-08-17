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
    public partial class frmModificaIngredienteReceta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                int idIngrediente = Convert.ToInt32(Request.QueryString["idIngrediente"]);
                int idReceta = Convert.ToInt32(Request.QueryString["idReceta"]);
                txtCodigoIngrediente.Text = idIngrediente.ToString();
                txtCodigoReceta.Text = idReceta.ToString();
                //se pregunta si no es una recarga de pagina...
                //validar si es la primera vez que carga la pagina
                //para que no cargue las listas cuando se da click
                //en el boton de guardar
                ManejoDatos md = new ManejoDatos();
                foreach (ingrediente_receta item in md.RetornaIngredienteReceta(idIngrediente, idReceta))
                {
                    //Seteando cada uno de los campos del form de acuerdo al usuario
                    txtCantidad.Text = item._Cantidad.ToString();
                    txtMedida.Text = item._Medida;
                    txtObservaciones.Text = item._Observaciones;
                    txtNombreIngrediente.Text = item._Nombre_ingrediente;
                }
            }
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmModificaReceta.aspx?idReceta=" + txtCodigoReceta.Text);
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            ingrediente_receta IRmodificar = new ingrediente_receta();
            IRmodificar._IdIngrediente = Convert.ToInt32(txtCodigoIngrediente.Text);
            IRmodificar._IdReceta = Convert.ToInt32(txtCodigoReceta.Text);
            IRmodificar._Cantidad = Convert.ToDecimal(txtCantidad.Text);
            IRmodificar._Medida = txtMedida.Text;
            IRmodificar._Observaciones = txtObservaciones.Text;

            ManejoDatos md = new ManejoDatos();
            md.modificar_ingrediente_receta(IRmodificar);
            Response.Redirect("frmModificaReceta.aspx?idReceta=" + txtCodigoReceta.Text);
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ManejoDatos md = new ManejoDatos();
            md.EliminarIngredienteReceta(Convert.ToInt32(txtCodigoIngrediente.Text), Convert.ToInt32(txtCodigoReceta.Text));
            Response.Redirect("frmModificaReceta.aspx?idReceta=" + txtCodigoReceta.Text);

        }
    }
}