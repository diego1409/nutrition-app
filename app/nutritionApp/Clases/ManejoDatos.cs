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

        public List<Usuario> ListaUsuarios()
        {
            List<Usuario> lista = new List<Usuario>();
            Conexion conec = new Conexion();
            conec.parametro("", "", "", "");
            conec.inicializa();
            string consulta;
            System.Data.OleDb.OleDbDataReader contenedor;
            consulta = "EXEC ListaUsuarios";
            conec.annadir_consulta(consulta);
            contenedor = conec.busca();
            while (contenedor.Read())
            {
                Usuario tmp = new Usuario();
                tmp._Cedula = contenedor["cedula"].ToString();
                tmp._Genero = contenedor["genero"].ToString();
                tmp._FechaNac = Convert.ToDateTime(contenedor["fechaNac"]);
                tmp._Nombre = contenedor["nombre"].ToString();
                tmp._Apellido1 = contenedor["apellido1"].ToString();
                tmp._Apellido2 = contenedor["apellido2"].ToString();
                tmp._Direccion = contenedor["direccion"].ToString();
                tmp._Telefono1 = contenedor["telefono1"].ToString();
                tmp._Estatura = Convert.ToInt16(contenedor["estatura"]);
                tmp._Peso = Convert.ToDecimal(contenedor["peso"]);
                tmp._Proposito = contenedor["proposito"].ToString();
                tmp._Correo = contenedor["correo"].ToString();
                tmp._NomUsuario = contenedor["usuario"].ToString();
                tmp._Contrasena = contenedor["contrasena"].ToString();
                tmp._TipoUsuario = contenedor["tipoUsuario"].ToString();
                lista.Add(tmp);
            }
            return lista;
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

        public List<Usuario> RetornaUsuarioCedula(Usuario usuario)
        {
            List<Usuario> usuarioDevolver = new List<Usuario>();
            Conexion conec = new Conexion();
            conec.parametro("", "", "", "");
            conec.inicializa();
            string consulta;
            System.Data.OleDb.OleDbDataReader contenedor;
            consulta = "Select * from usuario where cedula=" + usuario._Cedula;
            conec.annadir_consulta(consulta);
            contenedor = conec.busca();
            while (contenedor.Read())
            {
                Usuario tmp = new Usuario();
                tmp._Cedula = contenedor["cedula"].ToString();
                tmp._Genero = contenedor["genero"].ToString();
                tmp._FechaNac = Convert.ToDateTime(contenedor["fechaNac"]);
                tmp._Nombre = contenedor["nombre"].ToString();
                tmp._Apellido1 = contenedor["apellido1"].ToString();
                tmp._Apellido2 = contenedor["apellido2"].ToString();
                tmp._Direccion = contenedor["direccion"].ToString();
                tmp._Telefono1 = contenedor["telefono1"].ToString();
                tmp._Estatura = Convert.ToInt16(contenedor["estatura"]);
                tmp._Peso = Convert.ToDecimal(contenedor["peso"]);
                tmp._Proposito = contenedor["proposito"].ToString();
                tmp._Correo = contenedor["correo"].ToString();
                tmp._NomUsuario = contenedor["usuario"].ToString();
                tmp._Contrasena = contenedor["contrasena"].ToString();
                tmp._TipoUsuario = contenedor["tipoUsuario"].ToString();
                usuarioDevolver.Add(tmp);
            }
            return usuarioDevolver;
        }

        public void DarDeBajaUsuario(Usuario usuario)
        {
            Conexion conec = new Conexion();
            conec.parametro("", "", "", "");
            conec.inicializa();
            string consulta;
            System.Data.OleDb.OleDbDataReader contenedor;
            consulta = "Delete from usuario where cedula=" + usuario._Cedula;
            conec.annadir_consulta(consulta);
            contenedor = conec.busca();
            while (contenedor.Read())
            {
            }
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

        public List<Medicion> RetornaUltimaMedicion(Medicion medicion)
        {
            List<Medicion> medicionDevolver = new List<Medicion>();
            Conexion conec = new Conexion();
            conec.parametro("", "", "", "");
            conec.inicializa();
            string consulta;
            System.Data.OleDb.OleDbDataReader contenedor;
            consulta = "select top 1 *,usuario.estatura as estatura from medicion inner join usuario on medicion.idUsuario = usuario.idUsuario where medicion.idUsuario =" + medicion._IdUsuario + "order by fecha desc";
            conec.annadir_consulta(consulta);
            contenedor = conec.busca();
            while (contenedor.Read())
            {
                Medicion tmp = new Medicion();
                tmp._IdMedicion = Convert.ToInt16(contenedor["IdMedicion"]);
                tmp._IdUsuario = Convert.ToInt16(contenedor["IdUsuario"]);
                tmp._Peso = Convert.ToDecimal(contenedor["peso"]);
                tmp._Grasa = Convert.ToDecimal(contenedor["grasa"]);
                tmp._Musculo = Convert.ToDecimal(contenedor["musculo"]);
                tmp._Agua = Convert.ToDecimal(contenedor["agua"]);
                tmp._Hueso = Convert.ToDecimal(contenedor["hueso"]);
                tmp._Observaciones = contenedor["observaciones"].ToString();
                tmp._Imc = Convert.ToDecimal(contenedor["imc"]);
                tmp._Fecha = Convert.ToDateTime(contenedor["fecha"]);
                tmp._Estatura = Convert.ToInt16(contenedor["estatura"]);

                medicionDevolver.Add(tmp);
            }
            return medicionDevolver;
        }

        public bool insertar_medicion(Medicion medicion)
        {
            Conexion conect_local = new Conexion();
            conect_local.parametro("", "", "", "");
            conect_local.inicializa();
            String consulta;
            System.Data.OleDb.OleDbDataReader contenedor;
            consulta = "EXEC InsertaMedicion ?,?,?,?,?,?,?";
            conect_local.annadir_consulta(consulta);
            conect_local.annadir_parametro(medicion._IdUsuario, 1);
            conect_local.annadir_parametro(medicion._Peso, 3);
            conect_local.annadir_parametro(medicion._Grasa, 3);
            conect_local.annadir_parametro(medicion._Musculo, 3);
            conect_local.annadir_parametro(medicion._Agua, 3);
            conect_local.annadir_parametro(medicion._Hueso, 3);
            conect_local.annadir_parametro(medicion._Observaciones, 2);


            contenedor = conect_local.busca();
            while (contenedor.Read())
            {
            }
            contenedor.Close();
            return true;
        }
    }
}