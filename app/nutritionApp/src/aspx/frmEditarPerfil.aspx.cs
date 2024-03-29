﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Clases de conexion
using nutritionApp.Clases;

namespace nutritionApp.src.aspx
{
    public partial class frmEditarPerfil : System.Web.UI.Page
    {
        string cedulaUsuarioModificar;

        //Variable para determinar tipo usuario y si usuario esta logueado
        public string tipoUsuario;
        public bool logged;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            setMasterPage();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                cedulaUsuarioModificar = Session["Cedula"].ToString();
                txtNumIdentificacion.Text = cedulaUsuarioModificar;
                txtNumIdentificacion.Enabled = false;
                //se pregunta si no es una recarga de pagina...
                //validar si es la primera vez que carga la pagina
                //para que no cargue las listas cuando se da click
                //en el boton de guardar
                ManejoDatos mostrar = new ManejoDatos();
                Usuario usuario = new Usuario();
                usuario._Cedula = cedulaUsuarioModificar;
                foreach (Usuario item in mostrar.RetornaUsuarioCedula(usuario))
                {
                    //Seteando cada uno de los campos del form de acuerdo al usuario
                    txtNombre.Text = item._Nombre;
                    txtPrimerApellido.Text = item._Apellido1;
                    txtSegundoApellido.Text = item._Apellido2;
                    txtCorreo.Text = item._Correo;
                    txtDireccion.Text = item._Direccion;
                    txtEstatura.Text = item._Estatura.ToString();
                    txtPeso.Text = item._Peso.ToString();
                    ddlProposito.SelectedValue = item._Proposito;
                    ddlGenero.SelectedValue = item._Genero;
                    txtFechaNac.Text = item._FechaNac.ToString("yyyy-MM-dd");
                    txtNomUsuario.Text = item._NomUsuario;
                    txtTelefono.Text = item._Telefono1;
                    txtContrasena.Text = item._Contrasena;
                    ddlTipoUsuario.SelectedValue = item._TipoUsuario;
                    txtContrasenaNueva.Text = "";
                    lblBtnDarDeBaja.Text = lblBtnDarDeBaja.Text + "<a class='btn btn-danger btn-block' href='frmDarDeBajaUsuario.aspx?cedula=" + cedulaUsuarioModificar + "&origen=editarperfil'>Darme de baja</a>";

                    //Se deshabilita el campo de tipo usuario si es cliente
                    tipoUsuario = Session["tipoUsuario"].ToString();
                    if (tipoUsuario == "C")
                    {
                        ddlTipoUsuario.Enabled = false;
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
                tipoUsuario = Session["tipoUsuario"].ToString();

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

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            ///Verificar que la contraseña que el usuario digitó esté correcta.
            if (txtContrasenaAntigua.Text == txtContrasena.Text)
            {
                Usuario usuarioModificar = new Usuario();
                usuarioModificar._Cedula = txtNumIdentificacion.Text;
                usuarioModificar._Genero = ddlGenero.SelectedValue;
                usuarioModificar._FechaNac = Convert.ToDateTime(txtFechaNac.Text);
                usuarioModificar._Nombre = txtNombre.Text;
                usuarioModificar._Apellido1 = txtPrimerApellido.Text;
                usuarioModificar._Apellido2 = txtSegundoApellido.Text;
                usuarioModificar._Direccion = txtDireccion.Text;
                usuarioModificar._Telefono1 = txtTelefono.Text;
                usuarioModificar._Estatura = Convert.ToInt32(txtEstatura.Text);
                usuarioModificar._Peso = Convert.ToDecimal(txtPeso.Text);
                usuarioModificar._Proposito = ddlProposito.SelectedValue;
                usuarioModificar._Correo = txtCorreo.Text;
                usuarioModificar._NomUsuario = txtNomUsuario.Text;
                usuarioModificar._TipoUsuario = ddlTipoUsuario.SelectedValue;
                usuarioModificar._Contrasena = txtContrasenaAntigua.Text;

                if (txtContrasenaNueva.Text != "")
                {
                    if (txtContrasenaNueva.Text == txtConfirmarContrasena.Text)
                    {
                        usuarioModificar._Contrasena = txtContrasenaNueva.Text;
                        ManejoDatos md = new ManejoDatos();
                        md.modificar_usuario(usuarioModificar);

                        if (fupAgregarFoto.FileName != "")
                        {
                            fupAgregarFoto.SaveAs(Server.MapPath("../img/usuarios/" + usuarioModificar._Cedula + ".jpg"));
                        }

                        //Se agregar variables de sesion con los datos principales
                        this.Session.Add("Nombre", usuarioModificar._Nombre);
                        this.Session.Add("Apellido1", usuarioModificar._Apellido1);
                        this.Session.Add("Apellido2", usuarioModificar._Apellido2);
                        this.Session.Add("Cedula", usuarioModificar._Cedula);
                        this.Session.Add("tipoUsuario", usuarioModificar._TipoUsuario);

                        Response.Redirect("frmDashboard.aspx");
                    }
                    else
                    {
                        string script = "alert(\"Su confirmación de contraseña nueva no coincide con la digitada\");";
                        ScriptManager.RegisterStartupScript(this, GetType(),
                                              "ServerControlScript", script, true);
                    }
                }
                else
                {
                    ManejoDatos md = new ManejoDatos();
                    md.modificar_usuario(usuarioModificar);

                    if (fupAgregarFoto.FileName != "")
                    {
                        fupAgregarFoto.SaveAs(Server.MapPath("../img/usuarios/" + usuarioModificar._Cedula + ".jpg"));
                    }

                    //Se agregar variables de sesion con los datos principales
                    this.Session.Add("Nombre", usuarioModificar._Nombre);
                    this.Session.Add("Apellido1", usuarioModificar._Apellido1);
                    this.Session.Add("Apellido2", usuarioModificar._Apellido2);
                    this.Session.Add("Cedula", usuarioModificar._Cedula);
                    this.Session.Add("tipoUsuario", usuarioModificar._TipoUsuario);

                    Response.Redirect("frmDashboard.aspx");
                }
            }
            else {
                string script = "alert(\"Por favor revise que haya digitado bien su contraseña\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                                      "ServerControlScript", script, true);
            }
                
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("frmDashboard.aspx");
        }

        protected void btnDarDeBaja_Click(object sender, EventArgs e)
        {

        }
    }
}