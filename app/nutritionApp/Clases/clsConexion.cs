using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

// Referencias a las librerías necesarias
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;

namespace nutritionApp.Clases
{
    public class clsConexion
    {
    #region Atributos de la clase conexión
        //Datos de conexión
        private string data_source;
        private string initial_catalog;
        private string security;

        //Variables SQL
        public SqlConnection conexion;
        public SqlCommand comando;
        private SqlTransaction transaccion;
    #endregion

        /// <summary>
        /// Clase constructor de la conexion a la bd
        /// </summary>
        public clsConexion()
        {
            //Datos de conexión
            this.data_source = "localhost"; //Nombre del servidor
            this.initial_catalog = "Salad"; //Nombre de la base de datos
            this.security = "True"; //Integrated Security

            //Variables SQL
            this.conexion = nuevaConexion();
        }

        /// <summary>
        /// Metodo para crear una nueva conexion a la bd
        /// </summary>
        /// <returns></returns>
        public SqlConnection nuevaConexion()
        {
            return new SqlConnection("Data Source=" + data_source + ";Initial Catalog=" + initial_catalog + ";Integrated Security=" + security); 
        }

        /// <summary>
        /// Metodo para probar la conexion a la bd
        /// </summary>
        /// <returns></returns>
        public Boolean probarConexion()
        {
            try
            {
                using (SqlConnection conexion = nuevaConexion())
                {
                    conexion.Open();
                }

                return true;
            }
            catch (SqlException)
            {
                return false;
            }
        }

        /// <summary>
        /// Metodo para crear nuevo comando hacia la base de datos
        /// </summary>
        /// <param name="script">Comando SQL</param>
        /// <param name="conexion">Variable de conexion</param>
        /// <returns></returns>
        public SqlCommand nuevoComando(String script, SqlConnection conexion)
        {
            SqlCommand comando = new SqlCommand(script, conexion);
            return comando;
        }

        /// <summary>
        /// Metodo para ejecutar el comando dentro de la bd
        /// </summary>
        /// <param name="comando">Comando a utilizar (INSERT, ALTER, DELETE)</param>
        /// <returns></returns>
        public Boolean ejecutarComando(string script)
        {

            this.conexion.Open();
            this.comando = nuevoComando(script, this.conexion);
            
            try
            {
                this.transaccion = this.conexion.BeginTransaction();
                this.comando.ExecuteNonQuery();
                this.transaccion.Commit();
                this.conexion.Close();
                return true;
            }
            catch (Exception)
            {
                this.transaccion.Rollback();
                this.conexion.Close();
                return false;
            }
  
        }

        /// <summary>
        /// Buscar datos mediante un DataReader. SOLO con scripts SELECT
        /// </summary>
        /// <returns></returns>
        public SqlDataReader buscarDatos()
        {
            SqlDataReader resultados;

            this.conexion.Open();
            this.comando.Prepare();

            resultados = comando.ExecuteReader();
            comando.CommandTimeout = 0;
            
            conexion.Close();
            conexion.Dispose();

            return resultados;

        }

        /// <summary>
        /// Metodo para crear nuevo comando de tipo procedimiento almacenado hacia la base de datos
        /// </summary>
        /// <param name="spNombre">Nombre de procedimiento almacenado</param>
        /// <param name="conexion">Variable de conexion</param>
        /// <returns></returns>
        public void nuevoComandoSP(String spNombre)
        {
            this.comando = new SqlCommand(spNombre,this.conexion);
            comando.CommandType = CommandType.StoredProcedure;
        }

