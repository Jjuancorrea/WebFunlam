using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace App_Comercio
{
    public class cls_productos
    {
        private string str_mensaje;
        SqlDataReader Lectura;
        private string str_nombre; private string str_existencia; private string str_valorcompra; private string str_porcentaje;private string str_categoria;
        private string str_especificaciones;private string str_estado; private string str_usuario;
        public void fnt_agregar(string Pkcodigo, string Nombre, string existencia, string valorcompra, string porcentaje, string categoria, 
            string especificaciones, string estado, string usuario)
        {
            if (Pkcodigo==""|| Nombre==""|| existencia==""|| valorcompra == "" || porcentaje == "" || especificaciones == "" || usuario == "")
            {
                str_mensaje = "No puede mandar campos vacíos";
            }
            else
            {
                try
                {
                    clsconexion objConecta = new clsconexion();
                    SqlCommand con = new SqlCommand("SP_agregarproductos", objConecta.connection);
                    con.CommandType = CommandType.StoredProcedure;
                    con.Parameters.AddWithValue("@Pkcodigo", Pkcodigo);
                    con.Parameters.AddWithValue("@Nombre", Nombre);
                    con.Parameters.AddWithValue("@existencia", existencia);
                    con.Parameters.AddWithValue("@valorcompra", valorcompra);
                    con.Parameters.AddWithValue("@porcentaje", porcentaje);
                    con.Parameters.AddWithValue("@categoria", categoria);
                    con.Parameters.AddWithValue("@especificaciones", especificaciones);
                    con.Parameters.AddWithValue("@estado", estado);
                    con.Parameters.AddWithValue("@usuario", usuario);

                    objConecta.connection.Open();
                    con.ExecuteNonQuery();
                    objConecta.connection.Close();
                    str_mensaje = "Registro exitoso";
                }
                catch (Exception) { str_mensaje = "Este registro ya existe"; }
            }
        }
        public void fnt_consultar(string codigo)
        {
            
                clsconexion objConecta = new clsconexion();
                SqlCommand con = new SqlCommand("SP_consultarproductos", objConecta.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@codigo", codigo);
                objConecta.connection.Open();
                Lectura = con.ExecuteReader();
                if (Lectura.Read() == true)
                {
                    str_nombre = Convert.ToString(Lectura[1]);
                    str_existencia = Convert.ToString(Lectura[2]);
                    str_valorcompra = Convert.ToString(Lectura[3]);
                    str_porcentaje = Convert.ToString(Lectura[4]);
                    str_categoria = Convert.ToString(Lectura[5]);
                    str_especificaciones = Convert.ToString(Lectura[6]);
                    str_estado = Convert.ToString(Lectura[8]);
                    str_usuario = Convert.ToString(Lectura[9]);
                    str_mensaje = "";
                }
           
        }
        public string getMensaje() { return this.str_mensaje; }
        public string getNombre() { return this.str_nombre; }
        public string getExistencia() { return this.str_existencia; }
        public string getValorcompra() { return this.str_valorcompra; }
        public string getPorcentaje() { return this.str_porcentaje; }
        public string getCategoria() { return this.str_categoria; }
        public string getEspecificaciones() { return this.str_especificaciones; }
        public string getEstado() { return this.str_estado; }
        public string getUsuario() { return this.str_usuario; }

    }
}