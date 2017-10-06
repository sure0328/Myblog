<!DOCTYPE html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative One Page Parallax Template">
    <meta name="keywords" content="Creative, Onepage, Parallax, HTML5, Bootstrap, Popular, custom, personal, portfolio" />
    <title>MyBlog</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]> <script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script> <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<body>
<div class="preloader">
    <div class="preloder-wrap">
        <div class="preloder-inner">
            <div class="ball"></div>
            <div class="ball"></div>
            <div class="ball"></div>
            <div class="ball"></div>
            <div class="ball"></div>
            <div class="ball"></div>
            <div class="ball"></div>
        </div>
    </div>
</div><!--/.preloader-->
<header id="navigation">
    <div class="navbar navbar-inverse navbar-fixed-top" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><h1><img src="images/1.jpg" alt="logo" width="100" height="50"></h1></a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="scroll active"><a href="#navigation">Home</a></li>
                    <li class="scroll"><a href="#about-us">About Me</a></li>
                    <li class="scroll"><a href="#blog">Blog</a></li>
                    <li class="scroll"><a href="#contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </div><!--/navbar-->
</header> <!--/#navigation-->

<section id="home">
    <div class="home-pattern"></div>
    <div id="main-carousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#main-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#main-carousel" data-slide-to="1"></li>
            <li data-target="#main-carousel" data-slide-to="2"></li>
        </ol><!--/.carousel-indicators-->
        <div class="carousel-inner">
            <div class="item active" style="background-image: url(images/slider/slide3.jpg)">
                <div class="carousel-caption">
                    <div>
                        <h2 class="heading animated bounceInDown">'Himu' Onepage HTML Template</h2>
                        <p class="animated bounceInUp">Fully Professional one page template</p>
                        <a class="btn btn-default slider-btn animated fadeIn" href="#">Get Started</a>
                    </div>
                </div>
            </div>
            <div class="item" style="background-image: url(images/slider/slide2.jpg)">
                <div class="carousel-caption"> <div>
                    <h2 class="heading animated bounceInDown">Get All in Onepage</h2>
                    <p class="animated bounceInUp">Everything is outstanding </p> <a class="btn btn-default slider-btn animated fadeIn" href="#">Get Started</a>
                </div>
                </div>
            </div>
            <div class="item" style="background-image: url(images/slider/slide1.jpg)">
                <div class="carousel-caption">
                    <div>
                        <h2 class="heading animated bounceInRight">Fully Responsive Template</h2>
                        <p class="animated bounceInLeft">100% Responsive HTML template</p>
                        <a class="btn btn-default slider-btn animated bounceInUp" href="#">Get Started</a>
                    </div>
                </div>
            </div>
        </div><!--/.carousel-inner-->

        <a class="carousel-left member-carousel-control hidden-xs" href="#main-carousel" data-slide="prev"><i class="fa fa-angle-left"></i></a>
        <a class="carousel-right member-carousel-control hidden-xs" href="#main-carousel" data-slide="next"><i class="fa fa-angle-right"></i></a>
    </div>

</section><!--/#home-->


<section id="blog">
    <div class="container">
        <div class="row text-center clearfix">
            <div class="col-sm-8 col-sm-offset-2">
                <h2 class="title-one">Our Blog</h2>
                <p class="blog-heading">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
            </div>
        </div>
        <div class="row">


                <c:forEach items="${list}" var="post">

                    <div class="col-sm-4">
                        <div class="single-blog">
                            <img src="images/blog/1.jpg" alt="" />
                            <h2>${post.title}</h2>
                            <ul class="post-meta">
                                <li><i class="fa fa-pencil-square-o"></i><strong> Posted By:</strong>${post.author} </li>
                                <li><i class="fa fa-clock-o"></i><strong> Posted On:</strong> ${post.createDate}</li>
                            </ul>
                            <div class="blog-content">
                                <p>${post.content}</p>
                            </div>
                            <a href="" class="btn btn-primary" data-toggle="modal" data-target="#blog-detail">Read More</a>
                        </div>
                        <div class="modal fade" id="blog-detail" tabindex="-1" role="dialog" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-body">
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        <img src="images/blog/3.jpg" alt="" />
                                        <h2>${post.title}</h2>
                                        <p>${post.content}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
        </div>
    </div>
</section> <!--/#blog-->

<section id="contact">
    <div class="container">
        <div class="row text-center clearfix">
            <div class="col-sm-8 col-sm-offset-2">
                <div class="contact-heading">
                    <h2 class="title-one">Contact With Us</h2>
                    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</p>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="contact-details">
            <div class="pattern"></div>
            <div class="row text-center clearfix">
                <div class="col-sm-6">
                    <div class="contact-address"><address><p><span>Devs</span>Cluster</p><strong>36 North Kafrul<br>Dhaka Cantonment Area<br> Dhaka-1206, Bangladesh</strong><br><small>( Lorem ipsum dolor sit amet, consectetuer adipiscing elit )</small></address>
                        <div class="social-icons">
                            <a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-google-plus"></i></a><a href="#"><i class="fa fa-dribbble"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div id="contact-form-section">
                        <div class="status alert alert-success" style="display: none"></div>
                        <form id="contact-form" class="contact" name="contact-form" method="post" action="send-mail.php">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control name-field" required="required" placeholder="Your Name"></div>
                            <div class="form-group">
                                <input type="email" name="email" class="form-control mail-field" required="required" placeholder="Your Email">
                            </div>
                            <div class="form-group">
                                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Message"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Send</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> <!--/#contact-->

<footer id="footer">
    <div class="container">
        <div class="text-center">
            <p>Copyright &copy; 2017 -  xiong </p> </div>
    </div>
</footer> <!--/#footer-->

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/smoothscroll.js"></script>
<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/jquery.parallax.js"></script>
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>