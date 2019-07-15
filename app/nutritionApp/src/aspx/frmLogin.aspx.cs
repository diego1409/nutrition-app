using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using nutritionApp.Clases;

namespace nutritionApp.src.aspx
{
    public partial class frmLogin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            clsConexion test = new clsConexion();
            if(test.probarConexion())
            {
                Console.WriteLine("Conexion Exitosa");
            }
        }

        protected void btnIngresar_onClick(object sender, EventArgs e)
        {
            int sesion;
            /* == Funcion para ingresar a usuario normal == */
            Usuario usuarioIngreso = new Usuario();
            usuarioIngreso._NomUsuario = txtUsuarioLogin.Text;
            usuarioIngreso._Contrasena = txtPasswordUsuarioLogin.Text;
            //ManejoDatos iniciar_sesion = new ManejoDatos();
            //sesion = iniciar_sesion.iniciar_sesion_normal(usuarioIngreso);
            sesion = 1;
            if (sesion == 1)
            {
                Session["ClaseUsuario"] = usuarioIngreso;
                Response.Redirect("Menu.aspx");
            }
            else
            {
                if (sesion == 0)
                {
                    /* == No existe == */
                    Response.Write("<script>window.alert('No existe');</script>");

                }
                else
                {
                    if (sesion == 2)
                    {
                        /* == Mal la contraseña == */
                        Response.Write("<script>window.alert('Mal la contraseña');</script>");
                    }
                }
            }

            /* if (this.Page.IsValid)
             {
                 RetornaUsuarioPass_Result resultado_sp = this.modeloBD.RetornaUsuarioPass(this.txtUsuarioLogin.Text,this.txtPasswordUsuarioLogin.Text).FirstOrDefault();
                 // invocar aquí el sp de retornaUsuarioPass

                 if (resultado_sp != null)
                 {
                     this.Session.Add("UsuarioLogueado", true);
                     this.Session.Add("IdUsuario", resultado_sp.idUsuario);
                     this.Session.Add("tipoUsuario", resultado_sp.tipoUsuario);

                     int Id = Convert.ToInt32(this.Session["IdUsuario"]);
                     string TipoUsuario = Convert.ToString(this.Session["tipoUsuario"]);

                     RetornaUsuario_Result retornaUsu = this.modeloBD.RetornaUsuario(Id).FirstOrDefault();
                         this.Session.Add("Nombre",retornaUsu.nombre);
                         this.Session.Add("Apellido1",retornaUsu.apellido1);
                         this.Session.Add("Apellido2", retornaUsu.apellido2);
                         this.Session.Add("Cedula",retornaUsu.cedula);
                         //this.Session.Add("");

                     if (TipoUsuario == "A" ){
                         // login tipo Administrador
                         this.Response.Redirect("~src/aspx/frmAdministradorLogueado.aspx?IdUsuario=" + Id);
                     }
                      else {  //if (TipoUsuario == "C")
                         // login tipo Cliente
                         this.Response.Redirect("~src/aspx/frmUsuarioLogueado.aspx?IdUsuario=" + Id);
                     }
                 }
                 else
                 {
                     this.Response.Redirect("~src/aspx/frmLogin.aspx");

                 }
             }*/
        }
    }

   

}