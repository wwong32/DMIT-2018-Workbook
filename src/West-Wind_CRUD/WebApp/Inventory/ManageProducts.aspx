<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageProducts.aspx.cs" Inherits="WebApp.Inventory.ManageProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md12">
            <h1 class="page-head">Manage Products</h1>
        </div>
        <div class="col-md-12">
            <asp:GridView ID="ProductInventoryGridView" runat="server"
                DataSourceID="ProductInventoryDataSource" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID"></asp:BoundField>
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName"></asp:BoundField>
                    <asp:BoundField DataField="SupplierID" HeaderText="SupplierID" SortExpression="SupplierID"></asp:BoundField>
                    <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID"></asp:BoundField>
                    <asp:BoundField DataField="QuantityPerUnit" HeaderText="QuantityPerUnit" SortExpression="QuantityPerUnit"></asp:BoundField>
                    <asp:BoundField DataField="MinimumOrderQuantity" HeaderText="MinimumOrderQuantity" SortExpression="MinimumOrderQuantity"></asp:BoundField>
                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice"></asp:BoundField>
                    <asp:BoundField DataField="UnitsOnOrder" HeaderText="UnitsOnOrder" SortExpression="UnitsOnOrder"></asp:BoundField>
                    <asp:CheckBoxField DataField="Discontinued" HeaderText="Discontinued" SortExpression="Discontinued"></asp:CheckBoxField>
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="ProductInventoryDataSource"
                runat="server"
                OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllProducts" TypeName="WestWindSystem.BLL.InventoryController"></asp:ObjectDataSource>        </div>
    </div>
</asp:Content>
