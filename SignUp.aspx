<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="ST10141464POE.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
   .signup-container, .login-container {
    max-width: 500px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background-color: #f9f9f9;
    text-align: center;
}

.signup-container h2, .login-container h2 {
    text-align: center;
    margin-bottom: 20px;
    font-family: 'Arial', sans-serif;
}

.signup-label, .login-label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    text-align: left;
}

.signup-input, .login-input {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
}

.signup-page-button, .new-login-button, .login-button {
    width: 48%;
    padding: 15px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
    text-align: center;
    text-decoration: none;
    color: white;
    margin: 10px 1%;
    display: inline-block;
}

.signup-page-button {
    background-color: #28a745; 
}

.signup-page-button:hover {
    background-color: #218838; 
    transform: scale(1.05);
}

.new-login-button, .login-button {
    background-color: #007bff; 
}

.new-login-button:hover, .login-button:hover {
    background-color: #0056b3; 
    transform: scale(1.05);
}

.signup-page-button:active,
.new-login-button:active, .login-button:active {
    transform: scale(1);
}

.signup-page-button:focus,
.new-login-button:focus, .login-button:focus {
    outline: none;
    box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); 
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
    <div class="signup-container">
        <h2>Welcome to KhumaloCraft. Please Sign Up Below</h2>
        <asp:Label runat="server" Text="Name" CssClass="signup-label" />
        <asp:TextBox runat="server" Text="" ID="edtName" CssClass="signup-input" />
        <br /><br />
        <asp:Label runat="server" Text="Email" CssClass="signup-label" />
        <asp:TextBox runat="server" Text="" ID="edtSignUpEmail" CssClass="signup-input" />
        <br /><br />
        <asp:Label runat="server" Text="Password" CssClass="signup-label" />
        <asp:TextBox runat="server" Text="" ID="edtSignUpPassword" CssClass="signup-input" TextMode="Password" />
        <br /><br />
        <asp:Label runat="server" Text="Confirm Password" CssClass="signup-label" />
        <asp:TextBox runat="server" Text="" ID="edtSignUpConfirm" CssClass="signup-input" TextMode="Password" />
        <br /><br />
        <asp:Button runat="server" Text="Sign Up!" ID="btnSignUp" CssClass="signup-page-button signup-button" OnClick="btnSignUp_Click" />
        <asp:Button runat="server" Text="Login" ID="btnLogin" CssClass="new-login-button" PostBackUrl="~/Login.aspx" />
    </div>
    <br />
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