using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Text;
using System.Threading.Tasks;

namespace nutritionApp
{
    public class ManejoDatos
    {
        private List<Usuario> lista_usuarios;

        public List<Usuario> _lista_usuarios
        {
            get
            {
                return lista_usuarios;
            }
            set
            {
                lista_usuarios = value;
            }
        }

        /* == Funcion para Iniciar sesion == */
        public int RetornaUsuarioPass(Usuario user)
        {
            //Declaracion de variables
            Conexion conect_local = new Conexion();
            conect_local.parametro("", "", "", "");
            conect_local.inicializa();
            String consulta;
            System.Data.OleDb.OleDbDataReader contenedor;
            int idUsuario = 0;

            //Se crea la consulta
            consulta = "EXEC RetornaUsuarioPass ?,?";
            conect_local.annadir_consulta(consulta);
            conect_local.annadir_parametro(user._NomUsuario, 2);
            conect_local.annadir_parametro(user._Contrasena, 2);

            //Se procede a buscar
            contenedor = conect_local.busca();
            while (contenedor.Read())
            {
                idUsuario = Convert.ToInt32(contenedor["idUsuario"].ToString());
            }
            contenedor.Close();

            //Se retorna el idUsuario para buscarlo y obtener los datos de usuario
            return idUsuario;
        }

        /* == Funcion para retornar un usuario == */
        public OleDbDataReader RetornaUsuario(int idUsuario)
        {
            //Declaracion de variables
            Conexion conect_local = new Conexion();
            conect_local.parametro("", "", "", "");
            conect_local.inicializa();
            String consulta;
            System.Data.OleDb.OleDbDataReader contenedor;

            //Se crea la consulta
            consulta = "EXEC RetornaUsuario ?";
            conect_local.annadir_consulta(consulta);
            conect_local.annadir_parametro(idUsuario, 1);

            //Se procede a buscar
            contenedor = conect_local.busca();

            //Se retorna el contenedor para usar todos sus datos
            return contenedor;
        }

        /* == Funcion para insertar un usuario comun y corriente == */
        public bool insertar_usuario(Usuario insertar)
        {
            Conexion conect_local = new Conexion();
            conect_local.parametro("", "", "", "");
            conect_local.inicializa();
            String consulta;
            System.Data.OleDb.OleDbDataReader contenedor;
            consulta = "EXEC InsertaUsuario ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?";
            conect_local.annadir_consulta(consulta);
            conect_local.annadir_parametro(insertar._Cedula, 2);
            conect_local.annadir_parametro(insertar._Genero, 2);
            conect_local.annadir_parametro(insertar._FechaNac, 4);
            conect_local.annadir_parametro(insertar._Nombre, 2);
            conect_local.annadir_parametro(insertar._Apellido1, 2);
            conect_local.annadir_parametro(insertar._Apellido2, 2);
            conect_local.annadir_parametro(insertar._Direccion, 2);
            conect_local.annadir_parametro(insertar._Telefono1, 2);
            conect_local.annadir_parametro(insertar._Estatura, 1);
            conect_local.annadir_parametro(insertar._Peso, 3);
            conect_local.annadir_parametro(insertar._Proposito, 2);
            conect_local.annadir_parametro(insertar._Correo, 2);
            conect_local.annadir_parametro(insertar._NomUsuario, 2);
            conect_local.annadir_parametro(insertar._Contrasena, 2);
            conect_local.annadir_parametro(insertar._TipoUsuario, 2);

            contenedor = conect_local.busca();
            while (contenedor.Read())
            {
            }
            contenedor.Close();
            return true;
        }


        public bool modificar_usuario(Usuario modificar)
        {
            Conexion conect_local = new Conexion();
            conect_local.parametro("", "", "", "");
            conect_local.inicializa();
            String consulta;
            System.Data.OleDb.OleDbDataReader contenedor;
            consulta = "EXEC ModificaUsuario ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?";
            conect_local.annadir_consulta(consulta);
            conect_local.annadir_parametro(modificar._Cedula, 2);
            //conect_local.annadir_parametro(modificar._Foto, 5);
            conect_local.annadir_parametro(modificar._Genero, 2);
            conect_local.annadir_parametro(modificar._FechaNac, 4);
            conect_local.annadir_parametro(modificar._Nombre, 2);
            conect_local.annadir_parametro(modificar._Apellido1, 2);
            conect_local.annadir_parametro(modificar._Apellido2, 2);
            conect_local.annadir_parametro(modificar._Direccion, 2);
            conect_local.annadir_parametro(modificar._Telefono1, 2);
            conect_local.annadir_parametro(modificar._Estatura, 1);
            conect_local.annadir_parametro(modificar._Peso, 3);
            conect_local.annadir_parametro(modificar._Proposito, 2);
            conect_local.annadir_parametro(modificar._Correo, 2);
            conect_local.annadir_parametro(modificar._NomUsuario, 2);
            conect_local.annadir_parametro(modificar._Contrasena, 2);
            conect_local.annadir_parametro(modificar._TipoUsuario, 2);

            contenedor = conect_local.busca();
            while (contenedor.Read())
            {
            }
            contenedor.Close();
            return true;
        }

