using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsDatosCategoria
    {
        public bool ingresarDatosCategoria(string nombreCategoria, string descripcionCategoria)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "INSERT INTO Categoria(NombreCategoria, DescripcionCategoria) VALUES (@nombreCategoria, @descripcionCategoria)";

                SqlCommand comando = new SqlCommand(sql, clsConexion.conexion);

                comando.Parameters.Add("@nombreCategoria", SqlDbType.VarChar, 50, "NombreCategoria");
                comando.Parameters.Add("@descripcionCategoria", SqlDbType.VarChar, 100, "DescripcionCategoria");

                comando.Parameters["@nombreCategoria"].Value = nombreCategoria;
                comando.Parameters["@descripcionCategoria"].Value = descripcionCategoria;

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

        public bool actualizarDatosCategoria(int idCategoria, string nombreCategoria, string descripcionCategoria)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "update Categoria set NombreCategoria=@nombreCategoria, DescripcionCategoria=@descripcionCategoria where Id_Categoria=" + idCategoria;

                SqlCommand comando = new SqlCommand(sql, clsConexion.conexion);

                comando.Parameters.Add("@nombreCategoria", SqlDbType.VarChar, 50, "NombreCategoria");
                comando.Parameters.Add("@descripcionCategoria", SqlDbType.VarChar, 100, "DescripcionCategoria");

                comando.Parameters["@nombreCategoria"].Value = nombreCategoria;
                comando.Parameters["@descripcionCategoria"].Value = descripcionCategoria;

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

        public bool eliminarDatosCategoria(int idCategoria)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "delete from Categoria where Id_Categoria=" + idCategoria;

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

        public DataSet consultarDatosNombreCategorias()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Categoria, NombreCategoria from Categoria;";

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

        public DataSet consultarDatosCategorias()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Categoria as #, NombreCategoria as Nombre, DescripcionCategoria as Descripcion from Categoria;";

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

        public DataSet consultarDatosCategoria(int idCategoria)
        {
            DataSet objDatosCategoria = new DataSet();
            SqlDataAdapter adaptador;

            try
            {
                clsConexion.abrirConexion();
                string consultaSQL = "select * from Categoria where Id_Categoria=" + idCategoria;

                adaptador = new SqlDataAdapter(consultaSQL, clsConexion.conexion);
                adaptador.Fill(objDatosCategoria, "Categoria");

                return objDatosCategoria;
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
