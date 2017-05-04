using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsDatosVentaTipoLlanta
    {
        public int ingresarDatosVentaTipoLlanta(int idVenta, int idTipoLlanta, int cantidad)
        {
            try
            {
                clsConexion.abrirConexion();

                SqlCommand comando = new SqlCommand("SP_VentaTipoLlanta", clsConexion.conexion);

                comando.Parameters.AddWithValue("@Id_Venta", idVenta);
                comando.Parameters.AddWithValue("@Id_TipoLlanta", idTipoLlanta);
                comando.Parameters.AddWithValue("@Cantidad", cantidad);

                SqlParameter respuesta = comando.Parameters.Add("@respuesta", SqlDbType.Int);
                respuesta.Direction = ParameterDirection.ReturnValue;

                comando.CommandType = CommandType.StoredProcedure;

                comando.ExecuteNonQuery();

                clsConexion.cerrarConexion();

                return int.Parse(comando.Parameters["@respuesta"].Value.ToString());
            }
            catch
            {
                return 0;
            }
        }

        public bool actualizarDatosVentaTipoLlanta(int idVenta, int idTipoLlanta, int cantidad)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "update VentaTipoLlanta set Cantidad=@cantidad where Id_Venta=" + idVenta + " and Id_TipoLlanta=" + idTipoLlanta;

                SqlCommand comando = new SqlCommand(sql, clsConexion.conexion);

                comando.Parameters.Add("@cantidad", SqlDbType.Int, 50, "Cantidad");

                comando.Parameters["@cantidad"].Value = cantidad;

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

        public bool eliminarDatosVentaTipoLlanta(int idVenta, int idTipoLlanta)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "delete from VentaTipoLlanta where Id_Venta=" + idVenta + " and Id_TipoLlanta=" + idTipoLlanta;

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
    }
}
