using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Clases de conexion
using nutritionApp.Clases;

namespace nutritionApp.src.aspx
{
    public partial class frmListaRecetas : System.Web.UI.Page
    {
        ManejoDatos md = new ManejoDatos();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                foreach (receta item in md.ListaRecetas())
                {
                    string imagen = "../img/recetas/"+ item._idReceta + ".jpg";
                    if (File.Exists(Server.MapPath(imagen)))
                    {
                        recetas.Text = recetas.Text + "<tr><td>" + item._Nombre + "</td><td>" + item._Tiempo + "</td><td>" + item._TiempoComida + "</td><td><img src='../img/recetas/" + item._idReceta + ".jpg' alt='" + item._Nombre + "' height='100' width='120'></td><td> <a class='btn btn-primary btn-block' href='frmModificaReceta.aspx?idReceta=" + item._idReceta + "'>Modificar</a></td></tr>";
                    }
                    else
                    {
                        recetas.Text = recetas.Text + "<tr><td>" + item._Nombre + "</td><td>" + item._Tiempo + "</td><td>" + item._TiempoComida + "</td><td>No hay muestra</td><td> <a class='btn btn-primary btn-block' href='frmModificaReceta.aspx?idReceta=" + item._idReceta + "'>Modificar</a></td></tr>";
                    }
                    
                }
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmInsertaReceta.aspx");
        }
    }
}