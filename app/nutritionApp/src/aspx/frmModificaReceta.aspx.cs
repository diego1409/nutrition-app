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
        ManejoDatos md = new ManejoDatos();
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

                    foreach (ingrediente_receta item in md.ListaIngredientesReceta(IdRecetaModificar))
                    {
                    ingrediente_receta.Text = ingrediente_receta.Text + "<tr><td>" + item._Nombre_ingrediente + "</td><td>" + item._Cantidad + "</td><td>" + item._Medida + "</td><td>" + item._Observaciones + "</td><td> <a class='btn btn-primary btn-block' href='frmModificaIngredienteReceta.aspx?idReceta=" + item._IdReceta + "&idIngrediente="+item._IdIngrediente+"'>Modificar</a></td></tr>";
                    }

                foreach (ingrediente item in md.ListaIngredientes())
                {
                    ddlIngredientes.Items.Add(new ListItem(item._Nombre, item._IdIngrediente.ToString()));
                }
            }
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            ///Verificar que todas las validaciones hayan sido satisfactorias.
            receta recetaModificar = new receta();
            recetaModificar._idReceta = Convert.ToInt32(txtIdReceta.Text);
            recetaModificar._Nombre = txtNombre.Text;
            recetaModificar._Dificultad = Convert.ToChar(ddlDificultad.SelectedValue);
            recetaModificar._Tiempo = Convert.ToInt32(txtTiempo.Text);
            recetaModificar._TiempoComida = ddlTiempoComida.SelectedValue;
            recetaModificar._Carbos = Convert.ToDecimal(txtCarbos.Text);
            recetaModificar._Proteinas = Convert.ToDecimal(txtProteinas.Text);
            recetaModificar._Grasas = Convert.ToDecimal(txtGrasas.Text);
            recetaModificar._Azucares = Convert.ToDecimal(txtAzucares.Text);
            recetaModificar._Calorias = Convert.ToInt32(txtCalorias.Text);
            recetaModificar._Pasos = txtPasos.Text;

            ManejoDatos md = new ManejoDatos();
            md.modificar_receta(recetaModificar);
            Response.Redirect("frmListaRecetas.aspx");
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmListaUsuarios.aspx");
        }

        protected void btnRegistrarIngrediente_Click(object sender, EventArgs e)
        {
            md.insertar_ingrediente(txtNuevoIngrediente.Text);
            ddlIngredientes.Items.Clear();
            foreach (ingrediente item in md.ListaIngredientes())
            {
                ddlIngredientes.Items.Add(new ListItem(item._Nombre, item._IdIngrediente.ToString()));
            }
        }
        protected void btnAgregarIngrediente_Click(object sender, EventArgs e)
        {
            ingrediente_receta ingredienteReceta = new ingrediente_receta();
            ingredienteReceta._IdIngrediente = Convert.ToInt16(ddlIngredientes.SelectedValue);
            ingredienteReceta._Cantidad = Convert.ToDecimal(txtCantidad.Text);
            ingredienteReceta._Medida = txtMedida.Text;
            ingredienteReceta._Observaciones = txtObservaciones.Text;
            md.insertar_ingrediente_receta(ingredienteReceta);
            Response.Redirect("frmModificaReceta.aspx?idReceta=" + txtIdReceta.Text);
        }

    }
}