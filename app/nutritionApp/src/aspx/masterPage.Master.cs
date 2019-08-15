using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritionApp.src.aspx
{
    public partial class masterPage : System.Web.UI.MasterPage
    {
        //Variable para determinar tipo usuario y si usuario esta logueado
        public string linksMenuDer = "";
        public bool logged;

        protected void Page_Load(object sender, EventArgs e)
        {
            logged = Convert.ToBoolean(this.Session["UsuarioLogueado"]);

            //Verificar si el user esta logueado
            if (logged)
            {
                linksMenuDer = "<ul class=\"navbar-nav ml-auto\">\n" +
                                "<li class=\"nav-item dropdown\">\n" +
                                    "<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"drpUsuario\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n" +
                                        Session["Nombre"].ToString() + " " + Session["Apellido1"].ToString() + " " + Session["Apellido2"].ToString() + "\n" +
                                    "</a>\n" +
                                    "<div class=\"dropdown-menu\" aria-labelledby=\"drpUsuario\">\n" +
                                        "<a class=\"dropdown-item\" href=\"frmEditarPerfil.aspx\">Editar Perfil</a>\n" +
                                        "<a class=\"dropdown-item\" href=\"frmLogoff.aspx\">Cerrar Sesión</a>\n" +
                                    "</div>\n" +
                                "</li>\n" +
                               "</ul>\n";

            } else {
                linksMenuDer = "<ul class=\"navbar-nav ml-auto\">\n" +
                                "<li class=\"nav-item\">\n" +
                                    "<a class=\"nav-link js-scroll-trigger\" href=\"frmLogin.aspx\">\n" +
                                        "Login\n" +
                                    "</a>\n" +
                                "</li>\n" +
                                "<li class=\"nav-item\">\n" +
                                    "<a class=\"nav-link js-scroll-trigger\" href=\"frmRegistro.aspx\">\n" +
                                        "Registrarse\n" +
                                    "</a>\n" +
                                "</li>\n" +
                            "</ul>\n";
            }
        
        }
    }
}