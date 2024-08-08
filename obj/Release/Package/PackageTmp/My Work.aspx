<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="My Work.aspx.cs" Inherits="ST10141464POE.My_Work" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-size: 100%;
            margin: 0;
            padding: 0;
            background-color: white;
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

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            background-color: white;
            padding: 20px;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            width: 300px;
            margin-bottom: 20px;
            text-align: center;
            font-family: Arial, sans-serif;
            background-color: #fff;
            padding: 20px;
            transition: transform 0.2s;
        }

        .card:hover {
            transform: scale(1.05);
        }

        .price {
            color: #28a745;
            font-size: 22px;
            margin: 15px 0;
            font-weight: bold;
        }

        .card button {
            border: none;
            outline: 0;
            padding: 12px;
            color: white;
            background-color: black;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
            transition: background-color 0.3s;
        }

        .card button:hover {
            background-color: #0056b3;
        }

        .description {
            color: #333;
            font-size: 16px;
            margin: 10px 0;
        }

        .card img {
            width: 280px; /* fixed width */
            height: 280px; /* fixed height */
            object-fit: cover; /* ensures image covers the entire area */
            border-radius: 5px;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card img:hover {
            transform: scale(1.1);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
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
    .category {
            font-weight: bold;
            color: #007bff; 
        }

        .availability {
            color: #28a745; /* Green color */
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

    <h2 style="text-align:center" class="text-primary">Products We Sell</h2>

    <div class="card-container">
        <asp:Repeater ID="ProductRepeater" runat="server">
            <ItemTemplate>
                <div class="card">
                    <h2><%# Eval("name") %></h2>
                    <asp:Image runat="server" ImageUrl='<%# Eval("imageURL") %>' CssClass="product-image" />
                    <p class="description">
                        <%# Eval("description") %>
                    </p>
                    <p class="price">
                        Price: $<%# Eval("price") %>
                    </p>
                    <p class="category">
                        Category: <%# Eval("categoryName") %>
                    </p>
                    <p class="availability">
                        Availability: <%# Eval("AvailabilityStatus") %>
                    </p>
                    <asp:Button runat="server" Text="Add to cart" CssClass="button-custom" ID="btnAddToCart1" OnCommand="btnAddToCart1_Command" OnClick="btnAddToCart1_Click" CommandArgument='<%# Eval("productID") %>' />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
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
            <p>Samkelo Maswana</p>
        </div>
        </div>
    </div>
</footer>

    <script>
        function myFunction(popupId) {
            var popup1 = document.getElementById(popupId);
            popup1.classList.toggle("show");
        }
    </script>
</asp:Content>
<%--W3schools.com.1998.Bootstrap 3 tutorial. [Online] Available at: https://www.w3schools.com/bootstrap/default.asp (Accessed: 30 March 2024). 

 

W3schools.com. 1998Bootstrap 5 background colors. [Online]. Available at: https://www.w3schools.com/bootstrap5/bootstrap_colors_bg.php (Accessed: 31 March 2024). 

 

W3schools.com. 1998.Bootstrap 5 buttons. [Online]. Available at: https://www.w3schools.com/bootstrap5/bootstrap_buttons.php (Accessed: 30 March 2024). 

 

GeeksforGeeks. 2023 How to Create Popup Box using HTML and CSS? . [Online]. Available at: https://www.geeksforgeeks.org/how-to-create-popup-box-using-html-and-css/ (Accessed: 30 March 2024). 

 

W3schools.com. 1998. How to create a contact section. [Online]. Available at: https://www.w3schools.com/howto/howto_css_contact_section.asp (Accessed: 1 April 2024). 

 

Istockphoto.com. 2000. South Africa Handcrafted Things stock photos, pictures & royalty-free images - iStock. [Online]. Available at: https://www.istockphoto.com/search/2/image?page=3&phrase=South%20Africa%20handcrafted%20things (Accessed: 31 March 2024). 

 

Istockphoto.com. 2000. South Africa Handcrafted Things stock photos, pictures & royalty-free images - iStock. [Online]. Available at: https://www.istockphoto.com/search/2/image?phrase=South%20Africa%20handcrafted%20things (Accessed:1 April 2024). 

 
    W3Schools.1998 online HTML editor. W3schools.com. Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_js_popup (Accessed: April 2, 2024).

Istockphoto.com. 2000. South Africa Handcrafted Things stock photos, pictures & royalty-free images - iStock, [Online]. Available at: https://www.istockphoto.com/search/2/image?page=2&phrase=South%20Africa%20handcrafted%20things (Accessed: 31 March 2024). 

 

W3schools.com. 1998.W3Schools online HTML editor, [Online]. Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_product_card (Accessed:1 April 2024). 

 

Codeconvey.com.2015. Slider in html css. [Online]. Available at: https://codeconvey.com/automatic-image-slider-in-html-css/ (Accessed: 1 April 2024). 

 

iStock. 2000. South Africas Handcrafted Things stock photos, pictures & royalty-free images - iStock, Istockphoto.com. Available at: https://www.istockphoto.com/search/2/image?phrase=South%20Africas%20handcrafted%20things (Accessed: April 2, 2024). 

 

IStock.2000. South Africas Handcrafted Things stock photos, pictures & royalty-free images - iStock, Istockphoto.com. Available at: https://www.istockphoto.com/search/2/image?page=3&phrase=South%20Africas%20handcrafted%20things (Accessed: April 2, 2024). 

 

iStock. 2000. Masterpiece collection rhino, African Creative. Available at: https://www.africancreative.co.za/catalogue/master-piece-beaded-animals/masterpiece-collection-rhino (Accessed: April 2, 2024). 

 

iStock. 2000. South Africas Handcrafted Things stock photos, pictures & royalty-free images - iStock, Istockphoto.com. Available at: https://www.istockphoto.com/search/2/image?phrase=South%20Africas%20handcrafted%20things&page=2 (Accessed: April 2, 2024). 

 

iStock. 2000. Wooden african souvenirs on sale at Cape Town market, iStock. Available at: https://www.istockphoto.com/photo/wooden-african-souvenirs-on-sale-at-cape-town-market-gm1089245536-292196420 (Accessed: April 2, 2024). 

 

  --%>