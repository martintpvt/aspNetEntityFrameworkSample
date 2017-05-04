using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class clsUsuario
    {
        clsDatosUsuario objDatosUsuario = new clsDatosUsuario();

        private int idUsuario;
        private string userId;
        private string userName;
        private string email;

        public int IdUsuario
        {
            get
            {
                return idUsuario;
            }

            set
            {
                idUsuario = value;
            }
        }

        public string UserId
        {
            get
            {
                return userId;
            }

            set
            {
                userId = value;
            }
        }

        public string UserName
        {
            get
            {
                return userName;
            }

            set
            {
                userName = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }

        public bool ingresarUsuario(string userId)
        {
            UserId = userId;

            return objDatosUsuario.ingresarDatosUsuario(UserId);
        }

        public bool actualizarUsuario(int idUsuario, string userName, string email)
        {
            IdUsuario = idUsuario;
            UserName = userName;
            Email = email;

            objDatosUsuario.actualizarDatosUsuario(IdUsuario, UserName, Email);

            return true;
        }

        public bool eliminarUsuario(int idUsuario)
        {
            IdUsuario = idUsuario;
            if (objDatosUsuario.eliminarDatosUsuario(IdUsuario))
                return true;
            else
                return false;
        }

        public DataSet consultarNombreUsuarios()
        {
            return objDatosUsuario.consultarNombreDatosUsuarios();
        }

        public DataSet consultarUsuarios()
        {
            return objDatosUsuario.consultarDatosUsuarios();
        }

        public DataSet consultarUsuario(int idUsuario)
        {
            IdUsuario = idUsuario;

            return objDatosUsuario.consultarDatosUsuario(IdUsuario);
        }

        public DataSet consultarUsuario(string userId)
        {
            UserId = userId;

            return objDatosUsuario.consultarDatosUsuario(UserId);
        }
    }
}
