<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ST10141464POE.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff; 
            color: #000; 
        }

        .navbar a {
            text-decoration: none; 
        }

        .navbar a:hover {
            color: #0056b3; 
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            align-items: flex-start;
            justify-content: space-between; 
            margin: 20px;
        }

        .image {
            flex: 1;
            max-width: 500px;
        }

        .image img {
            width: 100%;
            height: auto;
            object-fit: cover; 
            border-radius: 10px;
            margin-bottom: 20px;
            transition: filter 0.3s, transform 0.3s;
        }

        .image img:hover {
            filter: hue-rotate(200deg) saturate(200%);
            transform: scale(1.05);
        }

        .text {
            flex: 2;
            font-size: 20px;
            color: #000;
            line-height: 1.6;
            text-align: left; 
            margin-left: 20px;
        }

        h2 {
            font-size: 2em;
            color: #000; 
            margin-bottom: 20px;
            text-align: center; 
        }

        h3 {
            font-size: 1.5em;
            color: #000; 
            margin-top: 20px;
            text-align: center; /* Center the "Our Mission" heading */
        }

        @media (max-width: 768px) {
            .container {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }

            .text {
                margin-left: 0;
                margin-top: 20px;
            }

            .image {
                max-width: 100%;
            }
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

    <main>
        <section id="about">
            <div class="container">
                <div class="image">
                    <img src="images/about.jpg" alt="KhumaloCraft">
                    <img src="images/about2.jpg" alt="KhumaloCraft Additional Image 1">
                    <img src="images/about3.jpg" alt="KhumaloCraft Additional Image 2">
                </div>
                <div class="text">
                    <h2>About KhumaloCraft</h2>
                    <p>Greetings from KhumaloCraft, where you may discover an amazing world of creative and fine craftsmanship.</p>
                    <h3>Our Mission</h3>
                    <p>At KhumaloCraft, our mission is to bridge the gap between artisans and customers, providing a platform that celebrates and promotes the beauty of handcrafted items. We are dedicated to fostering a community where creativity, quality, and cultural exchange thrive.</p>
                    <p>We believe that every handcrafted item tells a story and reflects the unique heritage of its creator. By connecting talented artisans with appreciative buyers, we aim to inspire and support the preservation of traditional crafts and the growth of new artistic expressions.</p>
                    <p>Join us in our journey to appreciate and promote the artistry that transcends boundaries and brings joy to both creators and collectors.</p>
                </div>
            </div>
        </section>
    </main>
    <footer class="container-fluid bg-dark text-white py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-4 text-center text-md-left mb-3 mb-md-0">
                    <p>&copy; 2024 KhumaloCraft Emporium. All rights reserved.</p>
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
</asp:Content>
<%--W3schools.com.1998.Bootstrap 3 tutorial. [Online] Available at: https://www.w3schools.com/bootstrap/default.asp (Accessed: 30 March 2024). 

 

W3schools.com. 1998Bootstrap 5 background colors. [Online]. Available at: https://www.w3schools.com/bootstrap5/bootstrap_colors_bg.php (Accessed: 31 March 2024). 

 

W3schools.com. 1998.Bootstrap 5 buttons. [Online]. Available at: https://www.w3schools.com/bootstrap5/bootstrap_buttons.php (Accessed: 30 March 2024). 

 

GeeksforGeeks. 2023 How to Create Popup Box using HTML and CSS? . [Online]. Available at: https://www.geeksforgeeks.org/how-to-create-popup-box-using-html-and-css/ (Accessed: 30 March 2024). 

 

W3schools.com. 1998. How to create a contact section. [Online]. Available at: https://www.w3schools.com/howto/howto_css_contact_section.asp (Accessed: 1 April 2024). 

 

Istockphoto.com. 2000. South Africa Handcrafted Things stock photos, pictures & royalty-free images - iStock. [Online]. Available at: https://www.istockphoto.com/search/2/image?page=3&phrase=South%20Africa%20handcrafted%20things (Accessed: 31 March 2024). 

 

Istockphoto.com. 2000. South Africa Handcrafted Things stock photos, pictures & royalty-free images - iStock. [Online]. Available at: https://www.istockphoto.com/search/2/image?phrase=South%20Africa%20handcrafted%20things (Accessed:1 April 2024). 

 

Istockphoto.com. 2000. South Africa Handcrafted Things stock photos, pictures & royalty-free images - iStock, [Online]. Available at: https://www.istockphoto.com/search/2/image?page=2&phrase=South%20Africa%20handcrafted%20things (Accessed: 31 March 2024). 

 

W3schools.com. 1998.W3Schools online HTML editor, [Online]. Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_product_card (Accessed:1 April 2024). 

 

Codeconvey.com.2015. Slider in html css. [Online]. Available at: https://codeconvey.com/automatic-image-slider-in-html-css/ (Accessed: 1 April 2024). 

 

iStock. 2000. South Africas Handcrafted Things stock photos, pictures & royalty-free images - iStock, Istockphoto.com. Available at: https://www.istockphoto.com/search/2/image?phrase=South%20Africas%20handcrafted%20things (Accessed: April 2, 2024). 

 

IStock.2000. South Africas Handcrafted Things stock photos, pictures & royalty-free images - iStock, Istockphoto.com. Available at: https://www.istockphoto.com/search/2/image?page=3&phrase=South%20Africas%20handcrafted%20things (Accessed: April 2, 2024). 

 

iStock. 2000. Masterpiece collection rhino, African Creative. Available at: https://www.africancreative.co.za/catalogue/master-piece-beaded-animals/masterpiece-collection-rhino (Accessed: April 2, 2024). 

 

iStock. 2000. South Africas Handcrafted Things stock photos, pictures & royalty-free images - iStock, Istockphoto.com. Available at: https://www.istockphoto.com/search/2/image?phrase=South%20Africas%20handcrafted%20things&page=2 (Accessed: April 2, 2024). 

 

iStock. 2000. Wooden african souvenirs on sale at Cape Town market, iStock. Available at: https://www.istockphoto.com/photo/wooden-african-souvenirs-on-sale-at-cape-town-market-gm1089245536-292196420 (Accessed: April 2, 2024). 

 

  --%>