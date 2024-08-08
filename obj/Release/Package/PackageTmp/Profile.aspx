<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ST10141464POE.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
        .profile-container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .profile-container img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-bottom: 20px;
        }
        .profile-container h2 {
            margin-bottom: 20px;
        }
        .profile-info {
            margin-bottom: 10px;
        }
        .profile-buttons {
            margin-top: 20px;
        }
        .profile-buttons a, .profile-buttons button {
            margin-bottom: 10px;
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

    <div class="profile-container">
        <img src='<%= ResolveUrl("~/images/signup_icon.jpg") %>' alt="Sign Up" class="signup-icon" />
        <h2>User Profile</h2>
        <div class="profile-info">
            <strong>Name:</strong> <asp:Label ID="lblName" runat="server"></asp:Label>
        </div>
        <div class="profile-info">
            <strong>Email:</strong> <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </div>
        <div class="profile-info">
            <strong>Password:</strong> <asp:Label ID="lblPassword" runat="server"></asp:Label>
        </div>
        <div class="profile-buttons">
            <a href="CompletedOrders.aspx" class="btn btn-primary">Complete Order</a>
             <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" CssClass="btn btn-secondary" />
        </div>
    </div>

    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
       
        function signOut() {
            
            <% Session.Clear(); %>
            window.location.href = 'Login';
        }
    </script>
    <footer class="container-fluid bg-dark text-white py-3">
<div class="container">
    <div class="row">
        <div class="col-md-4 text-center text-md-left mb-3 mb-md-0">
            <p>&copy; 2024 humaloCraft Emporium. All rights reserved.</p>
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