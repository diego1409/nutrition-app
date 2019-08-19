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
        public int idPlan;

        //Variable para determinar tipo usuario y si usuario esta logueado
        public string tipoUsuario;
        public bool logged;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            setMasterPage();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Se obtiene el id de usuario en formato int
            idUsuario = Convert.ToInt32(this.Session["idUsuario"]);

            //se pregunta si no es una recarga de pagina...
            //validar si es la primera vez que carga la pagina
            //para que no cargue las listas cuando se da click
            //en el boton de guardar
            if (!this.IsPostBack)
            {
                CargaIngredientes();
                //this.Session.Add("idUsuario", 2);
                ObtenerCalcProposito();
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
        /// Método para cargar todos los ingredientes
        /// </summary>
        void CargaIngredientes()
        {
            //Variables a utilizar
            ListItem item;

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
        void ObtenerCalcProposito()
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
            this.lblCalorias.Text = calorias.ToString();

            //Obtener el proposito de la persona
            this.ddlProposito.SelectedValue = user._Proposito;
            cambiarOpciones();
        }

        /// <summary>
        /// Se llama metodo para cambiar las opciones de los dropdownlists
        /// </summary>
        void cambiarOpciones()
        {
            switch (ddlProposito.Text)
            {
                case "Bajar porcentaje de grasa":
                    ddlCarbos.SelectedValue = "B";
                    ddlProteinas.SelectedValue = "A";
                    ddlGrasas.SelectedValue = "B";
                    ddlAzucares.SelectedValue = "N";
                    break;

                case "Ganar masa muscular":
                    ddlCarbos.SelectedValue = "B";
                    ddlProteinas.SelectedValue = "A";
                    ddlGrasas.SelectedValue = "A";
                    ddlAzucares.SelectedValue = "N";
                    break;

                case "Mantener peso":
                    ddlCarbos.SelectedValue = "M";
                    ddlProteinas.SelectedValue = "M";
                    ddlGrasas.SelectedValue = "M";
                    ddlAzucares.SelectedValue = "B";
                    break;

                default:
                    ddlCarbos.SelectedValue = "";
                    ddlProteinas.SelectedValue = "";
                    ddlGrasas.SelectedValue = "";
                    ddlAzucares.SelectedValue = "";
                    break;
            }
        }
        /// <summary>
        /// Para que esta funcion funcione, AutoPostBack tiene que estar
        /// en true dentro del dropdownlist
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ddlProposito_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Se llama metodo para cambiar opciones
            cambiarOpciones();
        }

        protected void btnCrearPlan_Click(object sender, EventArgs e)
        {
            //Se actualizan la lista de alergias de la persona
            ActualizarAlergias();

            //Se crea el plan nutricional
            planNutricional plan = new planNutricional(idUsuario, this.ddlCarbos.SelectedValue, 
                                        this.ddlProteinas.SelectedValue, this.ddlGrasas.SelectedValue, 
                                        this.ddlAzucares.SelectedValue, Convert.ToInt32(this.lblCalorias.Text));

            retorna.InsertaPlanNutricional(plan);

            //Se genera el resto del plan nutricional: comidas recomendadas
            if (SeleccionarComidas())
            {
                Response.Redirect("frmVerPlan.aspx?idPlan=" + idPlan.ToString());
            }
            else
            {
                Response.Write("<script>window.alert('Problemas al crear el plan nutricional. Intente de nuevo más tarde.');</script>");
            }
        }

        void ActualizarAlergias()
        {
            foreach (ListItem ingrediente in chkAlergias.Items)
            {
                if (ingrediente.Selected)
                {
                    retorna.InsertaAlergia(idUsuario, Convert.ToInt32(ingrediente.Value));
                }
                else
                {
                    retorna.EliminaAlergia(idUsuario, Convert.ToInt32(ingrediente.Value));
                }
            }
        }

        bool SeleccionarComidas()
        {
            //Variables a utilizar
            idPlan = retorna.RetornaUltimoPlan();
            int carbos = 0;
            int azucares = 0;
            double proteinas = 0;
            double grasas = 0;
            double caloriasComida = 0;
            planNutricional plan = new planNutricional();
            plan = retorna.RetornaPlanNutricional(idPlan);

            //Datos por comida

            //Carbohidratos
            switch (plan.carbos)
            {
                case "N":
                    carbos = 0;
                    break;

                case "B":
                    carbos = 25;
                    break;

                case "M":
                    carbos = 36;
                    break;

                case "A":
                    carbos = 999;
                    break;

                default:
                    break;

            }

            //Azucares
            switch (plan.azucares)
            {
                case "N":
                    azucares = 0;
                    break;

                case "B":
                    azucares = 5;
                    break;

                case "M":
                    azucares = 10;
                    break;

                case "A":
                    azucares = 999;
                    break;

                default:
                    break;

            }

            //Proteinas
            proteinas = ((plan.calorias * 0.2) / 4) / 5;

            //Grasas
            grasas = ((plan.calorias * 0.3) / 9) / 5;

            //Calorias a consumir por comida
            caloriasComida = plan.calorias / 5;

            //Se llama el procedimiento para insertar las comidas
            return retorna.InsertaComidasPlan(idUsuario, idPlan, caloriasComida, carbos, proteinas, grasas, azucares);
        }
            
    }
}