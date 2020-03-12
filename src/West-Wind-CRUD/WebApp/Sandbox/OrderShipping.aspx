<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderShipping.aspx.cs" Inherits="WebApp.Sandbox.OrderShipping" %>

<%@ Register Src="~/UserControls/MessageUserControl.ascx" TagPrefix="uc1" TagName="MessageUserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h1 class="page-header">Order Processing</h1>
            <asp:Label ID="SupplierName" runat="server"/>
            <asp:Label ID="ContactName" runat="server" />
            <uc1:MessageUserControl runat="server" ID="MessageUserControl" />

            <asp:ListView ID="ShipmentsListView" runat="server"
                DataSourceID="OutstandingOrdersDataSource"
                ItemType="WestWindSystem.DataModels.OrderProcessing.OutstandingOrder">
                <LayoutTemplate>
                    <table runat="server" id="itemPlaceholderContainer"
                         class="table table-hover">
                        <tr runat="server">
                            <th runat="server">Ship To</th>
                            <th runat="server">Ordered On</th>
                            <th runat="server">Required By</th>
                            <th runat="server"><!-- Select/Expand --></th>
                        </tr>
                        <tr runat="server" id="itemPlaceholder"></tr>
                    </table>
                </LayoutTemplate>
                <EmptyDataTemplate>
                    <table>
                        <tr>
                            <td>No order to ship</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            (<%# Item.OrderID %>)
                            <%# Item.ShipToName %>
                        </td>
                        <td>
                            <%# Item.OrderedDate.ToString("MMM dd, yyyy") %>
                        </td>
                        <td>
                            <%# Item.RequiredDate.ToString("MMM dd, yyyy") %>
                            - in <%# Item.DaysToDelivery %> days
                        </td>
                        <td>
                            <asp:LinkButton ID="EditOrder" runat="server"
                                CommandName="Edit" CssClass="btn btn-default">
                                Order Details
                            </asp:LinkButton>
                        </td>
                    </tr>
                </ItemTemplate>
                <EditItemTemplate>
                    <tr>
                        <td>
                            (<asp:Label ID="OrderIdLabel" runat="server"
                                Text="<%#Item.OrderID %>" />)
                            <%# Item.ShipToName %>
                        </td>
                        <td>
                             <%# Item.OrderedDate.ToString("MMM dd, yyyy") %>
                        </td>
                        <td>
                            <%# Item.RequiredDate.ToString("MMM dd, yyyy") %>
                            - in <%# Item.DaysToDelivery %> days
                        </td>
                        <td>
                            <asp:LinkButton ID="CancelEdit" runat="server"
                                CommandName="Cancel" CssClass="btn btn-default">
                                Close
                            </asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Label ID="OrderComments" runat="server" Text="<%# Item.Comments %>" />
                            <asp:DropDownList ID="ShipperDropDown" runat="server">

                            </asp:DropDownList>
                           <%-- Typically, we would put out our ObjectDataSource outside of the ListView/GridView. But, in this case we are only needing 
                            the data for the EditItemTemplate.Since only one row can  be in "edit mode" at a time, it's ok to put ObjectDataSource here.
                            The same principle can be applied to the SelectedItemTemplate.
                            <asp:ObjectDataSource ID="ShipperDataSource" runat="server" />--%>
                                <asp:GridView ID="ProductsGridView" runat="server"> 
                            
                            </asp:GridView>
                            <asp:Label ID="ShippingAddress" runat="server"
                                Text="<%# Item.FullShippingAdress %>" />
                            <asp:TextBox ID="TrackingCode" runat="server" />
                            <asp:TextBox ID="FreightCharge" runat="server" />
                            <asp:LinkButton ID="ShipOrder" runat="server"
                                CommandNmae="Ship" CssClass="btn btn-primary">
                                Ship Order
                            </asp:LinkButton>
                        </td>
                    </tr>
                </EditItemTemplate> 
            </asp:ListView>

            <asp:HiddenField ID="TempSupplier" runat="server" Value="3" />
            <asp:ObjectDataSource ID="OutstandingOrdersDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="LoadOrders" TypeName="WestWindSystem.BLL.OrderProcessingController">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TempSupplier" PropertyName="Value" DefaultValue="0" Name="supplierID" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
