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

        //Variable para determinar tipo usuario y si usuario esta logueado
        public string tipoUsuario;
        public bool logged;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            setMasterPage();
        }

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

        /// <summary>
        /// Metodo para validar el tipo de usuario en cada pagina
        /// </summary>
        void setMasterPage()
        {
            logged = Convert.ToBoolean(this.Session["UsuarioLogueado"]);

            //Verificar si el user esta logueado
            if (logged)
            {
                string tipoUsuario = Session["tipoUsuario"].ToString();

                //Validar que el valor sea correcto
                if (tipoUsuario != null)
                {
                    //Se usa trim para quitar espacios en blanco
                    tipoUsuario = tipoUsuario.Trim();

                    if (tipoUsuario == "C")
                    {
                        Page.MasterPageFile = "~/src/aspx/masterPageUser.Master";
                    }
                    else if (tipoUsuario == "A")
                    {
                        Page.MasterPageFile = "~/src/aspx/masterPageAdmin.Master";
                    }
                }
                else
                {
                    Response.Redirect("frmLogin.aspx");
                }
            }
            else
            {
                Response.Redirect("frmLogin.aspx");
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmInsertaReceta.aspx");
        }
    }
}