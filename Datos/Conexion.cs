using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public class Conexion
    {
        //Hola
        static string cadena = "Server=localhost;Database=SistemaVentas; Integrated Security=true";
        SqlConnection conexion = new SqlConnection(cadena);
    }
}
