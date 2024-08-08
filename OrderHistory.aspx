<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderHistory.aspx.cs" Inherits="ST10141464POE.OrderHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
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

    footer {
        background-color: #343a40;
        color: white;
        padding: 2rem 0;
        text-align: center;
    }

    footer p {
        margin: 0;
    }

    @media (max-width: 767px) {
        footer .row > div {
            margin-bottom: 15px;
        }
    }
    </style>

    <div class="container12">
        <div class="order-history">
            <h2>Order History</h2>
            <asp:DataGrid ID="dgOrder" runat="server" CssClass="data-grid" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundColumn DataField="orderID" HeaderText="Order ID" />
                    <asp:BoundColumn DataField="userID" HeaderText="User ID" />
                    <asp:BoundColumn DataField="status" HeaderText="Order Status" />
                    <asp:BoundColumn DataField="orderTime" HeaderText="Order Date" />
                </Columns>
            </asp:DataGrid>
            <div class="form-group">
                <asp:Label runat="server" ID="lblOrderSelect" Text="Select an Order to Edit:" CssClass="label" />
                <asp:DropDownList ID="ddlOrderSelection" runat="server" CssClass="dropdown" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" ID="lblOrderUpdate" Text="Select what you would like to mark the order as:" CssClass="label" />
                <asp:DropDownList ID="ddlOrderUpdate" runat="server" CssClass="dropdown">
                    <asp:ListItem Text="Still in progress"></asp:ListItem>
                    <asp:ListItem Text="It is on delivery"></asp:ListItem>
                    <asp:ListItem Text="It is delivered"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <asp:Button runat="server" ID="btnUpdateOrder" Text="Update Order" OnClick="btnUpdateOrder_Click" CssClass="button" />
            <br />
            <br />
            <br />
            <br />
            <h3>View the Customer Infomation:</h3>
            
            <div class="form-group">
                <asp:Label runat="server" ID="lblOrderID" Text="Enter Order ID of the Customer:" CssClass="label" />
                <asp:TextBox ID="txtOrderID" runat="server" CssClass="textbox" placeholder="Order ID" />
            </div>
            <asp:Button runat="server" ID="btnViewOrder" Text="View Order" OnClick="btnViewOrder_Click" CssClass="button" />

            <div class="order-details">
                <asp:Label ID="orderDetailsLabel" runat="server" CssClass="order-details-label"></asp:Label>
            </div>
        </div>
    </div>
    <footer class="container-fluid bg-dark text-white py-3">
    <div class="container">
        <div class="row">
            <div class="col-md-4 text-center text-md-left mb-3 mb-md-0">
                <p>&copy; 2024 Your Company Name. All rights reserved.</p>
            </div>
            <div class="col-md-4 text-center mb-3 mb-md-0">
                <div class="footer-social-icons">
                    <a href="https://twitter.com/your_twitter_handle" target="_blank"><img src="images/twitter_icon.jpg" alt="Twitter"></a>
                    <a href="https://www.instagram.com/your_instagram_handle" target="_blank"><img src="images/instagram_icon.jpg" alt="Instagram"></a>
                    <a href="https://www.facebook.com/your_facebook_page" target="_blank"><img src="images/facebook_icon.jpg" alt="Facebook"></a>
                </div>
            </div>
            <div class="col-md-4 text-center text-md-right">
                <p>Contact us: info@yourcompany.com</p>
            </div>
        </div>
    </div>
</footer>
</asp:Content>