        ///* == Funcion que inserta un administrador == */
        //public bool insertar_administrador(Administrador insertar)
        //{
        //    Conexion conect_local = new Conexion();
        //    conect_local.parametro("", "", "", "");
        //    conect_local.inicializa();
        //    String consulta;
        //    System.Data.OleDb.OleDbDataReader contenedor;
        //    consulta = "EXEC Insert_Administrador ?,?,?,?,?,?";
        //    conect_local.annadir_consulta(consulta);
        //    conect_local.annadir_parametro(insertar._correo, 2);
        //    conect_local.annadir_parametro(insertar._nombre, 2);
        //    conect_local.annadir_parametro(insertar._apellido_1, 2);
        //    conect_local.annadir_parametro(insertar._apellido_2, 2);
        //    conect_local.annadir_parametro(insertar._contrasenna, 2);
        //    conect_local.annadir_parametro(insertar._profesion, 2);
        //    contenedor = conect_local.busca();
        //    while (contenedor.Read())
        //    {
        //    }
        //    contenedor.Close();
        //    return true;
        //}

        //public bool insertar_restaurante(Restaurante insertar)
        //{
        //    Conexion conect_local = new Conexion();
        //    conect_local.parametro("", "", "", "");
        //    conect_local.inicializa();
        //    String consulta;
        //    System.Data.OleDb.OleDbDataReader contenedor;
        //    consulta = "EXEC Insert_Restaurante ?,?,?,?,?";
        //    conect_local.annadir_consulta(consulta);
        //    conect_local.annadir_parametro(insertar._correo, 2);
        //    conect_local.annadir_parametro(insertar._contrasenna, 2);
        //    conect_local.annadir_parametro(insertar._nombre, 2);
        //    conect_local.annadir_parametro(insertar._descripcion, 2);
        //    conect_local.annadir_parametro(insertar._telefono, 1);
        //    contenedor = conect_local.busca();
        //    while (contenedor.Read())
        //    {
        //    }
        //    contenedor.Close();
        //    return true;
        //}

        ///* == Iniciar sesion == */
        //public int iniciar_sesion_normal(Usuario iniciar)
        //{
        //    int correcto = 2;
        //    Conexion conect_local = new Conexion();
        //    conect_local.parametro("", "", "", "");
        //    conect_local.inicializa();
        //    String consulta;
        //    System.Data.OleDb.OleDbDataReader contenedor;
        //    consulta = "EXEC sesion_usuario ?,?";
        //    conect_local.annadir_consulta(consulta);
        //    conect_local.annadir_parametro(iniciar._correo, 2);
        //    conect_local.annadir_parametro(iniciar._contrasenna, 2);
        //    contenedor = conect_local.busca();
        //    while (contenedor.Read())
        //    {
        //        correcto = Convert.ToInt32(contenedor["correcto"].ToString());
        //    }
        //    contenedor.Close();
        //    return correcto;
        //}

        //public int iniciar_sesion(Administrador iniciar)
        //{
        //    int correcto = 2;
        //    Conexion conect_local = new Conexion();
        //    conect_local.parametro("", "", "", "");
        //    conect_local.inicializa();
        //    String consulta;
        //    System.Data.OleDb.OleDbDataReader contenedor;
        //    consulta = "EXEC sesion_administrador ?,?";
        //    conect_local.annadir_consulta(consulta);
        //    conect_local.annadir_parametro(iniciar._correo, 2);
        //    conect_local.annadir_parametro(iniciar._contrasenna, 2);
        //    contenedor = conect_local.busca();
        //    while (contenedor.Read())
        //    {
        //        correcto = Convert.ToInt32(contenedor["correcto"].ToString());
        //    }
        //    contenedor.Close();
        //    return correcto;
        //}

        //public int iniciar_sesion(Restaurante iniciar)
        //{
        //    int correcto = 2;
        //    Conexion conect_local = new Conexion();
        //    conect_local.parametro("", "", "", "");
        //    conect_local.inicializa();
        //    String consulta;
        //    System.Data.OleDb.OleDbDataReader contenedor;
        //    consulta = "EXEC sesion_restaurante ?,?";
        //    conect_local.annadir_consulta(consulta);
        //    conect_local.annadir_parametro(iniciar._correo, 2);
        //    conect_local.annadir_parametro(iniciar._contrasenna, 2);
        //    contenedor = conect_local.busca();
        //    while (contenedor.Read())
        //    {
        //        correcto = Convert.ToInt32(contenedor["correcto"].ToString());
        //    }
        //    contenedor.Close();
        //    return correcto;
        //}

