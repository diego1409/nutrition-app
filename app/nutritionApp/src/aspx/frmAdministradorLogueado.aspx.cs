﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace nutritionApp.src.aspx
{
    public partial class frmAdministradorLogueado : System.Web.UI.Page
    {
        saladEntities2 modeloBD = new saladEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (!IsPostBack)
            {
                Boolean usuario = Convert.ToBoolean(this.Session["UsuarioLogueado"]);
                if (usuario)
                {
                    MessageBox.Show("Ingreso como " + this.Session["Nombre"] + this.Session["Apellido1"] + this.Session["Apellido2"]);
                         
                }

            }*/
        }
    }
}