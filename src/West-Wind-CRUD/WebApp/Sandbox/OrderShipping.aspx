<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderShipping.aspx.cs" Inherits="WebApp.Sandbox.OrderShipping" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h1 class="page-header">Order Processing</h1>
            <asp:Label ID="SupplierName" runat="server" />
            <asp:Label ID="ContactName" runat="server" />
            <uc1:MessageUserControl renat ="server" ID="MessageUserControl" />

            <asp:ListView
        </div>
    </div>
</asp:Content>
