using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsDatosVenta
    {
        public int ingresarDatosVenta(string idUsuario, int idCliente)
        {
            clsConexion.abrirConexion();

            SqlCommand comando = new SqlCommand("SP_Venta", clsConexion.conexion);

            comando.Parameters.AddWithValue("@Id_Usuario", idUsuario);
            comando.Parameters.AddWithValue("@Id_Cliente", idCliente);

            SqlParameter idVenta = comando.Parameters.Add("@Id_Venta", SqlDbType.Int);
            idVenta.Direction = ParameterDirection.ReturnValue;

            comando.CommandType = CommandType.StoredProcedure;

            comando.ExecuteNonQuery();

            clsConexion.cerrarConexion();

            return int.Parse(comando.Parameters["@Id_Venta"].Value.ToString());
        }

        public bool actualizarDatosBodega(int idVenta, int idUsuario, int idCliente, DateTime fechaFactura, decimal totalFactura, int devuelto)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "update Venta set Id_Usuario=@nombreBodega, Id_Cliente=@direccionBodega, FechaFactura=@capacidadBodega, TotalFactura=@telefonoBodega, Devuelto=@devuelto where Id_Venta=" + idVenta;

                SqlCommand comando = new SqlCommand(sql, clsConexion.conexion);

                comando.Parameters.Add("@idUsuario", SqlDbType.Int, 50, "Id_Usuario");
                comando.Parameters.Add("@idCliente", SqlDbType.Int, 50, "Id_Cliente");
                comando.Parameters.Add("@fechaFactura", SqlDbType.DateTime, 50, "FechaFactura");
                comando.Parameters.Add("@totalFactura", SqlDbType.Money, 50, "TotalFactura");
                comando.Parameters.Add("@devuelto", SqlDbType.Bit, 2, "Devuelto");

                comando.Parameters["@idUsuario"].Value = idUsuario;
                comando.Parameters["@idCliente"].Value = idCliente;
                comando.Parameters["@fechaFactura"].Value = fechaFactura;
                comando.Parameters["@totalFactura"].Value = totalFactura;
                comando.Parameters["@devuelto"].Value = devuelto;

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

        public bool eliminarDatosVenta(int idVenta)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "delete from Venta where Id_Venta=" + idVenta;

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

        public DataSet consultarDatosVenta(int idVenta)
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

        public DataSet consultarDatosVentaCliente(int idCliente)
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Venta as #Factura, TotalFactura from Venta where Id_Cliente = " + idCliente;

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

        public DataSet consultarDatosClienteVenta(int idCliente)
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select * from Venta where Id_Cliente = " + idCliente + " and Devuelto = 0";

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

        public DataSet consultarDatosVentaUsuario(string idUsuario)
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Venta as #Factura, TotalFactura from Venta, Usuario where Venta.Id_Usuario = Usuario.Id_Usuario and Usuario.UserId = '" + idUsuario + "'";

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

        public DataSet consultarDatosProductosFactura(int idVenta)
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select TipoLlanta.Id_TipoLlanta as #, NombreBodega as Ubicacion, NombreCategoria as Categoria, NombreTipoLlanta as Tipo, Marca, Rin, PrecioUnitario as Precio, Cantidad, PrecioUnitario * Cantidad as Total, Color from TipoLlanta, Bodega, Categoria, Venta, VentaTipoLlanta where TipoLlanta.Id_Bodega = Bodega.Id_Bodega and TipoLlanta.Id_Categoria = Categoria.Id_Categoria and VentaTipoLlanta.Id_Venta = Venta.Id_Venta and VentaTipoLlanta.Id_TipoLlanta = TipoLlanta.Id_TipoLlanta and Venta.Id_Venta = " + idVenta;

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

        public int devolverDatosVenta(int idVenta)
        {
            SqlDataAdapter adaptador;
            DataSet dataset;
            SqlCommand comando;

            try
            {
                clsConexion.abrirConexion();
                dataset = new DataSet();

                string consultaSQL = "select * from VentaTipoLlanta where Id_Venta = " + idVenta;

                adaptador = new SqlDataAdapter(consultaSQL, clsConexion.conexion);
                adaptador.Fill(dataset);

                foreach (DataRow row in dataset.Tables[0].Rows)
                {
                    comando = new SqlCommand("SP_DevolverVentaTipoLlanta", clsConexion.conexion);

                    comando.Parameters.AddWithValue("@Id_Venta", int.Parse(row["Id_Venta"].ToString()));
                    comando.Parameters.AddWithValue("@Id_TipoLlanta", int.Parse(row["Id_TipoLlanta"].ToString()));

                    SqlParameter respuesta = comando.Parameters.Add("@respuesta", SqlDbType.Int);
                    respuesta.Direction = ParameterDirection.ReturnValue;

                    comando.CommandType = CommandType.StoredProcedure;

                    comando.ExecuteNonQuery();
                }
                consultaSQL = "update Venta set Devuelto = 1 where Id_Venta = " + idVenta;

                comando = new SqlCommand(consultaSQL, clsConexion.conexion);
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

        public DataSet consultarDatosVentasTotales()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select UserName as Vendedor, NombreCliente as Cliente, FechaFactura as Fecha, TotalFactura as ValorVenta from Usuario, Cliente, Venta, aspnet_Users where Usuario.Id_Usuario = Venta.Id_usuario and Cliente.Id_Cliente = Venta.Id_Cliente and Usuario.UserId = aspnet_Users.UserId and Devuelto = 0";

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
