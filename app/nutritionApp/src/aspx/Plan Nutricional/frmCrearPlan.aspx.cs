using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Clases de conexion
using nutritionApp.Clases;

using System.Data.OleDb;

namespace nutritionApp.src.aspx.Plan_Nutricional
{
    public partial class frmCrearPlan : System.Web.UI.Page
    {
        //Variables publicas
        public ManejoDatos retorna = new ManejoDatos();
        public OleDbDataReader lista;
        public int idUsuario;

        protected void Page_Load(object sender, EventArgs e)
        {
            //se pregunta si no es una recarga de pagina...
            //validar si es la primera vez que carga la pagina
            //para que no cargue las listas cuando se da click
            //en el boton de guardar
            if (!this.IsPostBack)
            {
                CargaIngredientes();
                this.Session.Add("idUsuario", 2);
                CalcularCalc();
            }

            
        }

        /// <summary>
        /// Método para cargar todos los ingredientes
        /// </summary>
        void CargaIngredientes()
        {
            //Variables a utilizar
            ListItem item;
            idUsuario = Convert.ToInt32(this.Session["idUsuario"]);

            //Cargar la lista de ingredientes
            lista = retorna.RetornaIngrediente();

            while (lista.Read())
            {
                item = new ListItem(lista["nombre"].ToString(), lista["idIngrediente"].ToString());
                chkAlergias.Items.Add(item);
            }

            //Cargar las alergias del usuario
            lista = retorna.RetornaAlergias(idUsuario);

            while (lista.Read())
            {
                foreach (ListItem ingrediente in chkAlergias.Items)
                {
                    if (ingrediente.Value == lista["idIngrediente"].ToString())
                    {
                        ingrediente.Selected = true;
                    }
                }
            }
        }


        /// <summary>
        /// Metodo para calcular calorias necesarias para el plan nutricional
        /// </summary>
        void CalcularCalc()
        {
            //Variables a utilizar
            int calorias = 0; //Resultado a mostrar
            decimal peso = 0; //Peso a obtener del usuario
            double nivelActividad = 0.2; //Actividad fisica (se asumira como nula: 0.2)
            //Variables de resultados
            decimal necesidadCaloricaBasica = 0;
            decimal actividadFisica = 0;
            decimal caloriasMantenerPeso = 0;

            //Se obtiene el peso de la persona
            idUsuario = Convert.ToInt32(this.Session["idUsuario"]);
            lista = retorna.RetornaUsuario(idUsuario);
            Usuario user = new Usuario();
            user = retorna.almacenarDatosUsuario(lista, user);
            peso = user._Peso;

            //Se calcula la necesidad calorica basica
            necesidadCaloricaBasica = (Convert.ToDecimal(2.204615) * peso) * 11;

            //Se calcula la actividad fisica con base en el nivel de actividad
            //y la necesidad calorica basica
            actividadFisica = necesidadCaloricaBasica * Convert.ToDecimal(nivelActividad);

            //Se calculan las calorias para mantener el peso
            caloriasMantenerPeso = necesidadCaloricaBasica + actividadFisica;

            //Se define (dependiendo del proposito) la cantidad de calorias para consumir
            if (user._Proposito == "Bajar porcentaje de grasa")
            {
                calorias = Convert.ToInt32(caloriasMantenerPeso) - 500;
            }
            else
            {
                calorias = Convert.ToInt32(caloriasMantenerPeso);
            }

            //Mostrar el resultado en el form
            lblCalorias.Text = calorias.ToString();
        }
    }
}