<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="ST10141464POE.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #fff; 
            color: #000;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            margin-top: 20px;
        }

        .order-message {
            color: #28a745; 
            font-size: 18px;
            font-weight: bold;
            margin-top: 20px;
            text-align: center;
        }

        .order-message span {
            color: #ff6347; 
        }

        .cart-table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
        }

        .cart-table th, .cart-table td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        .btn-remove, .btn-submit, .btn-clear {
            display: block;
            width: 100%;
            margin: 10px 0;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
            text-align: center;
            font-size: 16px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .btn-remove:hover, .btn-submit:hover, .btn-clear:hover {
            background-color: #0056b3;
        }

        footer {
            background-color: #343a40;
            color: white;
            padding: 2rem 0;
            text-align: center;
        }

        footer p {
            margin: 0;
        }

        .footer-social-icons img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin: 0 10px;
            transition: transform 0.3s;
        }

        .footer-social-icons img:hover {
            transform: scale(1.1);
        }

        @media (max-width: 767px) {
            .cart-table th, .cart-table td {
                display: block;
                width: 100%;
            }

            .cart-table th {
                background-color: #f8f8f8;
                text-align: left;
            }

            .cart-table td {
                text-align: left;
            }

            footer .row > div {
                margin-bottom: 15px;
            }

            .btn-remove, .btn-submit, .btn-clear {
                font-size: 14px;
                padding: 8px;
            }
        }
    </style>

    <h2>Cart</h2>
    <asp:Label ID="lblEmpty" runat="server" Text="Your Shopping cart is currently empty. Please add items to your cart from the menu page." Visible="false" />
    <br /><br />
    <asp:GridView ID="GVCart" runat="server" AutoGenerateColumns="false" CssClass="cart-table" Visible="false">
        <Columns>
            <asp:BoundField DataField="name" HeaderText="Product Name" />
            <asp:BoundField DataField="description" HeaderText="Description" />
            <asp:BoundField DataField="price" HeaderText="Price" DataFormatString="{0:C}" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="btnRemove" runat="server" Text="Remove" CommandArgument='<%# Eval("productID") %>' OnClick="btnRemove_Click" CssClass="btn-remove" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br /><br />
    <asp:Button ID="btnSubmitOrder" runat="server" OnClick="btnSubmitOrder_Click" Text="Complete Order" Visible="false" CssClass="btn-submit" />
    <asp:Button ID="btnClearOrder" runat="server" OnClick="btnClearOrder_Click" Text="Clear Order" Visible="false" CssClass="btn-clear" />
    <asp:Label ID="lblMessage" runat="server" Text="" CssClass="order-message" Visible="false" />

    <br />
    <footer class="container-fluid bg-dark text-white py-3">
<div class="container">
    <div class="row">
        <div class="col-md-4 text-center text-md-left mb-3 mb-md-0">
            <p>&copy; 2024 khumaloCraft Emporium. All rights reserved.</p>
        </div>
        <div class="col-md-4 text-center mb-3 mb-md-0">
            <div class="footer-social-icons">
                <a href="https://twitter.com/your_twitter_handle" target="_blank"><img src="images/twitter_icon.jpg" alt="Twitter"></a>
                <a href="https://www.instagram.com/your_instagram_handle" target="_blank"><img src="images/instagram_icon.jpg" alt="Instagram"></a>
                <a href="https://www.facebook.com/your_facebook_page" target="_blank"><img src="images/facebook_icon.jpg" alt="Facebook"></a>
            </div>
        </div>
        <div class="col-md-4 text-center text-md-right">
            <p>Contact us: khumaloCraftEmporium@gmail.com</p>
        </div>
            </div>
        </div>
    </footer>
</asp:Content>