using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CapaDatos;
using System.Data;

namespace CapaNegocio
{
    public class clsCategoria
    {
        clsDatosCategoria objDatosCategoria = new clsDatosCategoria();

        private int idCategoria;
        private string nombreCategoria;
        private string descripcionCategoria;

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

        public string NombreCategoria
        {
            get
            {
                return nombreCategoria;
            }

            set
            {
                nombreCategoria = value;
            }
        }

        public string DescripcionCategoria
        {
            get
            {
                return descripcionCategoria;
            }

            set
            {
                descripcionCategoria = value;
            }
        }

        public bool ingresarCategoria(string nombreCategoria, string descripcionCategoria)
        {
            NombreCategoria = nombreCategoria;
            DescripcionCategoria = descripcionCategoria;

            if (objDatosCategoria.ingresarDatosCategoria(NombreCategoria, DescripcionCategoria))
                return true;
            else
                return false;
        }

        public bool actualizarCategoria(int idCategoria, string nombreCategoria, string descripcionCategoria)
        {
            IdCategoria = idCategoria;
            NombreCategoria = nombreCategoria;
            DescripcionCategoria = descripcionCategoria;

            if (objDatosCategoria.actualizarDatosCategoria(IdCategoria, NombreCategoria, DescripcionCategoria))
                return true;
            else
                return false;
        }

        public bool eliminarCategoria(int idCategoria)
        {
            IdCategoria = idCategoria;

            if (objDatosCategoria.eliminarDatosCategoria(IdCategoria))
                return true;
            else
                return false;
        }

        public DataSet consultarNombreCategorias()
        {
            return objDatosCategoria.consultarDatosNombreCategorias();
        }

        public DataSet consultarCategorias()
        {
            return objDatosCategoria.consultarDatosCategorias();
        }

        public DataSet consultarCategoria(int idCategoria)
        {
            IdCategoria = idCategoria;

            return objDatosCategoria.consultarDatosCategoria(IdCategoria);
        }
    }
}
