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
    

    public partial class frmListaPlanes : System.Web.UI.Page
    {
        ManejoDatos md = new ManejoDatos();
        public int idUsuario;

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
                //Se obtiene el id de la persona
                idUsuario = Convert.ToInt32(this.Session["idUsuario"]);

                foreach (planNutricional item in md.ListaPlanes(idUsuario))
                {
                    planes.Text = planes.Text + "<tr><td>" + item.fecha.ToString("MM/dd/yyyy") + " </td><td>" + item.carbos + "</td><td>" + item.proteinas + "</td><td>" + item.grasas + "</td><td>" + item.azucares + "</td><td>" + item.calorias.ToString() + "</td><td> <a class='btn btn-success btn-block' href='frmVerPlan.aspx?idPlan=" + item.idPlan.ToString() + "'>Ver Plan</a></td></tr>";

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
            Response.Redirect("frmCrearPlan.aspx");
        }
    }
}