using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace App_Comercio
{
    public partial class frm_productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_registrar1_Click(object sender, EventArgs e)
        {
            cls_productos objproductos = new cls_productos();
            objproductos.fnt_agregar(txt_codigo.Text, txt_nombre.Text, txt_existencia.Text, txt_valorcompra.Text, txt_porcganancia.Text,
                categoria.SelectedValue, txt_especificaciones.Text, estado.SelectedValue,lbl_user.Text);
            lbl_mensaje.Text = objproductos.getMensaje();
            
        }

        protected void btn_consultar1_Click(object sender, EventArgs e)
        {
           
                cls_productos objconsultar = new cls_productos();
                objconsultar.fnt_consultar(txt_codigo.Text);
            lbl_mensaje.Text = objconsultar.getMensaje();
            txt_nombre.Text = objconsultar.getNombre();
            txt_existencia.Text = objconsultar.getExistencia();
            txt_valorcompra.Text = objconsultar.getValorcompra();
            txt_porcganancia.Text = objconsultar.getPorcentaje();
            categoria.SelectedIndex = Convert.ToInt16(objconsultar.getCategoria());
            txt_especificaciones.Text = objconsultar.getEspecificaciones();
            estado.SelectedIndex = Convert.ToInt16(objconsultar.getEstado());
            lbl_user.Text = objconsultar.getUsuario();
           

        }

        protected void btn_limpiar1_Click(object sender, EventArgs e)
        {
         
            txt_codigo.Text = "";
            txt_nombre.Text = "";
            txt_existencia.Text = "";
            txt_valorcompra.Text = "";
            txt_porcganancia.Text = "";
            categoria.SelectedIndex = 0;
            txt_especificaciones.Text = "";
            estado.SelectedIndex = 0;
            txt_porcganancia.Text = "";
            this.txt_codigo.Focus();
        }
    }
}