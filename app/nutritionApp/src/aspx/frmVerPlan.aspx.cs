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
    public partial class frmVerPlan : System.Web.UI.Page
    {
        //Variables publicas
        public ManejoDatos retorna = new ManejoDatos();
        public OleDbDataReader lista;
        public int idUsuario;
        public int idPlan;
        public string cardsComida;

        //Variable para determinar tipo usuario y si usuario esta logueado
        public string tipoUsuario;
        public bool logged;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            setMasterPage();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Se obtiene el id de la persona
            idUsuario = Convert.ToInt32(this.Session["idUsuario"]);
            idPlan = Convert.ToInt32(this.Request.QueryString["idPlan"]);

            //se pregunta si no es una recarga de pagina...
            //validar si es la primera vez que carga la pagina
            //para que no cargue las listas cuando se da click
            //en el boton de guardar
            if (!this.IsPostBack)
            {                
                CalcularCalcAgua();
                MostrarComidas();
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

        /// <summary>
        /// Metodo para calcular calorias necesarias para el plan nutricional
        /// </summary>
        void CalcularCalcAgua()
        {
            //Variables a utilizar
            int calorias = 0; //Resultado a mostrar
            float cantAgua = 0;

            //Se obtienen datos del plan
            planNutricional plan = new planNutricional();
            plan = retorna.RetornaPlanNutricional(idPlan);
            calorias = plan.calorias;

            //Calcular cantidad de agua con base en el peso del usuario
            lista = retorna.RetornaUsuario(idUsuario);
            while (lista.Read())
            {
                cantAgua = (Convert.ToInt32(lista["peso"]) / 7) / 4;
            }

            //Mostrar el resultado en el form
            lblCalorias.Text = calorias.ToString();
            lblLitros.Text = cantAgua.ToString();
        }

        void MostrarComidas()
        {
            //Se inicializan variables
            receta receta = new receta();
            string tiempoComida = "";
            cardsComida = "";
            
            //Desayuno
            tiempoComida = "D";
            receta = retorna.RetornaComida(idPlan, tiempoComida);
            cardsComida += CrearCardComida(receta, "Desayuno");

            //Merienda Manana
            tiempoComida = "MM";
            receta = retorna.RetornaComida(idPlan, tiempoComida);
            cardsComida += CrearCardComida(receta, "Merienda Mañana");

            //Almuerzo
            tiempoComida = "A";
            receta = retorna.RetornaComida(idPlan, tiempoComida);
            cardsComida += CrearCardComida(receta, "Almuerzo");

            //Merienda Tarde
            tiempoComida = "MT";
            receta = retorna.RetornaComida(idPlan, tiempoComida);
            cardsComida += CrearCardComida(receta, "Merienda Tarde");

            //Cena
            tiempoComida = "C";
            receta = retorna.RetornaComida(idPlan, tiempoComida);
            cardsComida += CrearCardComida(receta, "Cena");

        }

        string CrearCardComida (receta receta, string tiempoComida)
        {
            string tipoUsuario = Session["tipoUsuario"].ToString();

            //Validar que el valor sea correcto
            if (tipoUsuario != null)
            {
                //Se usa trim para quitar espacios en blanco
                tipoUsuario = tipoUsuario.Trim();

                if (tipoUsuario == "C")
                {
                    return  "<div class=\"col-lg-4 col-md-12 col-sm-12 col-xs-12 mb-5\">\n" +
                                "<div class=\"card\">\n" +
                                    "<img class=\"card-img-top\" src=\"../img/recetas/" + receta._idReceta.ToString() + ".jpg\" height=\"300\" alt=\"" + tiempoComida + "\">\n" +
                                    "<div class=\"card-body\">\n" +
                                        "<h2 class=\"card-title text-center\">" + receta._Nombre + "</h2>\n" +
                                        "<h6 class=\"card-subtitle mb-2 text-center\">" + tiempoComida + "</h6>\n" +
                                        "<p class=\"text-center\">\n" +
                                            "<a href=\"frmVerReceta.aspx?idReceta=" + receta._idReceta.ToString() + "\" class=\"btn btn-primary\">Ver Receta</a>\n" +
                                        "</p>\n" +
                                    "</div>\n" +
                                "</div>\n" +
                            "</div>\n";
                }
                else if (tipoUsuario == "A")
                {
                    return "<div class=\"col-lg-4 col-md-12 col-sm-12 col-xs-12 mb-5\">\n" +
                                "<div class=\"card\">\n" +
                                    "<img class=\"card-img-top\" src=\"../img/recetas/" + receta._idReceta.ToString() + ".jpg\" height=\"300\" alt=\"" + tiempoComida + "\">\n" +
                                    "<div class=\"card-body\">\n" +
                                        "<h2 class=\"card-title text-center\">" + receta._Nombre + "</h2>\n" +
                                        "<h6 class=\"card-subtitle mb-2 text-center\">" + tiempoComida + "</h6>\n" +
                                        "<p class=\"text-center\">\n" +
                                            "<a href=\"frmVerReceta.aspx?idReceta=" + receta._idReceta.ToString() + "\" class=\"btn btn-primary\">Ver Receta</a>\n" +
                                            "<a href=\"frmModificaReceta.aspx?idReceta=" + receta._idReceta.ToString() + "\" class=\"btn btn-warning\">Editar Receta</a>\n" +
                                        "</p>\n" +
                                    "</div>\n" +
                                "</div>\n" +
                            "</div>\n";
                }
                else
                {
                    return "";
                }
            }
            else
            {
                return "";
            }

        }
    }
}