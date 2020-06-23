using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UnregalooriginalTest
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void btnAnnadirDetalle_Click(object sender, EventArgs e)
        {
            Pedido p;
            if (Session["pedididoEnCurso"] == null)
            {
                txtNombre.Enabled = false;
                //pedido nuevo
                p = new Pedido();
                p.persona = txtNombre.Text;
            }
            else
            {
                //continuación pedido
                p = (Pedido)(Session["pedididoEnCurso"]);
            }
            Detalle d = new Detalle();
            d.cantidad = Convert.ToInt32(txtcantidad.Text);
            d.codProd = Convert.ToInt32(txtcodProd.Text);
            d.nomProducto = txtnomProducto.Text;
            d.precio = Convert.ToDecimal(txtprecio.Text);
            p.detalle.Add(d);
            p.TotalPedido += d.cantidad * d.precio;
            Session["pedididoEnCurso"] = p;
            LimpiarCampos();
            btnFinalizarPedido.Enabled = true;
        }

        protected void btnFinalizarPedido_Click(object sender, EventArgs e)
        {
            if (Session["ListaPedidos"] == null)
            {
                List<Pedido> p = new List<Pedido>();
                p.Add((Pedido)(Session["pedididoEnCurso"]));
                Session["ListaPedidos"] = p;
            }
            else
                ((List<Pedido>)(Session["ListaPedidos"])).Add((Pedido)(Session["pedididoEnCurso"]));
            Session["pedididoEnCurso"] = null;
            txtNombre.Enabled = true;
            txtNombre.Text = string.Empty;
            LimpiarCampos();
            btnFinalizarPedido.Enabled = false;
        }
        private void LimpiarCampos()
        {
            txtcantidad.Text = string.Empty; 
            txtcodProd.Text =  string.Empty;
            txtnomProducto.Text = string.Empty;
            txtprecio.Text = string.Empty;
        }
    }
}