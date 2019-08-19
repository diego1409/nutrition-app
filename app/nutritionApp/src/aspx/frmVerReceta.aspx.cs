using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Clases de conexion
using nutritionApp.Clases;

using System.Data.OleDb;

namespace nutritionApp.src.aspx
{
    public partial class frmVerReceta : System.Web.UI.Page
    {
        //Variables publicas
        public ManejoDatos retorna = new ManejoDatos();
        public OleDbDataReader lista;
        public int idReceta;
        public receta receta;
        public string dificultad;
        public string ingredientesReceta;

        //Variable para determinar tipo usuario y si usuario esta logueado
        public string tipoUsuario;
        public bool logged;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            setMasterPage();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //se pregunta si no es una recarga de pagina...
            //validar si es la primera vez que carga la pagina
            //para que no cargue las listas cuando se da click
            //en el boton de guardar
            if (!this.IsPostBack)
            {
                //Se obtiene el id de la receta
                idReceta = Convert.ToInt32(this.Request.QueryString["idReceta"]);
                receta = new receta();
                receta._idReceta = idReceta;

                //Obtener datos de receta
                foreach (receta item in retorna.RetornaRecetaID(receta))
                {
                    //Seteando cada valor para mostrarlo en la ventana
                    receta._Nombre = item._Nombre;

                    //F= Fácil, M= Media, D= Difícil
                    switch (item._Dificultad.ToString().Trim())
                    {
                        case "F":
                            dificultad = "Fácil";
                            break;

                        case "M":
                            dificultad = "Medio";
                            break;

                        case "D":
                            dificultad = "Difícil";
                            break;

                        default:
                            dificultad = "N/A";
                            break;
                    }

                    receta._Tiempo = item._Tiempo;

                    //D= Desayuno, MM= Merienda Mañana, A= Almuerzo, MT= Merienda Tarde, C= Cena, MN= Merienda Noche
                    switch (item._TiempoComida.Trim())
                    {
                        case "D":
                            receta._TiempoComida = "Desayuno";
                            break;

                        case "MM":
                            receta._TiempoComida = "Merienda Mañana";
                            break;

                        case "A":
                            receta._TiempoComida = "Almuerzo";
                            break;

                        case "MT":
                            receta._TiempoComida = "Merienda Tarde";
                            break;

                        case "C":
                            receta._TiempoComida = "Cena";
                            break;

                        default:
                            receta._TiempoComida = "N/A";
                            break;
                    }

                    receta._Carbos = item._Carbos;
                    receta._Proteinas = item._Proteinas;
                    receta._Grasas = item._Grasas;
                    receta._Azucares = item._Azucares;
                    receta._Calorias = item._Calorias;
                    receta._Pasos = item._Pasos;

                    ingredientesReceta = "";

                    //obtener ingredientes de receta
                    foreach (ingrediente_receta ingrediente in retorna.ListaIngredientesReceta(idReceta))
                    {
                        ingredientesReceta = ingredientesReceta + "<li class=\"list-group-item\"> " + ingrediente._Cantidad + " "  + ingrediente._Medida  + " de " + ingrediente._Nombre_ingrediente + "</li>";
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
    }
}