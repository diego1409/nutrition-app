﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Text;
using System.Threading.Tasks;

namespace nutritionApp
{
    public class Conexion
    {
        public OleDbConnection conexion;
        public OleDbCommand comando;
        //String strcomando;
        public String strconexion;
        OleDbTransaction transaccion;
        //bool conecta;
        //String xconecta;

        public void parametro(String bd, String ip, String nom_usuario, String clave)
        {
            //no funciona con localhost, ocupa el nombre del server
            strconexion = "Provider=SQLOLEDB;Server=DESKTOP-5VT4JLQ;Database=salad;Trusted_Connection=yes";
        }



        public bool inicializa()
        {
            conexion = new OleDbConnection(strconexion);
            try
            {
                conexion.Open();
                return true;
            }
            catch (OleDbException e)
            {
                Console.WriteLine(e.ErrorCode);
                return false;
            }

        }
        public OleDbDataReader busca()
        {
            OleDbDataReader busca_int;
            comando.Prepare();
            busca_int = comando.ExecuteReader();
            comando.CommandTimeout = 0;
            return busca_int;
            

        }
        public bool annadir_consulta(String _Consulta)
        {
            comando = new OleDbCommand(_Consulta, conexion);
            return false;
        }
        public bool annadir_parametro(Object _PARAMETRO, Int16 _TIPO)
        {
            OleDbParameter parametro;
            switch (_TIPO)
            {
                case 1:
                    parametro = comando.Parameters.Add("@InputParm", OleDbType.BigInt);
                    parametro.Value = _PARAMETRO;
                    break;
                case 2:
                    parametro = comando.Parameters.Add("@InputParm", OleDbType.VarChar, 2500);
                    parametro.Value = _PARAMETRO;
                    break;
                case 3:

                    parametro = comando.Parameters.Add("@InputParm", OleDbType.Decimal, 10);
                    parametro.Value = _PARAMETRO;
                    parametro.Precision = 10;
                    parametro.Scale = 2;
                    break;
                case 4:

                    parametro = comando.Parameters.Add("@InputParm", OleDbType.Date);
                    parametro.Value = _PARAMETRO;
                    break;
                case 5:

                    parametro = comando.Parameters.Add("@InputParm", OleDbType.LongVarBinary);
                    parametro.Value = _PARAMETRO;
                    break;
            }
            return false;
        }
        public bool ejecutasql(String sql)
        {
            inicializa();
            transaccion = conexion.BeginTransaction();
            try
            {
                comando = new OleDbCommand(sql, conexion);
                comando.Transaction = transaccion;
                comando.ExecuteNonQuery();
                transaccion.Commit();
                return true;
            }
            catch (OleDbException e)
            {
                Console.WriteLine(e.ErrorCode);
                transaccion.Rollback();
                return false;

            }
            finally
            {
                conexion.Close();
                conexion.Dispose();
            }

        }
        public void cuadricula(string csql, System.Data.DataSet aux)
        {
            inicializa();
            OleDbDataAdapter da = new OleDbDataAdapter(csql, conexion);
            da.Fill(aux);


        }
        public Conexion()
        {

        }
    }
}