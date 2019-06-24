using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace nutritionApp.src.aspx
{
    public partial class frmLogin : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_onClick(object sender, EventArgs e)
        {
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