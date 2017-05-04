using CapaDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaNegocio
{
    public class clsBodega
    {
        clsDatosBodega objDatosBodega = new clsDatosBodega();

        private int idBodega;
        private string nombreBodega;
        private string direccionBodega;
        private int capacidadBodega;
        private string telefonoBodega;

        public int IdBodega
        {
            get
            {
                return idBodega;
            }

            set
            {
                idBodega = value;
            }
        }

        public string NombreBodega
        {
            get
            {
                return nombreBodega;
            }

            set
            {
                nombreBodega = value;
            }
        }

        public string DireccionBodega
        {
            get
            {
                return direccionBodega;
            }

            set
            {
                direccionBodega = value;
            }
        }

        public int CapacidadBodega
        {
            get
            {
                return capacidadBodega;
            }

            set
            {
                capacidadBodega = value;
            }
        }

        public string TelefonoBodega
        {
            get
            {
                return telefonoBodega;
            }

            set
            {
                telefonoBodega = value;
            }
        }

        public bool ingresarBodega(string nombreBodega, string direccionBodega, int capacidadBodega, string telefonoBodega)
        {
            NombreBodega = nombreBodega;
            DireccionBodega = direccionBodega;
            CapacidadBodega = capacidadBodega;
            TelefonoBodega = telefonoBodega;

            if (objDatosBodega.ingresarDatosBodega(NombreBodega, DireccionBodega, CapacidadBodega, TelefonoBodega))
                return true;
            else
                return false;
        }

        public bool actualizarBodega(int idBodega, string nombreBodega, string direccionBodega, int capacidadBodega, string telefonoBodega)
        {
            IdBodega = idBodega;
            NombreBodega = nombreBodega;
            DireccionBodega = direccionBodega;
            CapacidadBodega = capacidadBodega;
            TelefonoBodega = telefonoBodega;

            if (objDatosBodega.actualizarDatosBodega(IdBodega, NombreBodega, DireccionBodega, CapacidadBodega, TelefonoBodega))
                return true;
            else
                return false;
        }

        public bool eliminarBodega(int idBodega)
        {
            IdBodega = idBodega;

            if (objDatosBodega.eliminarDatosBodega(IdBodega))
                return true;
            else
                return false;
        }

        public DataSet consultarNombreBodegas()
        {
            return objDatosBodega.consultarDatosNombreBodegas();
        }

        public DataSet consultarBodegas()
        {
            return objDatosBodega.consultarDatosBodegas();
        }

        public DataSet consultarBodega(int idBodega)
        {
            IdBodega = idBodega;

            return objDatosBodega.consultarDatosBodega(IdBodega);
        }
    }
}
