<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="UnregalooriginalTest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Inserta Pedidos</h1>
    </div>
    <div class="row col-md-12">
        <label class="col-md-6">Ingrese su nombre:</label>
        <asp:TextBox CssClass="col-md-6" runat="server" ID="txtNombre"></asp:TextBox>
    </div>
    <br />
    <div class="row col-md-12">
        Detalle Pedido:
    </div>
    <div class="row col-md-12">
        <label class="col-md-6">Código de producto</label>
        <asp:TextBox CssClass="col-md-6" runat="server" ID="txtcodProd"></asp:TextBox>
    </div>
    <div class="row col-md-12">
         <label class="col-md-6">Nombre de producto</label>
        <asp:TextBox CssClass="col-md-6" runat="server" ID="txtnomProducto"></asp:TextBox>
    </div>
    <div class="row col-md-12">
         <label class="col-md-6">Cantidad</label>
        <asp:TextBox CssClass="col-md-6" runat="server" ID="txtcantidad"></asp:TextBox>
    </div>
    <div class="row col-md-12">
         <label class="col-md-6">Precio</label>
        <asp:TextBox  CssClass="col-md-6" runat="server" ID="txtprecio"></asp:TextBox>
    </div>
    <div class="row col-md-12">
        <asp:Button id="btnAnnadirDetalle" CssClass="col-md-6" runat="server" Text="Añadir Detalle" OnClick="btnAnnadirDetalle_Click"  />
        <asp:Button id="btnFinalizarPedido" CssClass="col-md-6" runat="server" Enabled="false" Text="Finalizar Pedido" OnClick="btnFinalizarPedido_Click" />
    </div>
    <br />
    <div class="row col-md-12">
        <asp:HyperLink runat="server" NavigateUrl="~/ListadoPedidos.aspx">Ver Listado Pedidos</asp:HyperLink>
    </div>

</asp:Content>
