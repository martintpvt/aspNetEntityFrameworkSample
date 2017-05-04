using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsDatosUsuario
    {
        public bool ingresarDatosUsuario(string userId)
        {
            try
            {
                clsConexion.abrirConexion();
                
                string sql = "insert into Usuario(UserId) values('" + userId + "');";

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

        public bool actualizarDatosUsuario(int idUsuario, string userName, string email)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "update aspnet_Users set UserName = '" + userName + "', LoweredUserName = '" + userName.ToLower() + "' where UserId = (select UserId from Usuario where Id_Usuario = " + idUsuario + ");";

                sql += "update aspnet_Membership set Email = '" + email + "', LoweredEmail = '" + email.ToLower() + "' where UserId = (select UserId from Usuario where Id_Usuario = " + idUsuario + ");";

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

        public bool eliminarDatosUsuario(int idUsuario)
        {
            try
            {
                clsConexion.abrirConexion();
                string sql = "delete from Usuario where Id_Usuario=" + idUsuario;

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

        public DataSet consultarNombreDatosUsuarios()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Usuario, UserName from Usuario, aspnet_Users where Usuario.UserId = aspnet_Users.UserId;";

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

        public DataSet consultarDatosUsuarios()
        {
            SqlDataAdapter adaptador;
            DataSet dataSet;

            try
            {
                clsConexion.abrirConexion();
                dataSet = new DataSet();

                string consultaSQL = "select Id_Usuario, UserName, Email from aspnet_Users, aspnet_Membership, Usuario where aspnet_Users.UserId = aspnet_Membership.UserId and aspnet_Membership.UserId = Usuario.UserId";

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

        public DataSet consultarDatosUsuario(int idUsuario)
        {
            DataSet objDatosUsuario = new DataSet();
            SqlDataAdapter adaptador;

            try
            {
                clsConexion.abrirConexion();
                string consultaSQL = "select Id_Usuario, UserName, Email from aspnet_Users, aspnet_Membership, Usuario where aspnet_Users.UserId = aspnet_Membership.UserId and Usuario.UserId = aspnet_Membership.UserId and Id_Usuario = " + idUsuario;

                adaptador = new SqlDataAdapter(consultaSQL, clsConexion.conexion);
                adaptador.Fill(objDatosUsuario, "Usuario");

                return objDatosUsuario;
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

        public DataSet consultarDatosUsuario(string userId)
        {
            DataSet objDatosUsuario = new DataSet();
            SqlDataAdapter adaptador;

            try
            {
                clsConexion.abrirConexion();
                string consultaSQL = "select Id_Usuario, UserName, Email, Usuario.UserId from aspnet_Users, aspnet_Membership, Usuario where aspnet_Users.UserId = aspnet_Membership.UserId and Usuario.UserId = aspnet_Membership.UserId and Usuario.UserId = '" + userId + "'";

                adaptador = new SqlDataAdapter(consultaSQL, clsConexion.conexion);
                adaptador.Fill(objDatosUsuario, "Usuario");

                return objDatosUsuario;
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