        ///* == Modificar usuario == */
        //public bool modificar_usuario(Usuario modificar)
        //{
        //    Conexion conect_local = new Conexion();
        //    conect_local.parametro("", "", "", "");
        //    conect_local.inicializa();
        //    String consulta;
        //    System.Data.OleDb.OleDbDataReader contenedor;
        //    consulta = "EXEC Update_Usuario_datos ?,?,?,?,?";
        //    conect_local.annadir_consulta(consulta);
        //    conect_local.annadir_parametro(modificar._correo, 2);
        //    conect_local.annadir_parametro(modificar._contrasenna, 2);
        //    conect_local.annadir_parametro(modificar._nombre, 2);
        //    conect_local.annadir_parametro(modificar._apellido_1, 2);
        //    conect_local.annadir_parametro(modificar._apellido_2, 2);
        //    contenedor = conect_local.busca();
        //    while (contenedor.Read())
        //    {
        //    }
        //    contenedor.Close();
        //    return true;
        //}

        //public bool insertar_dia(Dia insertar)
        //{
        //    Conexion conect_local = new Conexion();
        //    conect_local.parametro("", "", "", "");
        //    conect_local.inicializa();
        //    String consulta;
        //    System.Data.OleDb.OleDbDataReader contenedor;
        //    consulta = "EXEC Insert_Dia ?,?";
        //    conect_local.annadir_consulta(consulta);
        //    conect_local.annadir_parametro(insertar._correo, 2);
        //    conect_local.annadir_parametro(insertar._fecha, 4);
        //    contenedor = conect_local.busca();
        //    while (contenedor.Read())
        //    {
        //    }
        //    contenedor.Close();
        //    return true;
        //}

        //public List<Dia> lista_dia(Usuario buscar)
        //{
        //    List<Dia> lista = new List<Dia>();
        //    Conexion conec = new Conexion();
        //    conec.parametro("", "", "", "");
        //    conec.inicializa();
        //    string consulta;
        //    System.Data.OleDb.OleDbDataReader contenedor;
        //    consulta = "EXEC devolver_dias ?";
        //    conec.annadir_consulta(consulta);
        //    conec.annadir_parametro(buscar._correo, 2);
        //    contenedor = conec.busca();
        //    while (contenedor.Read())
        //    {
        //        Dia tmp = new Dia();
        //        tmp._correo = contenedor["CORREO"].ToString();
        //        tmp._id_comida = Convert.ToInt32(contenedor["ID_COMIDA"].ToString());
        //        tmp._proteinas_t = contenedor["PROTEINAS_T"].ToString();
        //        tmp._grasa_t = contenedor["GRASA_T"].ToString();
        //        tmp._carbohidratos_t = contenedor["CARBOHIDRATOS_T"].ToString();
        //        tmp._kcal_t = contenedor["KCAL_T"].ToString();
        //        tmp._fecha = Convert.ToDateTime(contenedor["FECHA"].ToString());
        //        lista.Add(tmp);
        //    }
        //    return lista;
        //}

        //public List<Publicacion> lista_publicacion(Usuario buscar)
        //{
        //    List<Publicacion> lista = new List<Publicacion>();
        //    Conexion conec = new Conexion();
        //    conec.parametro("", "", "", "");
        //    conec.inicializa();
        //    string consulta;
        //    System.Data.OleDb.OleDbDataReader contenedor;
        //    consulta = "EXEC Select_Publicacion_Usuario ?";
        //    conec.annadir_consulta(consulta);
        //    conec.annadir_parametro(buscar._correo, 2);
        //    contenedor = conec.busca();
        //    while (contenedor.Read())
        //    {
        //        Publicacion tmp = new Publicacion();
        //        tmp._correo = contenedor["CORREO"].ToString();
        //        tmp._texto = contenedor["TEXTO"].ToString();
        //        lista.Add(tmp);
        //    }
        //    return lista;
        //}

        //public bool insertar_publicacion(Publicacion insertar)
        //{
        //    Conexion conect_local = new Conexion();
        //    conect_local.parametro("", "", "", "");
        //    conect_local.inicializa();
        //    String consulta;
        //    System.Data.OleDb.OleDbDataReader contenedor;
        //    consulta = "EXEC Insert_Publicacion_Usuario ?,?";
        //    conect_local.annadir_consulta(consulta);
        //    conect_local.annadir_parametro(insertar._correo, 2);
        //    conect_local.annadir_parametro(insertar._texto, 2);
        //    contenedor = conect_local.busca();
        //    while (contenedor.Read())
        //    {
        //    }
        //    contenedor.Close();
        //    return true;
        //}

        //public Usuario rellenar_usuario(Usuario rellenar)
        //{
        //    Conexion conect_local = new Conexion();
        //    conect_local.parametro("", "", "", "");
        //    conect_local.inicializa();
        //    String consulta;
        //    System.Data.OleDb.OleDbDataReader contenedor;
        //    consulta = "EXEC Select_Usuario ?";
        //    conect_local.annadir_consulta(consulta);
        //    conect_local.annadir_parametro(rellenar._correo, 2);
        //    contenedor = conect_local.busca();
        //    while (contenedor.Read())
        //    {
        //        rellenar._contrasenna = contenedor["CONTRASENNA"].ToString();
        //        rellenar._apellido_1 = contenedor["APELLIDO_1"].ToString();
        //        rellenar._nombre = contenedor["NOMBRE"].ToString();
        //        rellenar._apellido_2 = contenedor["APELLIDO_2"].ToString();
        //    }
        //    contenedor.Close();
        //    return rellenar;
        //}
    }
}