        /// <summary>
        /// Se agrega un parametro al comando de procedimiento almacenado
        /// </summary>
        /// <param name="param">Valor del dato</param>
        /// <param name="tipo">Tipo de dato: 1=Entero, 2=Varchar, 3=Decimal, 4=Fecha, 5=Imagen</param>
        /// <returns></returns>
        public void anadirParametroSP(string nombreParam, Object param, int tipo)
        {
            //Se declara y se coloca el nombre del parametro
            SqlParameter parametro = new SqlParameter();
            parametro.ParameterName = nombreParam;

            switch (tipo)
            {
                case 1:
                    parametro.SqlDbType = SqlDbType.BigInt; //Tipo de dato
                    parametro.Direction = ParameterDirection.Input; //Direccion de parametro
                    parametro.Value = param; //Valor de parametro
                    this.comando.Parameters.Add(parametro); //Agregar parametro al comando
                    break;
                case 2:
                    parametro.SqlDbType = SqlDbType.VarChar; //Tipo de dato
                    parametro.Direction = ParameterDirection.Input; //Direccion de parametro
                    parametro.Value = param; //Valor de parametro
                    parametro.Size = 2500; //Tamano de parametro
                    this.comando.Parameters.Add(parametro); //Agregar parametro al comando
                    break;
                case 3:
                    parametro.SqlDbType = SqlDbType.Decimal; //Tipo de dato
                    parametro.Direction = ParameterDirection.Input; //Direccion de parametro
                    parametro.Value = param; //Valor de parametro
                    parametro.Size = 10; //Tamano de parametro
                    parametro.Precision = 10;
                    parametro.Scale = 2;
                    this.comando.Parameters.Add(parametro); //Agregar parametro al comando
                    break;
                case 4:
                    parametro.SqlDbType = SqlDbType.Date; //Tipo de dato
                    parametro.Direction = ParameterDirection.Input; //Direccion de parametro
                    parametro.Value = param; //Valor de parametro
                    this.comando.Parameters.Add(parametro); //Agregar parametro al comando
                    break;
                case 5:
                    parametro.SqlDbType = SqlDbType.Image; //Tipo de dato
                    parametro.Direction = ParameterDirection.Input; //Direccion de parametro
                    parametro.Value = param; //Valor de parametro
                    this.comando.Parameters.Add(parametro); //Agregar parametro al comando
                    break;
            }
        }

        /// <summary>
        /// Se ejecuta un comando de procedimiento almacenado
        /// </summary>
        /// <returns></returns>
        public Boolean ejecutarSP()
        {
            
            this.conexion.Open();

            //Parametros que se usan dentro del procedimiento almacenado
            /*
            comando.Parameters.AddWithValue("Nombre", nombre);
            comando.Parameters.AddWithValue("Direccion", direccion);
            comando.Parameters.AddWithValue("FechaNacimiento", fechaNacimiento);
            */

            try
            {
                this.transaccion = this.conexion.BeginTransaction();
                this.comando.ExecuteNonQuery();
                this.transaccion.Commit();
                this.conexion.Close();
                return true;
            }
            catch (Exception)
            {
                this.transaccion.Rollback();
                this.conexion.Close();
                return false;
            }
        }

        #region Imagenes en la Base de Datos
        /// <summary>
        /// Metodo que converte una imagen a byte para ser almacenada en la bd
        /// </summary>
        /// <param name="imagen">Imagen a convertir</param>
        /// <returns></returns>
        public MemoryStream imagenToByte(Image imagen)
        {
            System.IO.MemoryStream buffer = new System.IO.MemoryStream();
            imagen.Save(buffer, System.Drawing.Imaging.ImageFormat.Jpeg);

            return buffer;
        }

        /// <summary>
        /// Metodo que convierte bytes a imagen para ser mostrada
        /// </summary>
        /// <param name="binario">bytes provenientes de la bd</param>
        /// <returns></returns>
        public Image byteToImagen(System.Data.SqlTypes.SqlBinary binario)
        {
            byte[] buffer = (byte[])binario;

            MemoryStream ms = new MemoryStream(buffer);

            return Image.FromStream(ms);
        }

        /// <summary>
        /// Metodo que compara 2 imagenes
        /// </summary>
        /// <param name="bitmap1">Imagen #1</param>
        /// <param name="bitmap2">Imagen #2</param>
        /// <returns></returns>
        public Boolean compararImagenes(Bitmap bitmap1, Bitmap bitmap2)
        {
            Boolean equal = true;
            for (int i = 0; i < bitmap1.Width; i++)
            {
                for (int j = 0; j < bitmap1.Height; j++)
                {
                    String img1 = bitmap1.GetPixel(i, j).ToString();
                    String img2 = bitmap2.GetPixel(i, j).ToString();

                    if (img1 != img2)
                    {
                        equal = false;
                        break;
                    }

                    equal = true;
                }
            }
            return equal;
        }

    #endregion


    }
}