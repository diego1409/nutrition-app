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
    public partial class frmListaUsuarios2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int contador_id = 0;
            ManejoDatos mostrar = new ManejoDatos();
            foreach (Usuario item in mostrar.ListaUsuarios())
            {
                usuarios.Text = usuarios.Text + "<tr><td>" + item._Cedula + "</td><td>" + item._Nombre + " " + item._Apellido1 + " " + item._Apellido2 + "</td><td>" + item._Telefono1 + "</td><td>" + item._Correo + "</td></tr> ";
                //usuarios.Text = usuarios.Text + "<div class='thumbnail sombra'><div class='container-fluid'><div class='page-header'><asp:LinkButton ID='post_" + item._Cedula + "' runat='server' OnClick='abrir_dia_" + item._Cedula + "'><h1>Dia " + item._Direccion + "</h1></asp:LinkButton></div><p>Kcal Totales: " + item._Nombre + "</p><p>Carbohidratos Totales " + item._Apellido1 + "</p><p>Proteinas Totales " + item._Apellido2 + "</p><p>Grasa Total " + item._Correo + "</p></div></div>";
                contador_id++;
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
        }
    }
}