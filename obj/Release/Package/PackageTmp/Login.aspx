<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ST10141464POE.Login" %>
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
    <div class="login-container">
        <h2>Welcome to KhumaloCraft. Please login Below</h2>
        <asp:Label runat="server" Text="Email" />
        <asp:TextBox runat="server" Text="" ID="edtLoginEmail" CssClass="login-input" />
        <br /><br />
        <asp:Label runat="server" Text="Password" />
        <asp:TextBox runat="server" Text="" ID="edtLoginPassword" CssClass="login-input" />
        <br /><br />
        <asp:Button runat="server" Text="Login!" ID="btnLogin" CssClass="login-page-button login-button" OnClick="btnLogin_Click" />
        <br /><br />
        <asp:Button runat="server" Text="Sign Up" ID="btnSignUp" CssClass="signup-page-button signup-button" OnClick="btnSignUp_Click" />
    </div>
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
