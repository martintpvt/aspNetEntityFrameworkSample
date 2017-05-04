using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CapaPresentacion
{
    public class clsProducto
    {
        private int id;
        private string nombreTipoLlanta;
        private string marca;
        private int rin;
        private string color;
        private int cantidad;

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

        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
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
    }
}