using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using System.Data;

namespace CapaNegocio
{
    public class clsVenta
    {
        clsDatosVenta objDatosVenta = new clsDatosVenta();

        private int idVenta;
        private string idUsuario;
        private int idCliente;
        private DateTime fechaFactura;
        private decimal totalFactura;
        private int devuelto;

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

        public string IdUsuario
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

        public DateTime FechaFactura
        {
            get
            {
                return fechaFactura;
            }

            set
            {
                fechaFactura = value;
            }
        }

        public decimal TotalFactura
        {
            get
            {
                return totalFactura;
            }

            set
            {
                totalFactura = value;
            }
        }

        public int Devuelto
        {
            get
            {
                return devuelto;
            }

            set
            {
                devuelto = value;
            }
        }

        public int ingresarVenta(string idUsuario, int idCliente)
        {
            IdUsuario = idUsuario;
            IdCliente = idCliente;

            IdVenta = objDatosVenta.ingresarDatosVenta(IdUsuario, IdCliente);

            return IdVenta;
        }

        public DataSet consultarVentaCliente(int idCliente)
        {
            IdCliente = idCliente;

            return objDatosVenta.consultarDatosVentaCliente(IdCliente);
        }

        public DataSet consultarVentaUsuario(string idUsuario)
        {
            IdUsuario = idUsuario;

            return objDatosVenta.consultarDatosVentaUsuario(IdUsuario);
        }

        public DataSet consultarClienteVenta(int idCliente)
        {
            IdCliente = idCliente;

            return objDatosVenta.consultarDatosClienteVenta(IdCliente);
        }

        public DataSet consultarProductosFactura(int idVenta)
        {
            IdVenta = idVenta;

            return objDatosVenta.consultarDatosProductosFactura(IdVenta);
        }

        public int devolverVenta(int idVenta)
        {
            IdVenta = idVenta;

            return objDatosVenta.devolverDatosVenta(IdVenta);
        }

        public DataSet consultarVentasTotales()
        {
            return objDatosVenta.consultarDatosVentasTotales();
        }
    }
}
