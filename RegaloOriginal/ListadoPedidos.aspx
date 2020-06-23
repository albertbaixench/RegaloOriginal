<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListadoPedidos.aspx.cs" Inherits="UnregalooriginalTest._ListadoPedidos" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Detalle Pedidos</h1>
    </div>

    <div class="row">
        <asp:Repeater ID ="rptPedidos" runat="server" OnItemDataBound="rptPedidos_ItemDataBound">
            <ItemTemplate>
                <div class="row col-md-12">
                    <label>Nombre:</label>
                    <asp:label id="lblnombre" Text='<%# Eval("persona") %>' runat="server" ></asp:label>
                    <asp:Repeater id="rptDetalle" runat="server">        
                        <ItemTemplate>
                            <div class="row col-md-12">
                                <div class="row col-md-6">
                                    Cod Prod
                                 </div>
                                <div class="row col-md-6">
                                    <asp:label id="codProd" Text='<%# Eval("codProd") %>' runat="server"></asp:label>
                                </div>
                                <div class="row col-md-6">
                                    Nom Producto
                                </div>
                                <div class="row col-md-6">
                                    <asp:label id="nomProducto" Text='<%# Eval("nomProducto") %>' runat="server"></asp:label>
                                </div>
                                <div class="row col-md-6">
                                    Cantidad
                                </div>
                                <div class="row col-md-6">
                                    <asp:label id="cantidad" Text='<%# Eval("cantidad") %>' runat="server"></asp:label>
                                </div>
                                <div class="row col-md-6">
                                    Precio
                                 </div>
                                <div class="row col-md-6">
                                    <asp:label id="precio" Text='<%# Eval("precio") %>' runat="server"></asp:label>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                    <div class="row col-md-12">
                        <div class="row col-md-6">
                            <label>Total Pedido</label>
                        </div>
                         <div class="row col-md-6">
                            <asp:label id="lblTotalPedido" Text='<%# Eval("TotalPedido") %>' runat="server" ></asp:label>
                        </div>
                    </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="row col-md-12">
            <label>Persona que más gastó:</label><asp:Label ID="lblPersonaQueMasGasto" runat="server"></asp:Label>
        </div>
        <div class="row col-md-12">
            <label>Monto total pedidos:</label><asp:Label ID="lblMontoTotalPedidos" runat="server"></asp:Label>
         </div>
    </div>

</asp:Content>
