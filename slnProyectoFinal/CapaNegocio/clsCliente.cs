using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using System.Data;

namespace CapaNegocio
{
    public class clsCliente
    {
        clsDatosCliente objDatosCliente = new clsDatosCliente();

        private int idCliente;
        private string nombreCliente;
        private string apellidoCliente;
        private string identificacionCliente;
        private string direccionCliente;
        private string telefonoCliente;
        private string emailCliente;

        public int IdCliente
        {
            get
            {
                return idCliente;
            }

            set
            {
                idCliente = value;
            }
        }

        public string NombreCliente
        {
            get
            {
                return nombreCliente;
            }

            set
            {
                nombreCliente = value;
            }
        }

        public string ApellidoCliente
        {
            get
            {
                return apellidoCliente;
            }

            set
            {
                apellidoCliente = value;
            }
        }

        public string IdentificacionCliente
        {
            get
            {
                return identificacionCliente;
            }

            set
            {
                identificacionCliente = value;
            }
        }

        public string DireccionCliente
        {
            get
            {
                return direccionCliente;
            }

            set
            {
                direccionCliente = value;
            }
        }

        public string TelefonoCliente
        {
            get
            {
                return telefonoCliente;
            }

            set
            {
                telefonoCliente = value;
            }
        }

        public string EmailCliente
        {
            get
            {
                return emailCliente;
            }

            set
            {
                emailCliente = value;
            }
        }

        public bool ingresarCliente(string nombreCliente, string apellidoCliente, string identificacionCliente, string direccionCliente, string telefonoCliente, string emailCliente)
        {
            NombreCliente = nombreCliente;
            ApellidoCliente = apellidoCliente;
            IdentificacionCliente = identificacionCliente;
            DireccionCliente = direccionCliente;
            TelefonoCliente = telefonoCliente;
            EmailCliente = emailCliente;

            if (objDatosCliente.ingresarDatosCliente(NombreCliente, ApellidoCliente, IdentificacionCliente, DireccionCliente, TelefonoCliente, EmailCliente))
                return true;
            else
                return false;
        }

        public bool actualizarCliente(int idCliente, string nombreCliente, string apellidoCliente, string identificacionCliente, string direccionCliente, string telefonoCliente, string emailCliente)
        {
            IdCliente = idCliente;
            NombreCliente = nombreCliente;
            ApellidoCliente = apellidoCliente;
            IdentificacionCliente = identificacionCliente;
            DireccionCliente = direccionCliente;
            TelefonoCliente = telefonoCliente;
            EmailCliente = emailCliente;

            if (objDatosCliente.actualizarDatosCliente(IdCliente, NombreCliente, ApellidoCliente, IdentificacionCliente, DireccionCliente, TelefonoCliente, EmailCliente))
                return true;
            else
                return false;
        }

        public bool eliminarCliente(int idCliente)
        {
            IdCliente = idCliente;

            if (objDatosCliente.eliminarDatosCliente(IdCliente))
                return true;
            else
                return false;
        }

        public DataSet consultarNombreClientes()
        {
            return objDatosCliente.consultarDatosNombreClientes();
        }

        public DataSet consultarClientes()
        {
            return objDatosCliente.consultarDatosClientes();
        }

        public DataSet consultarCliente(int idCliente)
        {
            IdCliente = idCliente;

            return objDatosCliente.consultarDatosCliente(idCliente);
        }
    }
}
