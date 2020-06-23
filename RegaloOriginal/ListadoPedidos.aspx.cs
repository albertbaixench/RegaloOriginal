using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace UnregalooriginalTest
{
    public partial class _ListadoPedidos : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Pedido> p;
            if (!IsPostBack && Session["ListaPedidos"] != null)
            {
                p = ((List<Pedido>)(Session["ListaPedidos"]));
                rptPedidos.DataSource = p;
                rptPedidos.DataBind();
                lblPersonaQueMasGasto.Text = DeterminarPersonaQueMasGasto(p);
                lblMontoTotalPedidos.Text = CalculaMontoTotalPedidos(p).ToString();
            }
        }

        protected void rptPedidos_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Repeater childRepeater = (Repeater)e.Item.FindControl("rptDetalle");
                childRepeater.DataSource = ((Pedido)(e.Item.DataItem)).detalle ;
                childRepeater.DataBind();
            }
        }
        private string DeterminarPersonaQueMasGasto(List<Pedido> listP)
        {
            Pedido pMax = new Pedido();
            foreach (Pedido p in listP)
            {
                if (p.TotalPedido > pMax.TotalPedido )
                    pMax = p;
            }
            return pMax.persona;
        }

        private decimal CalculaMontoTotalPedidos(List<Pedido> listP)
        {
            decimal Total = 0;
            foreach (Pedido p in listP)
            {
                Total += p.TotalPedido; ;
            }
            return Total;
        }


        //private List<Pedido> ReagrupaPedidosPorNombre(List<Pedido> listP)
        //{
        //    //List<Pedido> peidosAgrupadosPorNombre = new List<Pedido>();
        //    //foreach (Pedido p in listP)
        //    //{
        //    //    if (!peidosAgrupadosPorNombre.Sum(pt => pt.persona == p.persona))
        //    //        { }
        //    //}
        //}
    }
}