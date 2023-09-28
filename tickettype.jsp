<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<% String pagename="tickettype.jsp"; session.setAttribute("pagename", pagename); %>
<head>
    <meta charset="utf-8">
    <title>AirLine Reservation System</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="icon" href="title_logo.png" type="text/x-icon">
    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <!--div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Header Start -->
        <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Header Start -->
        <div class="container-fluid bg-dark px-0">
            <div class="row gx-0">
                <div class="col-lg-3 bg-dark d-none d-lg-block">
                    <a href="index.jsp" class="navbar-brand w-100 h-100 m-0 p-0 d-flex align-items-center justify-content-center">
                        <h1 class="m-0 text-primary text-uppercase">AirReserve</h1>
                    </a>
                </div>
                <div class="col-lg-9">
                    <div class="row gx-0 bg-white d-none d-lg-flex">
                        <div class="col-lg-7 px-5 text-start">
                            <div class="h-100 d-inline-flex align-items-center py-2 me-4">
                                <i class="fa fa-envelope text-primary me-2"></i>
                                <p class="mb-0">dtanmoy169@gmail.com</p>
                            </div>
                            <div class="h-100 d-inline-flex align-items-center py-2">
                                <i class="fa fa-phone-alt text-primary me-2"></i>
                                <p class="mb-0">+91 82405 70310</p>
                            </div>
                        </div>
                        <div class="col-lg-5 px-5 text-end">
                            <div class="d-inline-flex align-items-center py-2">
                                <a class="me-3" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="me-3" href=""><i class="fab fa-twitter"></i></a>
                                <a class="me-3" href=""><i class="fab fa-linkedin-in"></i></a>
                                <a class="me-3" href=""><i class="fab fa-instagram"></i></a>
                                <a class="" href=""><i class="fab fa-youtube"></i></a>
                            </div>
                        </div>
                    </div>
                    <nav class="navbar navbar-expand-lg bg-dark navbar-dark p-3 p-lg-0">
                        <a href="index.jsp" class="navbar-brand d-block d-lg-none">
                            <h1 class="m-0 text-primary text-uppercase">AirReserve</h1>
                        </a>
                        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                            <div class="navbar-nav mr-auto py-0">
                                <a href="index.jsp" class="nav-item nav-link active">Home</a>
                                <a href="about.jsp" class="nav-item nav-link">About</a>
                                <a href="availability.jsp" class="nav-item nav-link">Check Availability</a>
                                <a href="booking_error_msg.jsp" class="nav-item nav-link">Booking</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Login/Register</a>
                                    <div class="dropdown-menu rounded-0 m-0">
                                        <a href="login.jsp" class="dropdown-item">Login</a>
                                        <a href="register.jsp" class="dropdown-item">Register</a>
                                    </div>
                                </div>
                                <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                            </div>
                            <a href="adminlogin.jsp" class="btn btn-primary rounded-0 py-4 px-md-5 d-none d-lg-block">Admin Panel<i class="fa fa-arrow-right ms-3"></i></a>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Header End -->


        <!-- Page Header Start -->
        <div class="container-fluid page-header mb-5 p-0" style="background-image: url(img/carousel-1.jpg);">
            <div class="container-fluid page-header-inner py-5">
                <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Types Of Plane Ticket</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                            <li class="breadcrumb-item text-white active" aria-current="page">Ticket Type</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Ticket info Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title text-center text-primary text-uppercase">Types Of Plain Ticket</h6>
                    <h1 class="mb-5"><span class="text-primary text-uppercase">AirReserve</span> Provides </h1>
                </div>
                <div class="row g-4">
                    <div class="col-12">
                        <div class="row gy-4">
                            <div class="col-md-4">
                                <h6 class="section-title text-start text-primary text-uppercase">Booking</h6>
                                <p><i class="fa fa-envelope-open text-primary me-2"></i>book@example.com</p>
                            </div>
                            <div class="col-md-4">
                                <h6 class="section-title text-start text-primary text-uppercase">General</h6>
                                <p><i class="fa fa-envelope-open text-primary me-2"></i>info@example.com</p>
                            </div>
                            <div class="col-md-4">
                                <h6 class="section-title text-start text-primary text-uppercase">Technical</h6>
                                <p><i class="fa fa-envelope-open text-primary me-2"></i>tech@example.com</p>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div class="col-md-6 wow fadeIn" data-wow-delay="0.1s">
                        <h6 class="section-title text-start text-primary text-uppercase">Types Of Plane Tickets</h6>
                        <h1 class="mb-4">AirReserve Provides <span class="text-primary text-uppercase">One-Way Ticket</span></h1>
                        <p class="mb-4">This is a type of ticket for one direction of travel only. It is ideal for travelers who do not require a return flight or for travelers who do not have an exact return date. Travelers who purchase one-way tickets must purchase a second ticket for return travel.</p>
                    </div>
                    <div class="col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.2s">
                            <div class="row g-3">
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.3s" src="img/about-3.png">
                                </div>
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.5s" src="img/about-4.png">
                                </div>                                
                            </div>
                        </div>
                    </div>
                    
                    
                    
                   
                    <div class="col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.4s">
                            <div class="row g-3">
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.3s" src="img/about-2.png">
                                </div>
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.5s" src="img/about-1.png">
                                </div>                                
                            </div>
                        </div>
                    </div>                
                    <div class="col-md-6 wow fadeIn" data-wow-delay="0.5s">
                        <h6 class="section-title text-start text-primary text-uppercase">Types Of Plane Tickets</h6>
                        <h1 class="mb-4">AirReserve Provides <span class="text-primary text-uppercase">Round-trip Ticket</span></h1>
                        <p class="mb-4">Round-trip tickets are tickets that allow the purchaser to travel to their destination and then back again. This type of ticket is for travelers who have plans to travel on specific dates.</p>
                    </div>
                    
                    
                    
                    
                    <div class="col-md-6 wow fadeIn" data-wow-delay="0.7s">
                        <h6 class="section-title text-start text-primary text-uppercase">Types Of Plane Tickets</h6>
                        <h1 class="mb-4">AirReserve Provides <span class="text-primary text-uppercase">First Class Ticket</span></h1>
                        <p class="mb-4">First class tickets are a form of one-way or round-trip tickets that allow travelers to travel in first class. Because first class travelers have access to spacious seating, quality food, drink and other in-flight amenities, these tickets are often the most expensive type of ticket available. First class ticket holders also have access to the airport lounge while waiting for their flight and a variety of entertainment options on-board.</p>
                    </div>
                    <div class="col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.8s">
                            <div class="row g-3">
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.3s" src="img/about-2.png">
                                </div>
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.5s" src="img/about-1.png">
                                </div>                                
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    
                    <div class="col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.10s">
                            <div class="row g-3">
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.3s" src="img/about-3.png">
                                </div>
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.5s" src="img/about-4.png">
                                </div>                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeIn" data-wow-delay="0.11s">
                        <h6 class="section-title text-start text-primary text-uppercase">Types Of Plane Tickets</h6>
                        <h1 class="mb-4">AirReserve Provides <span class="text-primary text-uppercase">Business Class Ticket</span></h1>
                        <p class="mb-4">This type of ticket allows the purchaser to sit in business class. It is a ticket that provides travelers with a more comfortable traveling experience than coach/economy. For example, one of the benefits of business class is increased leg room. However, it does not have the features or luxuries that are available to travelers carrying first class tickets.</p>
                    </div>
                    
                    
                    
                    
                    <div class="col-md-6 wow fadeIn" data-wow-delay="0.13s">
                        <h6 class="section-title text-start text-primary text-uppercase">Types Of Plane Tickets</h6>
                        <h1 class="mb-4">AirReserve Provides <span class="text-primary text-uppercase">Coach Ticket</span></h1>
                        <p class="mb-4">Coach tickets are a type of ticket in which fliers travel in coach or economy class. This is the most basic means of travel and it is also the least expensive. Holders of coach tickets are often given limited snacks and drink and other comfort features such as leg room are limited.</p>
                    </div>
                    <div class="col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.14s">
                            <div class="row g-3">
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.3s" src="img/about-5.png">
                                </div>
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.5s" src="img/about-6.png">
                                </div>                                
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    
                    <div class="col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.16s">
                            <div class="row g-3">
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.3s" src="img/about-2.png">
                                </div>
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.5s" src="img/about-1.png">
                                </div>                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 wow fadeIn" data-wow-delay="0.17s">
                        <h6 class="section-title text-start text-primary text-uppercase">Types Of Plane Tickets</h6>
                        <h1 class="mb-4">AirReserve Provides <span class="text-primary text-uppercase">Non-refundable tickets</span></h1>
                        <p class="mb-4">Round-trip tickets are tickets that allow the purchaser to travel to their destination and then back again. This type of ticket is for travelers who have plans to travel on specific dates.</p>
                    </div>
                    
                    
                    
                    <div class="col-md-6 wow fadeIn" data-wow-delay="0.5s">
                        <h6 class="section-title text-start text-primary text-uppercase">Types Of Plane Tickets</h6>
                        <h1 class="mb-4">AirReserve Provides <span class="text-primary text-uppercase">Refundable ticket</span></h1>
                        <p class="mb-4">Refundable tickets are a ticket type that is eligible for a refund. Travelers that request a refund are not charged a fee or penalty.</p>
                    </div>
                    <div class="col-md-6">
                        <div class="wow fadeInUp" data-wow-delay="0.4s">
                            <div class="row g-3">
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.3s" src="img/about-3.png">
                                </div>
                                <div class="col-6 text-start">
                                    <img class="img-fluid rounded w-75 wow zoomIn" data-wow-delay="0.5s" src="img/about-4.png">
                                </div>                                
                            </div>
                        </div>
                    </div>                
                    
                </div>
            </div>
        </div>
        <!-- Ticket info End -->

        
        <!-- Newsletter Start -->
        <div class="container newsletter mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="row justify-content-center">
                <div class="col-lg-10 border rounded p-1">
                    <div class="border rounded text-center p-1">
                        <div class="bg-white rounded text-center p-5">
                            <h4 class="mb-4">Subscribe Our <span class="text-primary text-uppercase">Newsletter</span></h4>
                            <form method="post" action="Newsletter_srv">
                                <div class="position-relative mx-auto" style="max-width: 400px;">
                                    <input class="form-control w-100 py-3 ps-4 pe-5" type="email" placeholder="Enter your email" id="emails" name="emails">
                                    <button type="submit" class="btn btn-primary py-2 px-3 position-absolute top-0 end-0 mt-2 me-2">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Newsletter Start -->


        <!-- Footer Start -->
        <div class="container-fluid bg-dark text-light footer wow fadeIn" data-wow-delay="0.1s">
            <div class="container pb-5">
                <div class="row g-5">
                    <div class="col-md-6 col-lg-4">
                        <div class="bg-primary rounded p-4">
                            <a href="index.jsp">
                                <h1 class="text-white text-uppercase mb-3">AirReserve</h1>
                            </a>
                            <p class="text-white mb-0">
                                The website and backend mechanism are designed and developed by <a class="text-dark fw-medium" href="https://www.facebook.com/AlphaTanmoy/">Tanmoy Das</a> hope it's attractive and can be a demo of an actual airline system.
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h6 class="section-title text-start text-primary text-uppercase mb-4">Contact</h6>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Baguihati, Brainware</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+91 82405 70310</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>dtanmoy169@gmail.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-12">
                        <div class="row gy-5 g-4">
                            <div class="col-md-6">
                                <h6 class="section-title text-start text-primary text-uppercase mb-4">Company</h6>
                                <a class="btn btn-link" href="about.jsp">About Us</a>
                                <a class="btn btn-link" href="contact.jsp">Contact Us</a>
                                <a class="btn btn-link" href="about.jsp#team">Our Team</a>
                            </div>
                            <div class="col-md-6">
                                <h6 class="section-title text-start text-primary text-uppercase mb-4">Services</h6>
                                <a class="btn btn-link" href="login.jsp">Already a User</a>
                                <a class="btn btn-link" href="register.jsp">New Registration</a>
                                <a class="btn btn-link" href="adminlogin.jsp">Admin Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="index.jsp"> AirReserve </a>, All Right Reserved. Designed By <a class="border-bottom">Tanmoy Das</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="index.jsp">Home</a>
                                <a href="about.jsp">About</a>
                                <a href="booking_error_msg.jsp">Booking</a>
                                <a href="avaibility.jsp">Check Status</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>