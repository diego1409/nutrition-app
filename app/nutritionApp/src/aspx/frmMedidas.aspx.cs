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
    public partial class frmMedidas : System.Web.UI.Page
    {
        ManejoDatos md = new ManejoDatos();
        int idUsuarioMedicion;

        //Variable para determinar tipo usuario y si usuario esta logueado
        public string tipoUsuario;
        public bool logged;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            setMasterPage();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            idUsuarioMedicion = Convert.ToInt32(Session["idUsuario"]);

            //se pregunta si no es una recarga de pagina...
            //validar si es la primera vez que carga la pagina
            //para que no cargue las listas cuando se da click
            //en el boton de guardar
            if (!this.IsPostBack)
            {
                //Rellenar IMC 
                txtObservaciones.Text = "";
                
                Medicion medicion = new Medicion();
                medicion._IdUsuario = idUsuarioMedicion;


                foreach (Medicion item in md.RetornaUltimaMedicion(medicion))
                {
                    //Rellenar campos
                    txtPeso.Text = ((int)item._Peso).ToString();
                    txtGrasa.Text = ((int)item._Grasa).ToString();
                    txtHueso.Text = ((int)item._Hueso).ToString();
                    txtAgua.Text = ((int)item._Agua).ToString();
                    txtObservaciones.Text = item._Observaciones;
                    txtMusculo.Text = ((int)item._Musculo).ToString();
                    txtEstatura.Text = item._Estatura.ToString();
                    lblIMC.Text = ((int)item._Imc).ToString();

                    //Rellenar IMC
                    if (item._Imc < (185 / 10)) {
                        lblIMCSub.Text = "Bajo Peso";
                    }
                    else
                    {
                        if (item._Imc < (250 / 10))
                        {
                            lblIMCSub.Text = "Peso Saludable";
                        }
                        else {
                            if (item._Imc < (300 / 10))
                            {
                                lblIMCSub.Text = "Sobrepeso";
                            }
                            else {
                                lblIMCSub.Text = "Obesidad";
                            }
                        }
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

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Medicion nueva_medicion = new Medicion();
            nueva_medicion._IdUsuario = idUsuarioMedicion;
            nueva_medicion._Peso  = Convert.ToDecimal(txtPeso.Text);
            nueva_medicion._Grasa = Convert.ToDecimal(txtGrasa.Text);
            nueva_medicion._Musculo = Convert.ToDecimal(txtMusculo.Text);
            nueva_medicion._Agua = Convert.ToDecimal(txtAgua.Text);
            nueva_medicion._Hueso = Convert.ToDecimal(txtHueso.Text);
            nueva_medicion._Observaciones = txtObservaciones.Text;

            ManejoDatos md = new ManejoDatos();
            md.insertar_medicion(nueva_medicion);
            Response.Redirect("frmMedidas.aspx?idUsuario="+ nueva_medicion._IdUsuario);
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmDashboard.aspx");
        }

        protected void btnCalcularIMC_Click(object sender, EventArgs e)
        {
            decimal imc, peso;
            int estatura;
            peso = Convert.ToDecimal(txtPeso.Text);
            estatura = Convert.ToInt32(txtEstatura.Text);
            estatura *= estatura;
            imc = (peso / (estatura / 10000));

            //Rellenar IMC
            lblIMC.Text = ((int)imc).ToString();
            if (imc < (185 / 10))
            {
                lblIMCSub.Text = "Bajo Peso";
            }
            else
            {
                if (imc < (250 / 10))
                {
                    lblIMCSub.Text = "Peso Saludable";
                }
                else
                {
                    if (imc < (300 / 10))
                    {
                        lblIMCSub.Text = "Sobrepeso";
                    }
                    else
                    {
                        lblIMCSub.Text = "Obesidad";
                    }
                }
            }
        }
    }
}