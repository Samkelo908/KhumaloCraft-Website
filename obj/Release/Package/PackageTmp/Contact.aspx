<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ST10141464POE.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        * {
            box-sizing: border-box;
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

        input[type=text],
        select,
        textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #04AA6D;
            color: white;
            padding: 12px 20px;
            border: none;
            cursor: pointer;
            margin-left: 165px; /* Center for larger screens */
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        .container {
            border-radius: 5px;
            padding: 10px;
        }

        .column {
            float: left;
            width: 50%;
            margin-top: 6px;
            padding: 20px;
        }

        .row:after {
            content: "";
            display: table;
            clear: both;
        }

        form label {
            display: block;
            margin-bottom: 6px;
        }

        @media screen and (min-width: 600px) {
            form label {
                width: 30%;
                float: left;
                text-align: right;
                margin-right: 2%;
            }
            .column input,
            .column select,
            .column textarea {
                width: 68%;
                float: left;
            }
        }

        @media screen and (max-width: 600px) {
            .column,
            input[type=submit] {
                width: 100%;
                margin-top: 0;
            }

            .column iframe {
                width: 100%;
                height: 300px; /* Adjust height for smaller screens */
            }

            input[type=submit] {
                display: block; /* Ensure the button takes full width when centered */
                margin: 0 auto; /* Center the button */
            }
        }

        @media screen and (max-width: 480px) {
            .column iframe {
                height: 200px; /* Further adjust height for very small screens */
            }
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
        <div class="container">
            <div style="text-align:center">
                <h2>Contact Us</h2>
                <p>If you want to contact us:</p>
            </div>
            <div class="row">
                <div class="column">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3309.592698132988!2d25.574875675712146!3d-33.951602473195074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1e7ad3d26d86361b%3A0xf546d9332870dab0!2sThe%20IIE&#39;s%20Varsity%20College%20-%20Nelson%20Mandela%20Bay!5e0!3m2!1sen!2sza!4v1711905893719!5m2!1sen!2sza" width="500" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
                <div class="column">
                    <form id="contactForm" action="javascript:void(0);">
                        <label for="fname">First Name</label>
                        <input type="text" id="fname" name="firstname" placeholder="Your name.." required>
                        <label for="lname">Last Name</label>
                        <input type="text" id="lname" name="lastname" placeholder="Your last name.." required>
                        <label for="country">Country</label>
                        <select id="country" name="country">
                            <option value="South Africa">South Africa</option>
                            <option value="australia">Australia</option>
                            <option value="canada">Canada</option>
                            <option value="usa">USA</option>
                            <option value="Others">Others</option>
                        </select>
                        <label for="subject">Subject</label>
                        <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px" required></textarea>
                        <input type="submit" value="Submit">
                    </form>
                    <div id="thankYouMessage" style="display: none;">Thank you for contacting us. You will receive a response within 24 hours.</div>
                </div>
            </div>
        </div>
    </main>
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
        document.getElementById("contactForm").addEventListener("submit", function (event) {
            event.preventDefault();
            hideFormAndShowMessage();
        });

        function hideFormAndShowMessage() {
            document.getElementById("contactForm").style.display = "none";
            document.getElementById("thankYouMessage").style.display = "block";
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

 

Istockphoto.com. 2000. South Africa Handcrafted Things stock photos, pictures & royalty-free images - iStock, [Online]. Available at: https://www.istockphoto.com/search/2/image?page=2&phrase=South%20Africa%20handcrafted%20things (Accessed: 31 March 2024). 

 

W3schools.com. 1998.W3Schools online HTML editor, [Online]. Available at: https://www.w3schools.com/howto/tryit.asp?filename=tryhow_css_product_card (Accessed:1 April 2024). 

 

Codeconvey.com.2015. Slider in html css. [Online]. Available at: https://codeconvey.com/automatic-image-slider-in-html-css/ (Accessed: 1 April 2024). 

 

iStock. 2000. South Africas Handcrafted Things stock photos, pictures & royalty-free images - iStock, Istockphoto.com. Available at: https://www.istockphoto.com/search/2/image?phrase=South%20Africas%20handcrafted%20things (Accessed: April 2, 2024). 

 

IStock.2000. South Africas Handcrafted Things stock photos, pictures & royalty-free images - iStock, Istockphoto.com. Available at: https://www.istockphoto.com/search/2/image?page=3&phrase=South%20Africas%20handcrafted%20things (Accessed: April 2, 2024). 

 

iStock. 2000. Masterpiece collection rhino, African Creative. Available at: https://www.africancreative.co.za/catalogue/master-piece-beaded-animals/masterpiece-collection-rhino (Accessed: April 2, 2024). 

 

iStock. 2000. South Africas Handcrafted Things stock photos, pictures & royalty-free images - iStock, Istockphoto.com. Available at: https://www.istockphoto.com/search/2/image?phrase=South%20Africas%20handcrafted%20things&page=2 (Accessed: April 2, 2024). 

 

iStock. 2000. Wooden african souvenirs on sale at Cape Town market, iStock. Available at: https://www.istockphoto.com/photo/wooden-african-souvenirs-on-sale-at-cape-town-market-gm1089245536-292196420 (Accessed: April 2, 2024). 

 

  --%>