<%@ Page Title="Add New Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewProduct.aspx.cs" Inherits="ST10141464POE.NewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="container">
        <div class="form-wrapper">
            <h2>Add a New Product</h2>
            <asp:Label ID="lblWarning" Text="You are not authorized to view this page. Go away." runat="server" CssClass="error-message" Visible="false" />
            <div id="divadd" runat="server" visible="false">
                <div class="form-group">
                    <label for="txtName">Product Name:</label>
                    <asp:TextBox runat="server" ID="txtName" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="txtDescription">Product Description:</label>
                    <asp:TextBox runat="server" ID="txtDescription" TextMode="MultiLine" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="txtPrice">Product Price:</label>
                    <asp:TextBox runat="server" ID="txtPrice" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <label for="txtURL">Product Image URL:</label>
                    <asp:TextBox runat="server" ID="txtURL" CssClass="form-control" />
                </div>
                <div class="form-group">
                    <asp:Button ID="btnAddProduct" runat="server" Text="Add New Product" OnClick="btnAddProduct_Click" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>