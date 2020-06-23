using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;

namespace UnregalooriginalTest
{
    public class Pedido
    {
        public string persona { get; set; }

        public List<Detalle> detalle{ get; set; }

        public Pedido()
        {
            detalle = new List<Detalle>();
        }
        public decimal TotalPedido { get; set; }
    }
}