using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

// Referencias a las librerías necesarias
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;

namespace nutritionApp.Clases
{
    public class clsConexion
    {
    #region Atributos de la clase conexión
        private string data_source;
        private string initial_catalog;
        private string security;
    #endregion

        /// <summary>
        /// Clase constructor de la conexion a la bd
        /// </summary>
        public clsConexion()
        {
            this.data_source = "localhost"; //Nombre del servidor
            this.initial_catalog = "Salad"; //Nombre de la base de datos
            this.security = "True"; //Integrated Security
        }

        /// <summary>
        /// Metodo para crear una nueva conexion a la bd
        /// </summary>
        /// <returns></returns>
        public SqlConnection nuevaConexion()
        {
            SqlConnection conexion = new SqlConnection("Data Source=" + data_source + ";Initial Catalog=" + initial_catalog + ";Integrated Security=" + security);
            return conexion;
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
        public Boolean ejecutarComando(string comando)
        {
            using (SqlConnection conexion = nuevaConexion())
            {

                conexion.Open();
                SqlCommand com = nuevoComando(comando, conexion);

                try
                {
                    com.ExecuteNonQuery();
                    conexion.Close();
                    return true;
                }
                catch (Exception)
                {
                    conexion.Close();
                    return false;
                }

            }
        }

        /// <summary>
        /// Metodo para crear nuevo comando de tipo procedimiento almacenado hacia la base de datos
        /// </summary>
        /// <param name="spNombre">Nombre de procedimiento almacenado</param>
        /// <param name="conexion">Variable de conexion</param>
        /// <returns></returns>
        public SqlCommand nuevoComandoSP(String spNombre, SqlConnection conexion)
        {
            SqlCommand comando = new SqlCommand(spNombre,conexion);
            comando.CommandType = CommandType.StoredProcedure;
            return comando;
        }

        public Boolean ejecutarSP()
        {
            using (SqlConnection conexion = nuevaConexion())
            {
                conexion.Open();

                SqlCommand comando = nuevoComandoSP("spNombre", conexion);

                SqlParameter paramId = new SqlParameter("Id", SqlDbType.Int);
                paramId.Direction = ParameterDirection.Output;
                comando.Parameters.Add(paramId);

                //Parametros que se usan dentro del procedimiento almacenado
                /*
                comando.Parameters.AddWithValue("Nombre", nombre);
                comando.Parameters.AddWithValue("Direccion", direccion);
                comando.Parameters.AddWithValue("FechaNacimiento", fechaNacimiento);
                */
                int rowsAffected = comando.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    return true;
                }
                else
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