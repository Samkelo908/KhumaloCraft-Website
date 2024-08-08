<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ST10141464POE._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
    body {
        font-family: 'Arial', sans-serif;
        color: #333;
        background-color: #f8f9fa;
    }

    header h1 {
        font-size: 2.5rem;
        color: #007bff;
        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        margin-bottom: 1rem;
    }

    .carousel-item {
        height: 60vh;
        background-size: cover;
        background-position: center;
        border-radius: 20px;
    }

    .carousel-caption {
        top: 50%;
        transform: translateY(-50%);
    }

    .carousel-caption h1 {
        font-size: 2rem;
        color: #fff;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }

    .section-heading {
        font-size: 2rem;
        color: #007bff;
        text-align: center;
        margin: 2rem 0;
    }

    .card {
        border: none;
        border-radius: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s, box-shadow 0.3s;
    }

    .card:hover {
        transform: translateY(-10px);
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
    }

    .card-img-top {
        border-top-left-radius: 20px;
        border-top-right-radius: 20px;
        height: 200px;
        object-fit: cover;
        transition: transform 0.3s;
    }

    .card-img-top:hover {
        transform: scale(1.1);
    }

    .card-body {
        background-color: rgba(255, 255, 255, 0.9);
        border-bottom-left-radius: 20px;
        border-bottom-right-radius: 20px;
    }

    .btn-primary {
        background-color: #007bff;
        border: none;
        transition: background-color 0.3s;
    }

    .btn-primary:hover {
        background-color: #0056b3;
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

    .review-section {
        background-color: #fff;
        padding: 3rem 1rem;
        border-radius: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 3rem;
    }

    .review-card {
        border: none;
        background-color: #f8f9fa;
        border-radius: 20px;
        padding: 2rem;
        margin-bottom: 1.5rem;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .review-card h5 {
        font-size: 1.25rem;
        color: #007bff;
    }

    .review-card p {
        color: #555;
    }

    .review-form {
        display: none;
        background-color: #e9ecef;
        padding: 2rem;
        border-radius: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .review-form .btn-primary {
        width: 100%;
        border-radius: 10px;
    }

    .review-card {
        border: 1px solid #ccc;
        border-radius: 10px;
        padding: 15px;
        transition: transform 0.3s;
        height: 100%;
    }

    .review-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .btn {
        display: inline-block;
        padding: 10px 20px;
        font-size: 16px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
        background-color: #007bff; /* Bootstrap Primary Blue */
        color: white;
        border: none;
        border-radius: 5px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: background-color 0.3s, box-shadow 0.3s;
    }

    .btn:hover {
        background-color: #0056b3;
        box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
    }

    .btn:active {
        background-color: #004085;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
    }

    .btn a {
        color: white;
        text-decoration: none;
        display: block;
        height: 100%;
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
        header h1 {
            font-size: 1.5rem;
        }

        .carousel-item {
            height: 40vh;
        }

        .carousel-caption h1 {
            font-size: 1.5rem;
        }

        .section-heading {
            font-size: 1.5rem;
            margin: 1.5rem 0;
        }

        .card-img-top {
            height: 150px;
        }

        footer .row > div {
            margin-bottom: 15px;
        }
    }
</style>

<main style="padding-bottom: 100px;">
    <header>
        <h1 class="text-center">Welcome To KhumaloCraft Emporium</h1>
    </header>

    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active" style="background-image: url('images/slidehome8.jpg');">
                <div class="carousel-caption d-none d-md-block">
                    <h1>KhumaloCraft Emporium</h1>
                </div>
            </div>
            <div class="carousel-item" style="background-image: url('images/slidehome7.jpg');">
                <div class="carousel-caption d-none d-md-block">
                    <h1>We Create New Things</h1>
                </div>
            </div>
            <div class="carousel-item" style="background-image: url('images/slidehome6.jpg');">
                <div class="carousel-caption d-none d-md-block">
                    <h1>It is a Black Owned Company</h1>
                </div>
            </div>
            <div class="carousel-item" style="background-image: url('images/slidehome5.jpg');">
                <div class="carousel-caption d-none d-md-block">
                    <h1>We love creating beautiful things</h1>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <section class="container py-3 text-center">
        <p>Greetings from KhumaloCraft Emporium, where you may discover an amazing world of creative and fine craftsmanship.</p>
        <p>We are more than simply a marketplace, as a worldwide e-commerce platform that features handcrafted goods;</p>
        <p>we are a thriving community of creators, visionaries, and discriminating connoisseurs.</p>
        <button class="btn">
            <a href="About.aspx">Learn more about KhumaloCraft Emporium</a>
        </button>
    </section>

    <section class="container">
        <h2 class="section-heading">Our Product</h2>
        <div class="row">
            <div class="col-md-4 col-sm-6 mb-4">
                <div class="card card-hover">
                    <img src="images/picture1.jpg" class="card-img-top img-hover" alt="Hats">
                    <div class="card-body">
                        <h5 class="card-title">Hats</h5>
                        <p class="card-text">This is our product.</p>
                        <a href="My Work.aspx" class="btn btn-primary">See More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 mb-4">
                <div class="card card-hover">
                    <img src="images/picture2.jpg" class="card-img-top img-hover" alt="Handcrafted Pots">
                    <div class="card-body">
                        <h5 class="card-title">Handcrafted Pots</h5>
                        <p class="card-text">This is our product.</p>
                        <a href="My Work.aspx" class="btn btn-primary">See More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 mb-4">
                <div class="card card-hover">
                    <img src="images/picture3.jpg" class="card-img-top img-hover" alt="Coffee Cups">
                    <div class="card-body">
                        <h5 class="card-title">Coffee Cups</h5>
                        <p class="card-text">This is our product.</p>
                        <a href="My Work.aspx" class="btn btn-primary">See More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="container review-section">
        <h2 class="section-heading text-center mb-4">Customer Reviews</h2>
        <div class="row">
        <div class="col-md-6 col-sm-12">
            <div class="review-card">
                <h5>Milk</h5>
                <p>Outstanding customers services and liove the things they sell Will buy again!</p>
            </div>
        </div>
                <div class="col-md-6 col-sm-12">
            <div class="review-card">
                <h5>Vish</h5>
                <p>It was a create shopping<p>
            </div>
        </div>
            </div>
        <div class="row">
            <div class="col-md-6 col-sm-12">
                <div class="review-card">
                    <h5>Lindiewe</h5>
                    <p>Excellent craftsmanship and beautiful designs! Highly recommended.</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="review-card">
                    <h5>Josh</h5>
                    <p>Outstanding customer service and quality products. Will buy again!</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="review-card">
                    <h5>Samkelo</h5>
                    <p>Amazing experience! The handcrafted items are truly unique.</p>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <div class="review-card">
                    <h5>Retabile</h5>
                    <p>Beautiful products and fast shipping. Very satisfied with my purchase.</p>
                </div>
            </div>
        </div>
        <div class="row review-form mt-4">
            <div class="col-md-12">
                <h5>Submit Your Review</h5>
                <form>
                    <div class="form-group">
                        <label for="reviewerName">Name</label>
                        <input type="text" class="form-control" id="reviewerName" placeholder="Enter your name">
                    </div>
                    <div class="form-group">
                        <label for="reviewerComment">Comment</label>
                        <textarea class="form-control" id="reviewerComment" rows="3" placeholder="Write your review"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </section>
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

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function () {
        $('#carouselExampleIndicators').carousel({
            interval: 5000
        });

        $('#carouselExampleIndicators').on('slid.bs.carousel', function () {
            var currentIndex = $(this).find('.carousel-item.active').index();
            var slideCount = $(this).find('.carousel-item').length;

            if (currentIndex === slideCount - 5) {
                $(this).carousel(0);
            }
        });

        $('.write-review-btn').click(function () {
            $('.review-form').toggle();
        });
    });
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

 

iStock. 2000. Wooden african souvenirs on sale at Cape Town market, iStock. Available at: https://www.istockphoto.com/photo/wooden-african-souvenirs-on-sale-at-cape-town-market-gm1089245536-292196420 (Accessed: April 2, 2024).  --%>