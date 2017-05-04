using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsDatosCliente
    {
        public bool ingresarDatosCliente(string nombreCliente, string apellidoCliente, string identificacionCliente, string direccionCliente, string telefonoCliente, string emailCliente)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "INSERT INTO Cliente(NombreCliente, ApellidoCliente, IdentificacionCliente, DireccionCliente, TelefonoCliente, CorreoElectronicoCliente) VALUES (@nombreCliente, @apellidoCliente, @identificacionCliente, @direccionCliente, @telefonoCliente, @emailCliente)";

                SqlCommand comando = new SqlCommand(sql, clsConexion.conexion);

                comando.Parameters.Add("@nombreCliente", SqlDbType.VarChar, 50, "NombreCliente");
                comando.Parameters.Add("@apellidoCliente", SqlDbType.VarChar, 50, "ApellidoCliente");
                comando.Parameters.Add("@identificacionCliente", SqlDbType.VarChar, 13, "IdentificacionCliente");
                comando.Parameters.Add("@direccionCliente", SqlDbType.VarChar, 50, "DireccionCliente");
                comando.Parameters.Add("@telefonoCliente", SqlDbType.VarChar, 10, "TelefonoCliente");
                comando.Parameters.Add("@emailCliente", SqlDbType.VarChar, 50, "CorreoElectronicoCliente");

                comando.Parameters["@nombreCliente"].Value = nombreCliente;
                comando.Parameters["@apellidoCliente"].Value = apellidoCliente;
                comando.Parameters["@identificacionCliente"].Value = identificacionCliente;
                comando.Parameters["@direccionCliente"].Value = direccionCliente;
                comando.Parameters["@telefonoCliente"].Value = telefonoCliente;
                comando.Parameters["@emailCliente"].Value = emailCliente;

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

        public bool actualizarDatosCliente(int idCliente, string nombreCliente, string apellidoCliente, string identificacionCliente, string direccionCliente, string telefonoCliente, string emailCliente)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "update Cliente set NombreCliente=@nombreCliente, ApellidoCliente=@apellidoCliente, IdentificacionCliente=@identificacionCliente, DireccionCliente=@direccionCliente, TelefonoCliente=@telefonoCliente, CorreoElectronicoCliente=@emailCliente where Id_Cliente=" + idCliente;

                SqlCommand comando = new SqlCommand(sql, clsConexion.conexion);

                comando.Parameters.Add("@nombreCliente", SqlDbType.VarChar, 50, "NombreCliente");
                comando.Parameters.Add("@apellidoCliente", SqlDbType.VarChar, 50, "ApellidoCliente");
                comando.Parameters.Add("@identificacionCliente", SqlDbType.VarChar, 13, "IdentificacionCliente");
                comando.Parameters.Add("@direccionCliente", SqlDbType.VarChar, 50, "DireccionCliente");
                comando.Parameters.Add("@telefonoCliente", SqlDbType.VarChar, 10, "TelefonoCliente");
                comando.Parameters.Add("@emailCliente", SqlDbType.VarChar, 50, "CorreoElectronicoCliente");

                comando.Parameters["@nombreCliente"].Value = nombreCliente;
                comando.Parameters["@apellidoCliente"].Value = apellidoCliente;
                comando.Parameters["@identificacionCliente"].Value = identificacionCliente;
                comando.Parameters["@direccionCliente"].Value = direccionCliente;
                comando.Parameters["@telefonoCliente"].Value = telefonoCliente;
                comando.Parameters["@emailCliente"].Value = emailCliente;

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

        public bool eliminarDatosCliente(int idCliente)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "delete from Cliente where Id_Cliente=" + idCliente;

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

        public DataSet consultarDatosNombreClientes()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Cliente, CONCAT(NombreCliente, ' ', ApellidoCliente) as NombreApellido from Cliente;";

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

        public DataSet consultarDatosClientes()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Cliente as #, NombreCliente as Nombre, ApellidoCliente as Apellido, IdentificacionCliente as CIRUC, DireccionCliente as Direccion, TelefonoCliente as Telefono, CorreoElectronicoCliente as Email from Cliente;";

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

        public DataSet consultarDatosCliente(int idCliente)
        {
            DataSet objDatosCliente = new DataSet();
            SqlDataAdapter adaptador;

            try
            {
                clsConexion.abrirConexion();
                string consultaSQL = "select * from Cliente where Id_Cliente=" + idCliente;

                adaptador = new SqlDataAdapter(consultaSQL, clsConexion.conexion);
                adaptador.Fill(objDatosCliente, "Cliente");

                return objDatosCliente;
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
