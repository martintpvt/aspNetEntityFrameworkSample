using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using System.Data;

namespace CapaNegocio
{
    public class clsTipoLlanta
    {
        clsDatosTipoLlanta objDatosTipoLlanta = new clsDatosTipoLlanta();

        private int idTipoLlanta;
        private int idBodega;
        private int idCategoria;
        private string nombreTipoLlanta;
        private int stock;
        private string marca;
        private int rin;
        private decimal precioUnitario;
        private string color;
        private int idProveedor;
        private int idUsuario;
        private decimal precioCompra;
        private string userId;

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

        public int IdCategoria
        {
            get
            {
                return idCategoria;
            }

            set
            {
                idCategoria = value;
            }
        }

        public string NombreTipoLlanta
        {
            get
            {
                return nombreTipoLlanta;
            }

            set
            {
                nombreTipoLlanta = value;
            }
        }

        public int Stock
        {
            get
            {
                return stock;
            }

            set
            {
                stock = value;
            }
        }

        public string Marca
        {
            get
            {
                return marca;
            }

            set
            {
                marca = value;
            }
        }

        public int Rin
        {
            get
            {
                return rin;
            }

            set
            {
                rin = value;
            }
        }

        public decimal PrecioUnitario
        {
            get
            {
                return precioUnitario;
            }

            set
            {
                precioUnitario = value;
            }
        }

        public string Color
        {
            get
            {
                return color;
            }

            set
            {
                color = value;
            }
        }

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

        public decimal PrecioCompra
        {
            get
            {
                return precioCompra;
            }

            set
            {
                precioCompra = value;
            }
        }

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

        public int ingresarTipoLlanta(int idBodega, int idCategoria, string nombreTipoLlanta, int stock, string marca, int rin, decimal precioUnitario, string color, int idProveedor, string userId, decimal precioCompra)
        {
            IdBodega = idBodega;
            IdCategoria = idCategoria;
            NombreTipoLlanta = nombreTipoLlanta;
            Stock = stock;
            Marca = marca;
            Rin = rin;
            PrecioUnitario = precioUnitario;
            Color = color;
            IdProveedor = idProveedor;
            UserId = userId;
            PrecioCompra = precioCompra;

            return objDatosTipoLlanta.ingresarDatosTipoLlanta(IdBodega, IdCategoria, NombreTipoLlanta, Stock, Marca, Rin, PrecioUnitario, Color, IdProveedor, UserId, PrecioCompra);
        }

        public int actualizarTipoLlanta(int idTipoLlanta, int idBodega, int idCategoria, string nombreTipoLlanta, int stock, string marca, int rin, decimal precioUnitario, string color, int idProveedor, decimal precioCompra)
        {
            IdTipoLlanta = idTipoLlanta;
            IdBodega = idBodega;
            IdCategoria = idCategoria;
            NombreTipoLlanta = nombreTipoLlanta;
            Stock = stock;
            Marca = marca;
            Rin = rin;
            PrecioUnitario = precioUnitario;
            Color = color;
            IdProveedor = idProveedor;
            PrecioCompra = precioCompra;

            return objDatosTipoLlanta.actualizarDatosTipoLlanta(IdTipoLlanta, IdBodega, IdCategoria, NombreTipoLlanta, Stock, Marca, Rin, PrecioUnitario, Color, IdProveedor, PrecioCompra);
        }

        public int eliminarTipoLlanta(int idTipoLlanta)
        {
            IdTipoLlanta = idTipoLlanta;

            return objDatosTipoLlanta.eliminarDatosTipoLlanta(IdTipoLlanta);
        }

        public DataSet consultarNombreTiposLlanta()
        {
            return objDatosTipoLlanta.consultarDatosNombreTiposLlanta();
        }

        public DataSet consultarTiposLlanta()
        {
            return objDatosTipoLlanta.consultarDatosTiposLlanta();
        }

        public DataSet consultarTipoLlanta(int idTipoLlanta)
        {
            IdTipoLlanta = idTipoLlanta;

            return objDatosTipoLlanta.consultarDatosTipoLlanta(IdTipoLlanta);
        }

        public string consultarPrecioUnitario(int idTipoLlanta)
        {
            IdTipoLlanta = idTipoLlanta;

            DataSet dataSetTipoLlanta = objDatosTipoLlanta.consultarDatosTipoLlanta(IdTipoLlanta);
            DataTable TipoLlanta = dataSetTipoLlanta.Tables["TipoLlanta"];
            string precioUnitario = "";

            foreach (DataRow rowTipoLlanta in TipoLlanta.Rows)
            {
                if (int.Parse(rowTipoLlanta["Id_TipoLlanta"].ToString()) == IdTipoLlanta)
                {
                    precioUnitario = rowTipoLlanta["PrecioUnitario"].ToString();

                    break;
                }
            }

            return precioUnitario;
        }

        public DataSet consultarStockTipoLlanta(int idTipoLlanta)
        {
            IdTipoLlanta = idTipoLlanta;

            return objDatosTipoLlanta.consultarDatosStockTipoLlanta(IdTipoLlanta);
        }

        public DataSet consultarIngresosGastos()
        {
            return objDatosTipoLlanta.consultarDatosIngresosGastos();
        }
    }
}
