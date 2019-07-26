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
    public partial class frmEditarPerfil : System.Web.UI.Page
    {
        string cedulaUsuarioModificar;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                cedulaUsuarioModificar = Request.QueryString["cedula"];
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
                    txtFechaNac.Text = item._FechaNac.ToString();
                    txtNomUsuario.Text = item._NomUsuario;
                    txtTelefono.Text = item._Telefono1;
                    txtContrasena.Text = item._Contrasena;
                    txtTipoUsuario.Text = item._TipoUsuario;
                    txtContrasenaNueva.Text = "";
                    lblBtnDarDeBaja.Text = lblBtnDarDeBaja.Text + "<a class='btn btn-primary' href='frmDarDeBajaUsuario.aspx?cedula=" + cedulaUsuarioModificar + "&origen=editarperfil'>Dar de baja</a>";


                }
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
                usuarioModificar._TipoUsuario = txtTipoUsuario.Text;
                usuarioModificar._Contrasena = txtContrasena.Text;

                if (txtContrasenaNueva.Text != "")
                {
                    if (txtContrasenaNueva.Text == txtConfirmarContrasena.Text)
                    {
                        usuarioModificar._Contrasena = txtContrasenaNueva.Text;
                        ManejoDatos md = new ManejoDatos();
                        md.modificar_usuario(usuarioModificar);
                        Response.Redirect("frmEditarPerfil.aspx?cedula="+ usuarioModificar._Cedula);
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

                    Response.Redirect("frmEditarPerfil.aspx?cedula=" + usuarioModificar._Cedula);
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
            Response.Redirect("frmListaUsuarios.aspx");
        }

        protected void btnDarDeBaja_Click(object sender, EventArgs e)
        {

        }
    }
}