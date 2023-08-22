using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Drawing;

namespace App_Comercio
{
    public class cls_usuarios
    {
        private string str_mensaje;
        SqlDataReader Lectura;
        private string str_nombre;private string str_contacto; private string str_correo; private string str_direccion;
        public void fnt_agregar(string Pkcodigo, string Nombre, string contacto, string correo, string direccion)
        {
            if (Pkcodigo == "" || Nombre == "" || contacto == "" || correo == "" || direccion == "")
            {
                str_mensaje = "No puede mandar campos vacíos";
            }
            else
            {
                try
                {
                    clsconexion objConecta = new clsconexion();
                    SqlCommand con = new SqlCommand("SP_agregarusuarios", objConecta.connection);
                    con.CommandType = CommandType.StoredProcedure;
                    con.Parameters.AddWithValue("@Pkcodigo", Pkcodigo);
                    con.Parameters.AddWithValue("@Nombre", Nombre);
                    con.Parameters.AddWithValue("@contacto", contacto);
                    con.Parameters.AddWithValue("@correo", correo);
                    con.Parameters.AddWithValue("@direccion", direccion);
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
            try
            {
                clsconexion objConecta = new clsconexion();
                SqlCommand con = new SqlCommand("SP_Consultar", objConecta.connection);
                con.CommandType = CommandType.StoredProcedure;
                con.Parameters.AddWithValue("@codigo", codigo);
                objConecta.connection.Open();
                Lectura = con.ExecuteReader();
                if (Lectura.Read() == true)
                {
                    str_nombre = Convert.ToString(Lectura[0]);
                    str_contacto = Convert.ToString(Lectura[1]);
                    str_correo = Convert.ToString(Lectura[2]);
                    str_direccion = Convert.ToString(Lectura[3]);
                    str_mensaje = "";
                }
            }
            catch (Exception)
            {
                str_mensaje = "No se encontraron registros";
            }
        }
        public string getMensaje() { return this.str_mensaje; }
        public string getNombre() { return this.str_nombre; }
        public string getContacto() { return this.str_contacto; }
        public string getCorreo() { return this.str_correo; }
        public string getDireccion() { return this.str_direccion; }

    }
}