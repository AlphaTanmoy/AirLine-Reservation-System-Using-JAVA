<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<% String pagename="searc_filter_flights_result.jsp"; session.setAttribute("pagename", pagename); %>
<head>
    <meta charset="utf-8">
    <title>Airline Reservation System</title>
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
    
    <style>
     
    div.scroll {
        margin: 4%;
        padding: 4px;
        width: 90%;
        overflow: auto;
        overflow-x: auto;
        overflow-y: auto;
        white-space: nowrap;
        scrollbar-color: #d4aa70 #e4e4e4;
        scrollbar-width: thin;
    }
    
    div.scroll::-webkit-scrollbar {
        width: 2px;               /* width of the entire scrollbar */
     }

    div.scroll::-webkit-scrollbar-track {
        background: orange;        /* color of the tracking area */
    }

    div.scroll::-webkit-scrollbar-thumb {
        background-color: blue;    /* color of the scroll thumb */
        border-radius: 20px;       /* roundness of the scroll thumb */
        border: 3px solid orange;  /* creates padding around scroll thumb */
    }
    
    table, th, td {
        border: 1px solid black;
    }
    </style>
</head>

<body>
    <div class="container-xxl bg-white p-0">
        
        <!-- Header Start -->
        <div class="container-xxl bg-white p-0">
        
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
                                <a href="index.jsp" class="nav-item nav-link">Home</a>
                                <a href="about.jsp" class="nav-item nav-link">About</a>
                                <a href="availability.jsp" class="nav-item nav-link active">Check Availability</a>
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
        <div class="container-fluid page-header mb-5 p-0" style="background-image: url(img/search.png);">
            <div class="container-fluid page-header-inner py-5">
                <div class="container text-center pb-5">
                    <h1 class="display-3 text-white mb-3 animated slideInDown">Update Flight Details</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb justify-content-center text-uppercase">
                            <li class="breadcrumb-item"><a href="admin_login_pass.jsp">Home</a></li>
                            <li class="breadcrumb-item text-white" aria-current="page">Update Flight Details</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Page Header End -->

        <div class="container-xxl py-5">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title text-center text-primary text-uppercase">Congrats!</h6>
                <h1 class="mb-5">Showing Results <span class="text-primary text-uppercase">For the Flight</span></h1>
            </div>
        </div>
        
        <!-- Footer Gappping -->
        <div class="container newsletter mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="row justify-content-center">
                <div class="col-lg-10 p-1">
                    <div class="text-center p-1">

                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Gapping -->
        <h2 align="center"><font><strong>Showing Search Results
            
        </strong></font></h2>
        <div class="scroll">
            <table align="center" cellpadding="5" cellspacing="5">
                <tr>
                
                </tr>
                <tr style="color:blue" bgcolor="#FEA116">
                <td><b>flight_id</b></td>
                <td><b>flight_no</b></td>
                <td><b>flight_name</b></td>
                <td><b>from_city</b></td>
                <td><b>to_city</b></td>
                <td><b>date_of_flight</b></td>
                <td><b>flight_arrival_time</b></td>
                <td><b>flight_reach_time</b></td>
                <td><b>duration</b></td>
                <td><b>first_class_seat</b></td>
                <td><b>first_class_seat_booked</b></td>
                <td><b>first_class_seat_aval</b></td>
                <td><b>buss_class_seat</b></td>
                <td><b>buss_class_seat_booked</b></td>
                <td><b>buss_class_seat_aval</b></td>
                <td><b>eco_class_seat</b></td>
                <td><b>eco_class_seat_booked</b></td>
                <td><b>eco_class_seat_aval</b></td>
                <td><b>first_class_price</b></td>
                <td><b>buss_class_price</b></td>
                <td><b>eco_class_price</b></td>
                </tr>
                <%
                int count = 0;
                //String color = "Blue";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
                    
                %>
                
                <tr>
                    <td><center><%=pList.get(0)%></center></td>
                    <td><center><%=pList.get(1)%></center></td>
                    <td><center><%=pList.get(2)%></center></td>
                    <td><center><%=pList.get(3)%></center></td>
                    <td><center><%=pList.get(4)%></center></td>
                    <td><center><%=pList.get(5)%></center></td>
                    <td><center><%=pList.get(6)%></center></td>
                    <td><center><%=pList.get(7)%></center></td>
                    <td><center><%=pList.get(8)%></center></td>
                    <td><center><%=pList.get(9)%></center></td>
                    <td><center><%=pList.get(10)%></center></td>
                    <td><center><%=pList.get(11)%></center></td>
                    <td><center><%=pList.get(12)%></center></td>
                    <td><center><%=pList.get(13)%></center></td>
                    <td><center><%=pList.get(14)%></center></td>
                    <td><center><%=pList.get(15)%></center></td>
                    <td><center><%=pList.get(16)%></center></td>
                    <td><center><%=pList.get(17)%></center></td>
                    <td><center>RS <%=pList.get(18)%>/-</center></td>
                    <td><center>RS <%=pList.get(19)%>/-</center></td>
                    <td><center>RS <%=pList.get(20)%>/-</center></td>
                    
                </tr>
                    <%
                            }
                        }
                        if (count == 0) {
                            %>
                        <tr>
                            <td colspan=21 align="center"><b>No Record Found..</b></td>
                        </tr>
            <%            }
            %>
                </table>
        </div>
        
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