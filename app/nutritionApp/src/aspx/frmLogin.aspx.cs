using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Librerias adicionales
using System.Data.OleDb;
using nutritionApp.Clases;

namespace nutritionApp.src.aspx
{
    public partial class frmLogin : System.Web.UI.Page
    {
        public string resultado;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            Conexion test = new Conexion();
            test.parametro("", "", "", "");
            if (test.inicializa())
            {
                resultado = "Conexion Exitosa";
            }
            */
        }

        protected void btnIngresar_onClick(object sender, EventArgs e)
        {
            if (this.Page.IsValid)
            {
                //Declaracion de variables a utilizar
                Usuario user = new Usuario();
                user._NomUsuario = this.txtUsuarioLogin.Text;
                user._Contrasena = this.txtPasswordUsuarioLogin.Text;
                ManejoDatos login = new ManejoDatos();
                OleDbDataReader datos;

                // invocar aquí el sp de retornaUsuarioPass
                int idUsuario = login.RetornaUsuarioPass(user);

                //Si el idUsuario se obtiene entonces el resto de datos
                if (idUsuario != 0)
                {
                    this.Session.Add("UsuarioLogueado", true);
                    this.Session.Add("IdUsuario", idUsuario);

                    //Se obtienen los datos de usuario gracias al id
                    datos = login.RetornaUsuario(idUsuario);

                    //Se almacenan esos datos en el objeto usuario
                    user = almacenarDatosUsuario(datos, user);


                    //Se agregar variables de sesion con los datos principales
                    this.Session.Add("Nombre", user._Nombre);
                    this.Session.Add("Apellido1", user._Apellido1);
                    this.Session.Add("Apellido2", user._Apellido2);
                    this.Session.Add("Cedula", user._Cedula);
                    this.Session.Add("tipoUsuario", user._TipoUsuario);
                    //this.Session.Add("");

                    //Dependiendo del tipo Usuario, se redirige a una o a otra pagina
                    string TipoUsuario = Convert.ToString(this.Session["tipoUsuario"]);
                    if (TipoUsuario == "A")
                    {
                        // login tipo Administrador
                        this.Response.Redirect("~/src/aspx/frmDashboardAdministrador.aspx");
                    }
                    else
                    {  //if (TipoUsuario == "C")
                        // login tipo Cliente
                        this.Response.Redirect("~/src/aspx/frmDashboardCliente.aspx");
                    }
                }
                else
                {
                    resultado = "Datos de usuario o contraseña incorrectos.";
                    //this.Response.Redirect("~src/aspx/frmLogin.aspx");

                }
            }
        }

        private Usuario almacenarDatosUsuario(OleDbDataReader datos, Usuario user)
        {
            while (datos.Read())
            {
                //Se almacenan los datos de usuario
                user._Foto = Convert.FromBase64String(datos["foto"].ToString());
                user._Cedula = Convert.ToString(datos["cedula"].ToString());
                user._Genero = Convert.ToString(datos["genero"].ToString());
                user._FechaNac = Convert.ToDateTime(datos["fechaNac"].ToString());
                user._Nombre = Convert.ToString(datos["nombre"].ToString());
                user._Apellido1 = Convert.ToString(datos["apellido1"].ToString());
                user._Apellido2 = Convert.ToString(datos["apellido2"].ToString());
                user._Direccion = Convert.ToString(datos["direccion"].ToString());
                user._Telefono1 = Convert.ToString(datos["telefono1"].ToString());
                user._Estatura = Convert.ToInt32(datos["estatura"].ToString());
                user._Peso = Convert.ToDecimal(datos["peso"].ToString());
                user._Proposito = Convert.ToString(datos["proposito"].ToString());
                user._TipoUsuario = Convert.ToString(datos["tipoUsuario"].ToString());
            }

            //Se agrega el usuario como variable de sesion
            //this.Session.Add("Usuario", user);

            return user;
        }


    }

   

}