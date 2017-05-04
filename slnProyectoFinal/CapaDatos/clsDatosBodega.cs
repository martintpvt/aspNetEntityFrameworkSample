using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsDatosBodega
    {
        public bool ingresarDatosBodega(string nombreBodega, string direccionBodega, int capacidadBodega, string telefonoBodega)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "INSERT INTO Bodega(NombreBodega, DireccionBodega, CapacidadBodega, TelefonoBodega) VALUES (@nombreBodega, @direccionBodega, @capacidadBodega, @telefonoBodega)";

                SqlCommand comando = new SqlCommand(sql, clsConexion.conexion);

                comando.Parameters.Add("@nombreBodega", SqlDbType.VarChar, 50, "NombreBodega");
                comando.Parameters.Add("@direccionBodega", SqlDbType.VarChar, 100, "DireccionBodega");
                comando.Parameters.Add("@capacidadBodega", SqlDbType.Int, 50, "CapacidadBodega");
                comando.Parameters.Add("@telefonoBodega", SqlDbType.VarChar, 10, "TelefonoBodega");

                comando.Parameters["@nombreBodega"].Value = nombreBodega;
                comando.Parameters["@direccionBodega"].Value = direccionBodega;
                comando.Parameters["@capacidadBodega"].Value = capacidadBodega;
                comando.Parameters["@telefonoBodega"].Value = telefonoBodega;

                comando.ExecuteNonQuery();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                clsConexion.cerrarConexion();
            }
        }

        public bool actualizarDatosBodega(int idBodega, string nombreBodega, string direccionBodega, int capacidadBodega, string telefonoBodega)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "update Bodega set NombreBodega=@nombreBodega, DireccionBodega=@direccionBodega, CapacidadBodega=@capacidadBodega, TelefonoBodega=@telefonoBodega where Id_Bodega=" + idBodega;

                SqlCommand comando = new SqlCommand(sql, clsConexion.conexion);

                comando.Parameters.Add("@nombreBodega", SqlDbType.VarChar, 50, "NombreBodega");
                comando.Parameters.Add("@direccionBodega", SqlDbType.VarChar, 100, "DireccionBodega");
                comando.Parameters.Add("@capacidadBodega", SqlDbType.Int, 50, "CapacidadBodega");
                comando.Parameters.Add("@telefonoBodega", SqlDbType.VarChar, 10, "TelefonoBodega");

                comando.Parameters["@nombreBodega"].Value = nombreBodega;
                comando.Parameters["@direccionBodega"].Value = direccionBodega;
                comando.Parameters["@capacidadBodega"].Value = capacidadBodega;
                comando.Parameters["@telefonoBodega"].Value = telefonoBodega;

                comando.ExecuteNonQuery();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                clsConexion.cerrarConexion();
            }
        }

        public bool eliminarDatosBodega(int idBodega)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "delete from Bodega where Id_Bodega=" + idBodega;

                SqlCommand comando = new SqlCommand(sql, clsConexion.conexion);

                comando.ExecuteNonQuery();

                return true;
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                clsConexion.cerrarConexion();
            }
        }

        public DataSet consultarDatosNombreBodegas()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Bodega, NombreBodega from Bodega;";

                adaptador = new SqlDataAdapter(consultaSQL, clsConexion.conexion);
                adaptador.Fill(dataSet);

                return dataSet;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                clsConexion.cerrarConexion();
            }
        }

        public DataSet consultarDatosBodegas()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Bodega as #, NombreBodega as Nombre, DireccionBodega as Direccion, CapacidadBodega as Capacidad, TelefonoBodega as Telefono from Bodega;";

                adaptador = new SqlDataAdapter(consultaSQL, clsConexion.conexion);
                adaptador.Fill(dataSet);

                return dataSet;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                clsConexion.cerrarConexion();
            }
        }

        public DataSet consultarDatosBodega(int idBodega)
        {
            DataSet objDatosBodega = new DataSet();
            SqlDataAdapter adaptador;

            try
            {
                clsConexion.abrirConexion();
                string consultaSQL = "select * from Bodega where Id_Bodega=" + idBodega;

                adaptador = new SqlDataAdapter(consultaSQL, clsConexion.conexion);
                adaptador.Fill(objDatosBodega, "Bodega");

                return objDatosBodega;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                clsConexion.cerrarConexion();
            }
        }
    }
}
