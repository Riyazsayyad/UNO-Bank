<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="images/icons/rupee.png"/>
    <title>Welcome</title>
    <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
    <!-- https://fonts.google.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/templatemo-video-catalog.css">
<!--

TemplateMo 552 Video Catalog

https://templatemo.com/tm-552-video-catalog

-->
</head>

<body>
    <div class="tm-page-wrap mx-auto">
        <div class="position-relative">
            <div class="position-absolute tm-site-header">
                <div class="container-fluid position-relative">
                    <div class="row">
                        <div class="col-7 col-md-4">
                            <!-- 	<a href="index.html" class="tm-bg-black text-center tm-logo-container"> -->
                             <!---   <i class="fas fa-video tm-site-logo mb-3"></i> -->
                             <h1 class="tm-site-name"></h1>
                            </a>
                        </div>
                        <div class="col-5 col-md-8 ml-auto mr-0">
                            <div class="tm-site-nav">
                                <nav class="navbar navbar-expand-lg mr-0 ml-auto" id="tm-main-nav">
                                    <button class="navbar-toggler tm-bg-black py-2 px-3 mr-0 ml-auto collapsed" type="button"
                                        data-toggle="collapse" data-target="#navbar-nav" aria-controls="navbar-nav"
                                        aria-expanded="false" aria-label="Toggle navigation">
                                        <span>
                                            <i class="fas fa-bars tm-menu-closed-icon"></i>
                                            <i class="fas fa-times tm-menu-opened-icon"></i>
                                        </span>
                                    </button>
                                    <div class="collapse navbar-collapse tm-nav" id="navbar-nav">
                                        <ul class="navbar-nav text-uppercase">
                                            <li class="nav-item active">
                                                <a class="nav-link tm-nav-link" href="Login.jsp">Login </a>
                                            </li>
                                           <!--  <li class="nav-item">
                                                <a class="nav-link tm-nav-link" href="AddC.jsp">Signup</a>
                                            </li> -->
                                            <li class="nav-item">
                                                <a class="nav-link tm-nav-link" href="contact.html">Contact</a>
                                            </li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tm-welcome-container text-center text-white">
                <div class="tm-welcome-container-fluid">
                    <!-- <text class="tm-welcome-text mb-1 text-white" >UNO Bank </text><br> -->
                 <text class="tm-welcome-text mb-1 text-white" ><img src="design/logobank.png" height="150"> </text>
                    <h5 class="tm-welcome-text mb-1 text-white">We are the trust.</h5>
                    <a href="#content" class="btn tm-btn-animate tm-btn-cta tm-icon-down">
                        <span>Discover</span>
                    </a>
                </div>
            </div>

            <div id="tm-video-container">
                <video autoplay muted loop id="tm-video">
                    <!-- <source src="video/sunset-timelapse-video.mp4" type="video/mp4"> -->
                        <source src="video/money.mp4" type="video/mp4">
                </video>    
            </div>
            
            <i id="tm-video-control-button" class="fas fa-pause"></i>
        </div>

        <div class="container-fluid">
            <div id="content" class="mx-auto tm-content-container">
                <main>
                    <div class="row">
                        <div class="col-12">
                            <h2 class="tm-page-title mb-4">Our Services</h2>
                           <!--   <div class="tm-categories-container mb-5">
                                <h3 class="tm-text-primary tm-categories-text">Categories:</h3>
                                <ul class="nav tm-category-list">
                                    <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link active">All</a></li>
                                    <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link">Drone Shots</a></li>
                                    <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link">Nature</a></li>
                                    <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link">Actions</a></li>
                                    <li class="nav-item tm-category-item"><a href="#" class="nav-link tm-category-link">Featured</a></li>
                                </ul> 
                            </div>    -->    
                        </div>
                    </div>
                   
                    <div class="row tm-catalog-item-list">
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img\home.jpg"alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="StoreInCookies.jsp?choice=home1" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>    
              <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Home Loan</h3>
                               <!--  <p class="tm-catalog-item-text">Video thumbnail has a link to another HTML page. 
                                    Categories --> 
                                    Avail home loan approval online
									Lower interest rates</p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img/car.jpeg" alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="StoreInCookies.jsp?choice=car1" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>
          <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Car Loan</h3>
                               <!--  <p class="tm-catalog-item-text">You may need TemplateMo for a quick chat or send an email if you have any question about this CSS template.  
                                    <span class="tm-text-secondary">-->Own your dream car with UNO Car loan with attractive interest rates up to 7 years tenure.</span></p>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-12 tm-catalog-item">
                            <div class="position-relative tm-thumbnail-container">
                                <img src="img/blah.jpg" alt="Image" class="img-fluid tm-catalog-item-img">    
                                <a href="StoreInCookies.jsp?choice=edu" class="position-absolute tm-img-overlay">
                                    <i class="fas fa-play tm-overlay-icon"></i>
                                </a>
                            </div>                            
                            <div class="p-4 tm-bg-gray tm-catalog-item-description">
                                <h3 class="tm-text-primary mb-3 tm-catalog-item-title">Education Loan</h3>
                                <p class="tm-catalog-item-text">Axis Bank brings you Education Loans for studies both in India and abroad starting from Rs. 50,000 at attractive interest rates..</p>
                            </div>
                        </div>
                      
                </main>

              
                <footer class="row pt-5">
                    <div class="col-12">
                        <p class="text-right">Copyright 2020 UNO Banking  
                        
                        - Designed by <a href="https://templatemo.com" rel="nofollow" target="_parent">Riyaz</a></p>
                    </div>
                </footer>
            </div> <!-- tm-content-container -->
        </div>

    </div> <!-- .tm-page-wrap -->

    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        function setVideoSize() {
            const vidWidth = 1920;
            const vidHeight = 1080;
            let windowWidth = window.innerWidth;
            let newVidWidth = windowWidth;
            let newVidHeight = windowWidth * vidHeight / vidWidth;
            let marginLeft = 0;
            let marginTop = 0;

            if (newVidHeight < 500) {
                newVidHeight = 500;
                newVidWidth = newVidHeight * vidWidth / vidHeight;
            }

            if(newVidWidth > windowWidth) {
                marginLeft = -((newVidWidth - windowWidth) / 2);
            }

            if(newVidHeight > 720) {
                marginTop = -((newVidHeight - $('#tm-video-container').height()) / 2);
            }

            const tmVideo = $('#tm-video');

            tmVideo.css('width', newVidWidth);
            tmVideo.css('height', newVidHeight);
            tmVideo.css('margin-left', marginLeft);
            tmVideo.css('margin-top', marginTop);
        }

        $(document).ready(function () {
            /************** Video background *********/

            setVideoSize();

            // Set video background size based on window size
            let timeout;
            window.onresize = function () {
                clearTimeout(timeout);
                timeout = setTimeout(setVideoSize, 100);
            };

            // Play/Pause button for video background      
            const btn = $("#tm-video-control-button");

            btn.on("click", function (e) {
                const video = document.getElementById("tm-video");
                $(this).removeClass();

                if (video.paused) {
                    video.play();
                    $(this).addClass("fas fa-pause");
                } else {
                    video.pause();
                    $(this).addClass("fas fa-play");
                }
            });
        })
    </script>
</body>

</html>