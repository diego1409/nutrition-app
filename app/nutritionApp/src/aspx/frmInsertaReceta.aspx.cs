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
    public partial class frmInsertaReceta : System.Web.UI.Page
    {
        ManejoDatos md = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {

                foreach (ingrediente item in md.ListaIngredientes())
                {
                    ddlIngredientes.Items.Add(new ListItem(item._Nombre,item._IdIngrediente.ToString()));
                }
            }
        }

        protected void btnAgregarIngrediente_Click(object sender, EventArgs e)
        {
            lblListaIngredientesReceta.Text = " "+lblListaIngredientesReceta.Text + ddlIngredientes.SelectedItem.Text+",";
            ingrediente_receta ingredienteReceta = new ingrediente_receta();
            ingredienteReceta._IdIngrediente = Convert.ToInt16(ddlIngredientes.SelectedValue);
            ingredienteReceta._Cantidad = Convert.ToDecimal(txtCantidad.Text);
            ingredienteReceta._Medida = txtMedida.Text;
            ingredienteReceta._Observaciones = txtObservaciones.Text;
            md.insertar_ingrediente_receta(ingredienteReceta);
        }

        protected void btnCrearReceta_Click(object sender, EventArgs e)
        {
            receta nueva_receta = new receta();
            nueva_receta._Nombre = txtNombre.Text;
            nueva_receta._Dificultad = Convert.ToChar(ddlDificultad.SelectedValue);
            nueva_receta._Tiempo = Convert.ToInt16(txtTiempo.Text);
            nueva_receta._TiempoComida = ddlTiempoComida.SelectedValue;
            nueva_receta._Carbos = Convert.ToDecimal(txtCarbos.Text);
            nueva_receta._Proteinas = Convert.ToDecimal(txtProteinas.Text);
            nueva_receta._Grasas = Convert.ToDecimal(txtGrasas.Text);
            nueva_receta._Azucares = Convert.ToDecimal(txtAzucares.Text);
            nueva_receta._Calorias = Convert.ToInt16(txtCalorias.Text);
            md.insertar_receta(nueva_receta);

            //Se guardara la foto de la receta con el nombre de su ID en /img/recetas/
            string ultimaReceta = md.RetornaUltimaReceta().ToString();

            fotoReceta.SaveAs(Server.MapPath("../img/recetas/"+ ultimaReceta + ".jpg"));

            txtCantidad.Enabled = true;
            txtMedida.Enabled = true;
            txtObservaciones.Enabled = true;
            txtNuevoIngrediente.Enabled = true;
            ddlIngredientes.Enabled = true;
            btnAgregarIngrediente.Enabled = true;
            btnRegistrarIngrediente.Enabled = true;
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

        protected void btnInsertarPasos_Click(object sender, EventArgs e)
        {
            md.inserta_pasos_receta(txtPasos.Text);
            Response.Redirect("frmListaRecetas.aspx");
        }
    }
}