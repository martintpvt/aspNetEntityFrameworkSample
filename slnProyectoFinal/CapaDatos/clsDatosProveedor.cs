using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsDatosProveedor
    {
        public bool ingresarDatosProveedor(string nombreProveedor, string rucProveedor, string direccionProveedor, string telefonoProveedor)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "INSERT INTO Proveedor(NombreProveedor, RUCProveedor, DireccionProveedor, TelefonoProveedor) VALUES (@nombreProveedor, @rucProveedor, @direccionProveedor, @telefonoProveedor)";

                SqlCommand comando = new SqlCommand(sql, clsConexion.conexion);

                comando.Parameters.Add("@nombreProveedor", SqlDbType.VarChar, 50, "NombreProveedor");
                comando.Parameters.Add("@rucProveedor", SqlDbType.Char, 13, "RUCProveedor");
                comando.Parameters.Add("@direccionProveedor", SqlDbType.VarChar, 100, "DireccionProveedor");
                comando.Parameters.Add("@telefonoProveedor", SqlDbType.VarChar, 10, "TelefonoProveedor");

                comando.Parameters["@nombreProveedor"].Value = nombreProveedor;
                comando.Parameters["@rucProveedor"].Value = rucProveedor;
                comando.Parameters["@direccionProveedor"].Value = direccionProveedor;
                comando.Parameters["@telefonoProveedor"].Value = telefonoProveedor;

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

        public bool actualizarDatosProveedor(int idProveedor, string nombreProveedor, string rucProveedor, string direccionProveedor, string telefonoProveedor)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "update Proveedor set NombreProveedor=@nombreProveedor, RUCProveedor=@rucProveedor, DireccionProveedor=@direccionProveedor, TelefonoProveedor=@telefonoProveedor where Id_Proveedor=" + idProveedor;

                SqlCommand comando = new SqlCommand(sql, clsConexion.conexion);

                comando.Parameters.Add("@nombreProveedor", SqlDbType.VarChar, 50, "NombreProveedor");
                comando.Parameters.Add("@rucProveedor", SqlDbType.Char, 13, "RUCProveedor");
                comando.Parameters.Add("@direccionProveedor", SqlDbType.VarChar, 100, "DireccionProveedor");
                comando.Parameters.Add("@telefonoProveedor", SqlDbType.VarChar, 10, "TelefonoProveedor");

                comando.Parameters["@nombreProveedor"].Value = nombreProveedor;
                comando.Parameters["@rucProveedor"].Value = rucProveedor;
                comando.Parameters["@direccionProveedor"].Value = direccionProveedor;
                comando.Parameters["@telefonoProveedor"].Value = telefonoProveedor;

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

        public bool eliminarDatosProveedor(int idProveedor)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "delete from Proveedor where Id_Proveedor=" + idProveedor;

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

        public DataSet consultarDatosNombreProveedores()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Proveedor, NombreProveedor from Proveedor;";

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

        public DataSet consultarDatosProveedores()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Proveedor as #, NombreProveedor as Nombre, RUCProveedor as RUC, DireccionProveedor as Direccion, TelefonoProveedor as Telefono from Proveedor;";

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

        public DataSet consultarDatosProveedor(int idProveedor)
        {
            DataSet objDatosProveedor = new DataSet();
            SqlDataAdapter adaptador;

            try
            {
                clsConexion.abrirConexion();
                string consultaSQL = "select * from Proveedor where Id_Proveedor=" + idProveedor;

                adaptador = new SqlDataAdapter(consultaSQL, clsConexion.conexion);
                adaptador.Fill(objDatosProveedor, "Proveedor");

                return objDatosProveedor;
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
