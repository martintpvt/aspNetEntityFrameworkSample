using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsDatosTipoLlanta
    {
        public int ingresarDatosTipoLlanta(int idBodega, int idCategoria, string nombreTipoLlanta, int stock, string marca, int rin, decimal precioUnitario, string color, int idProveedor, string userId, decimal precioCompra)
        {
            clsConexion.abrirConexion();

            try
            {
                SqlCommand comando = new SqlCommand("SP_IngresarTipoLlanta", clsConexion.conexion);

                comando.Parameters.AddWithValue("@Id_Bodega", idBodega);
                comando.Parameters.AddWithValue("@Id_Categoria", idCategoria);
                comando.Parameters.AddWithValue("@Id_Usuario", userId);
                comando.Parameters.AddWithValue("@Id_Proveedor", idProveedor);
                comando.Parameters.AddWithValue("@NombreTipoLlanta", nombreTipoLlanta);
                comando.Parameters.AddWithValue("@Stock", stock);
                comando.Parameters.AddWithValue("@Marca", marca);
                comando.Parameters.AddWithValue("@Rin", rin);
                comando.Parameters.AddWithValue("@PrecioCompra", precioCompra);
                comando.Parameters.AddWithValue("@PrecioUnitario", precioUnitario);
                comando.Parameters.AddWithValue("@Color", color);

                SqlParameter respuesta = comando.Parameters.Add("@respuesta", SqlDbType.Char);
                respuesta.Direction = ParameterDirection.ReturnValue;

                comando.CommandType = CommandType.StoredProcedure;

                comando.ExecuteNonQuery();

                return 1;
            }
            catch
            {
                return 0;
            }
            finally
            {
                clsConexion.cerrarConexion();
            }
        }

        public int actualizarDatosTipoLlanta(int idTipoLlanta, int idBodega, int idCategoria, string nombreTipoLlanta, int stock, string marca, int rin, decimal precioUnitario, string color, int idProveedor, decimal precioCompra)
        {
            clsConexion.abrirConexion();

            try
            {
                SqlCommand comando = new SqlCommand("SP_ActualizarTipoLlanta", clsConexion.conexion);

                comando.Parameters.AddWithValue("@Id_TipoLlanta", idTipoLlanta);
                comando.Parameters.AddWithValue("@Id_Bodega", idBodega);
                comando.Parameters.AddWithValue("@Id_Categoria", idCategoria);
                comando.Parameters.AddWithValue("@NombreTipoLlanta", nombreTipoLlanta);
                comando.Parameters.AddWithValue("@Stock", stock);
                comando.Parameters.AddWithValue("@Marca", marca);
                comando.Parameters.AddWithValue("@Rin", rin);
                comando.Parameters.AddWithValue("@PrecioUnitario", precioUnitario);
                comando.Parameters.AddWithValue("@Color", color);
                comando.Parameters.AddWithValue("@Id_Proveedor", idProveedor);
                comando.Parameters.AddWithValue("@PrecioCompra", precioCompra);

                SqlParameter respuesta = comando.Parameters.Add("@respuesta", SqlDbType.Char);
                respuesta.Direction = ParameterDirection.ReturnValue;

                comando.CommandType = CommandType.StoredProcedure;

                

                return 1;
            }
            catch
            {
                return 0;
            }
            finally
            {
                clsConexion.cerrarConexion();
            }
        }

        public int eliminarDatosTipoLlanta(int idTipoLlanta)
        {
            clsConexion.abrirConexion();

            SqlCommand comando = new SqlCommand("SP_EliminarTipoLlanta", clsConexion.conexion);

            comando.Parameters.AddWithValue("@Id_TipoLlanta", idTipoLlanta);

            SqlParameter respuesta = comando.Parameters.Add("@respuesta", SqlDbType.Char);
            respuesta.Direction = ParameterDirection.ReturnValue;

            comando.CommandType = CommandType.StoredProcedure;

            comando.ExecuteNonQuery();

            clsConexion.cerrarConexion();

            return int.Parse(comando.Parameters["@respuesta"].Value.ToString());
        }

        public DataSet consultarDatosNombreTiposLlanta()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_TipoLlanta, NombreTipoLlanta from TipoLlanta;";

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

        public DataSet consultarDatosTiposLlanta()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_TipoLlanta as #, NombreBodega as Ubicacion, NombreCategoria as Categoria, NombreTipoLlanta as Tipo, Stock, Marca, Rin, PrecioUnitario as Precio, Color from TipoLlanta, Bodega, Categoria where TipoLlanta.Id_Bodega = Bodega.Id_Bodega and TipoLlanta.Id_Categoria = Categoria.Id_Categoria;";

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

        public DataSet consultarDatosTipoLlanta(int idTipoLlanta)
        {
            DataSet objDatosTipoLlanta = new DataSet();
            SqlDataAdapter adaptador;

            try
            {
                clsConexion.abrirConexion();
                string consultaSQL = "select * from TipoLlanta where Id_TipoLlanta=" + idTipoLlanta;

                adaptador = new SqlDataAdapter(consultaSQL, clsConexion.conexion);
                adaptador.Fill(objDatosTipoLlanta, "TipoLlanta");

                return objDatosTipoLlanta;
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

        public DataSet consultarDatosStockTipoLlanta(int idTipoLlanta)
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_TipoLlanta as #, NombreTipoLlanta as Nombre, Stock from TipoLlanta where Id_TipoLlanta = " + idTipoLlanta;

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

        public DataSet consultarDatosIngresosGastos()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select TipoLlanta.Id_TipoLlanta as #, TipoLlanta.NombreTipoLlanta, SUM(PrecioCompra * (Stock + Cantidad)) as Gastos, SUM(PrecioUnitario * Cantidad) as Ventas from TipoLlanta, VentaTipoLlanta where TipoLlanta.Id_TipoLlanta = VentaTipoLlanta.Id_TipoLlanta group by TipoLlanta.Id_TipoLlanta, TipoLlanta.NombreTipoLlanta";

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
    }
}
