<%-- 
    Document   : main
    Created on : Feb 2, 2023, 12:51:25 PM
    Author     : PHT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Cake Template">
        <meta name="keywords" content="Cake, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Cake Store</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
              rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
              rel="stylesheet">

        <!-- Css Styles -->

        <link rel="stylesheet" href="<c:url value="/css/bootstrap.min.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="/css/flaticon.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="/css/barfiller.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="/css/magnific-popup.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="/css/font-awesome.min.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="/css/elegant-icons.css" />.css" type="text/css">
        <link rel="stylesheet" href="<c:url value="/css/nice-select.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="/css/owl.carousel.min.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="/css/slicknav.min.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="/css/style.css" />" type="text/css">
        <link rel="stylesheet" href="<c:url value="/css/404.css" />" type="text/css">

    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Offcanvas Menu Begin -->
        <div class="offcanvas-menu-overlay"></div>
        <div class="offcanvas-menu-wrapper">
            <div class="offcanvas__cart">
                <div class="offcanvas__cart__links">
                    <a class="search-switch"><img src="<c:url value="/img/icon/search.png"/>" alt=""></a>
                    <a href=""><img src="<c:url value="/img/icon/heart.png"/>" alt=""></a>
                </div>
                <div class="offcanvas__cart__item">
                    <a href="<c:url value="/cart/cart.do"/>"><img src="<c:url value="/img/icon/cart.png"/>" alt=""></a>
                    <div class="cart__price">Cart: <span>$ ${sessionScope.cart.total-0}</span></div>
                </div>
            </div>
            <div class="offcanvas__logo">
                <a href="<c:url value="/cakestore/index.do"/>"><img src="<c:url value="/img/logo.png"/>" alt=""></a>
            </div>
            <div id="mobile-menu-wrap"></div>
            <div class="offcanvas__option">
                <ul>
                    <li style="text-transform: uppercase;">${param.currency!="vnd"?"usd":"vnd"} <span class="arrow_carrot-down"></span>
                        <ul>
                            <li>
                                <a href="<c:url value="/cakestore/index.do?currency=vnd"/>">VND</a>
                            </li>
                            <li>
                                <a href="<c:url value="/cakestore/index.do?currency=usd"/>">USD</a>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">Sign in</a> <span class="arrow_carrot-down"></span></li>
                </ul>
            </div>
        </div>
        <!-- Offcanvas Menu End -->

        <!-- Header Section Begin -->
        <header class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="header__top__inner">
                                <div class="header__top__left">
                                    <ul>
                                        <li style="text-transform: uppercase;">${param.currency!="vnd"?"usd":"vnd"} </span>
                                            <ul>
                                                <li>
                                                    <a href="<c:url value="/cakestore/index.do?currency=vnd"/>" style="color: white">VND</a>
                                                </li>
                                                <li>
                                                    <a href="<c:url value="/cakestore/index.do?currency=usd"/>" style="color: white">USD</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <c:if test="${user == null}">
                                            <li><a href="<c:url value="/user/login.do" />">SIGN IN</a><span class="arrow_carrot-down"></span></li>
                                            </c:if>
                                            <c:if test="${user != null}">
                                            <li><a>Welcome ${user.name} !</a></li>
                                            <li><a href="<c:url value="/user/logout.do" />">LOG OUT</a></span></li>
                                            <li><a href="<c:url value="/admin/index.do" />">${user.roleId=="Admin"?"MANAGER":""}</a></li>
                                            </c:if>


                                    </ul>
                                </div>
                                <div class="header__logo">
                                    <a href="<c:url value="/cakestore/index.do"/>"><img src="<c:url value="/img/logo.png" />" alt=""></a>
                                </div>
                                <div class="header__top__right">
                                    <div class="header__top__right__links">
                                        <a href="#" class="search-switch"><img src="<c:url value="/img/icon/search.png"/>" alt=""></a>
                                        <a href="#"><img src="<c:url value="/img/icon/heart.png"/>" alt=""></a>
                                    </div>
                                    <div class="header__top__right__cart">
                                        <a href="<c:url value="/cart/cart.do"/>"><img src="<c:url value="/img/icon/cart.png"/>" alt=""></a>
                                        <div class="cart__price">Cart: <span>$ ${sessionScope.cart.total}</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="canvas__open"><i class="fa fa-bars"></i></div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="<c:url value="/cakestore/index.do"/>">Home</a></li>
                                <li><a href="<c:url value="/cakestore/about.do"/>">About</a></li>
                                <li><a href="<c:url value="/shop/shop.do?index=1&currency=${param.currency!="vnd"?"usd":"vnd"}"/>">Shop</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="<c:url value="/cart/cart.do"/>">Shoping Cart</a></li>
                                        <li><a href="./wisslist.html">Wisslist</a></li>
                                        <li><a href="<c:url value="/cakestore/class.do"/>">Class</a></li>
                                    </ul>
                                </li>
                                <li><a href="<c:url value="/cakestore/blog.do"/>">Blog</a></li>
                                <li><a href="<c:url value="/cakestore/contact.do"/>">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header Section End -->

        <div class="row">
            <div class="col">
                <jsp:include page="/WEB-INF/views/${controller}/${action}.jsp" />
            </div>
        </div>

        <!-- Footer Section Begin -->
        <footer class="footer set-bg" data-setbg="<c:url value="/img/footer-bg.jpg"/>">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="footer__widget">
                            <h6>WORKING HOURS</h6>
                            <ul>
                                <li>Monday - Friday: 08:00 am – 08:30 pm</li>
                                <li>Saturday: 10:00 am – 16:30 pm</li>
                                <li>Sunday: 10:00 am – 16:30 pm</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="footer__about">
                            <div class="footer__logo">
                                <a href="#"><img src="<c:url value="/img/footer-logo.png" />" alt=""></a>
                            </div>
                            <p>Our cake store is a true haven for dessert lovers. As soon as you step inside, the sweet aroma of freshly baked cakes and pastries will fill your senses and make your mouth water. </p>
                            <div class="footer__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-youtube-play"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="footer__newslatter">
                            <h6>Subscribe</h6>
                            <p>Get latest updates and offers.</p>
                            <form action="<c:url value="/subscribe/subscribe.do" />"  method="post">
                                <input type="email" id="email" name="email" placeholder="Email">
                                <button type="submit" value="Subscribe"><i class="fa fa-send-o"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7">
                            <p class="copyright__text text-white">
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://daihoc.fpt.edu.vn/" target="_blank">FPT Student</a>
                            </p>
                        </div>
                        <div class="col-lg-5">
                            <div class="copyright__widget">
                                <ul>
                                    <li><a href="#">Privacy Policy</a></li>
                                    <li><a href="#">Terms & Conditions</a></li>
                                    <li><a href="https://www.google.com/maps/dir//fpt+hcm+map/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x31752731176b07b1:0xb752b24b379bae5e?sa=X&ved=2ahUKEwjvtM-Dx-L9AhVYTWwGHQ6bBtQQ9Rd6BAhYEAU">Site Map</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Search Begin -->
        <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch">+</div>
                <form class="search-model-form" action="<c:url value="/shop/shop.do"/>" method="get">
                    <input type="text" name="search" id="search-input" placeholder="Search here.....">      
                    <input type="hidden" name="category">        
                    <input type="hidden" name="index" value="1"> 
                    <input type="hidden" name="currency" value="${param.currency!="vnd"?"usd":"vnd"}">
                </form>
            </div>
        </div>
        <!-- Search End -->

        <!-- Js Plugins -->
        <script src="<c:url value="/js/jquery-3.3.1.min.js" />"></script>
        <script src="<c:url value="/js/bootstrap.min.js" />"></script>
        <script src="<c:url value="/js/jquery.nice-select.min.js" />"></script>
        <script src="<c:url value="/js/jquery.barfiller.js" />"></script>
        <script src="<c:url value="/js/jquery.magnific-popup.min.js" />"></script>
        <script src="<c:url value="/js/jquery.slicknav.js" />"></script>
        <script src="<c:url value="/js/owl.carousel.min.js" />"></script>
        <script src="<c:url value="/js/jquery.nicescroll.min.js" />"></script>
        <script src="<c:url value="/js/main.js" />"></script>
        <script src="<c:url value="/js/login.js" />"></script>
        <script src="<c:url value="/js/cart.js" />"></script>
    </body>
</html>
