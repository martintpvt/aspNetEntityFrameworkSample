using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class clsProveedor
    {
        clsDatosProveedor objDatosProveedor = new clsDatosProveedor();

        private int idProveedor;
        private string nombreProveedor;
        private string rucProveedor;
        private string direccionProveedor;
        private string telefonoProveedor;

        public int IdProveedor
        {
            get
            {
                return idProveedor;
            }

            set
            {
                idProveedor = value;
            }
        }

        public string NombreProveedor
        {
            get
            {
                return nombreProveedor;
            }

            set
            {
                nombreProveedor = value;
            }
        }

        public string RucProveedor
        {
            get
            {
                return rucProveedor;
            }

            set
            {
                rucProveedor = value;
            }
        }

        public string DireccionProveedor
        {
            get
            {
                return direccionProveedor;
            }

            set
            {
                direccionProveedor = value;
            }
        }

        public string TelefonoProveedor
        {
            get
            {
                return telefonoProveedor;
            }

            set
            {
                telefonoProveedor = value;
            }
        }

        public bool ingresarProveedor(string nombreProveedor, string rucProveedor, string direccionProveedor, string telefonoProveedor)
        {
            NombreProveedor = nombreProveedor;
            RucProveedor = rucProveedor;
            DireccionProveedor = direccionProveedor;
            TelefonoProveedor = telefonoProveedor;

            if (objDatosProveedor.ingresarDatosProveedor(NombreProveedor, RucProveedor, DireccionProveedor, TelefonoProveedor))
                return true;
            else
                return false;
        }

        public bool actualizarProveedor(int idProveedor, string nombreProveedor, string rucProveedor, string direccionProveedor, string telefonoProveedor)
        {
            IdProveedor = idProveedor;
            NombreProveedor = nombreProveedor;
            RucProveedor = rucProveedor;
            DireccionProveedor = direccionProveedor;
            TelefonoProveedor = telefonoProveedor;

            if (objDatosProveedor.actualizarDatosProveedor(IdProveedor, NombreProveedor, RucProveedor, DireccionProveedor, TelefonoProveedor))
                return true;
            else
                return false;
        }

        public bool eliminarProveedor(int idProveedor)
        {
            IdProveedor = idProveedor;

            if (objDatosProveedor.eliminarDatosProveedor(IdProveedor))
                return true;
            else
                return false;
        }

        public DataSet consultarNombreProveedores()
        {
            return objDatosProveedor.consultarDatosNombreProveedores();
        }

        public DataSet consultarProveedores()
        {
            return objDatosProveedor.consultarDatosProveedores();
        }

        public DataSet consultarProveedor(int idProveedor)
        {
            IdProveedor = idProveedor;

            return objDatosProveedor.consultarDatosProveedor(IdProveedor);
        }
    }
}
