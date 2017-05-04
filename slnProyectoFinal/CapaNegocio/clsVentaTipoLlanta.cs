using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;

namespace CapaNegocio
{
    public class clsVentaTipoLlanta
    {
        clsDatosVentaTipoLlanta objDatosVentaTipoLlanta = new clsDatosVentaTipoLlanta();

        private int idVenta;
        private int idTipoLlanta;
        private int cantidad;

        public int IdVenta
        {
            get
            {
                return idVenta;
            }

            set
            {
                idVenta = value;
            }
        }

        public int IdTipoLlanta
        {
            get
            {
                return idTipoLlanta;
            }

            set
            {
                idTipoLlanta = value;
            }
        }

        public int Cantidad
        {
            get
            {
                return cantidad;
            }

            set
            {
                cantidad = value;
            }
        }

        public int ingresarVentaTipoLlanta(int idVenta, int idTipoLlanta, int cantidad)
        {
            IdVenta = idVenta;
            IdTipoLlanta = idTipoLlanta;
            Cantidad = cantidad;

            return objDatosVentaTipoLlanta.ingresarDatosVentaTipoLlanta(IdVenta, IdTipoLlanta, Cantidad);
        }
    }
}
