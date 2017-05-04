﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaDatos
{
    public class clsConexion
    {
        public static SqlConnection conexion = new SqlConnection(@"Data Source=.;Initial Catalog=dbProyectoFinal;Integrated Security=True");

        public static void abrirConexion()
        {
            if (conexion.State == ConnectionState.Closed)
                conexion.Open();
        }


        public static void cerrarConexion()
        {
            if (conexion.State == ConnectionState.Open)
                conexion.Close();
        }
    }
}
