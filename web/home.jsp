
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="darkmode" data-theme="light">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Pre-Owned Car</title>
        <!--================= Bootstrap V5 CSS =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
        <!--================= Font Awesome 5 CSS =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/all.min.css" />
        <!--================= RT Icons CSS =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/rt-icons.css" />
        <!--================= Animate css =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/animate.min.css" />
        <!--================= Magnific popup Plugin =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/jquery.nstSlider.min.css" />
        <!--================= Magnific popup Plugin =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/magnific-popup.css" />
        <!--================= Swiper Slider Plugin =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/swiper-bundle.min.css" />
        <!--================= Mobile Menu CSS =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/metisMenu.css" />
        <!--================= Main Menu CSS =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/rtsmenu.css" />
        <!--================= Preloader CSS =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/preloader.css" />
        <!--================= Main Stylesheet =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/variables/variable6.css" />
        <!--================= Main Stylesheet =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/main.css" />
    </head>

    <body>
        <header id="rtsHeader">
            <div class="navbar-sticky">
                <div class="container">
                    <div class="navbar-part navbar-part1">
                        <div class="navbar-inner">
                            <div class="left-side">
                                <a href="" class="logo"><h1 class="path-title">Nhat's Car</h1></a>
                            </div>
                            <div class="rts-menu">
                                <nav class="menus menu-toggle">
                                    <ul class="nav__menu">
                                        <li><a class="menu-item" href="contact.html"></a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="header-action-items header-action-items1">
                                <a href="login.jsp" class="account"><i class="rt-user-2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <form action="HomeController">
                <div class="page-path">
                    <div class="container">
                        <div class="breadcrumbs-inner">
                            <a href="HomeController"><h1 class="path-title">Home</h1></a>      
                        </div>
                    </div>

                    <div class="container">
                        <div class="search-input-inner">
                            <div class="input-div">
                                <input style="background-color: white" name="search" value="${param.search}" id="searchInput1" class="search-input" type="text" placeholder="Search by keyword or #" />
                                <button type="submit"><i class="rt-search"></i></button>                           
                            </div>

                        </div>
                    </div>
                </div>
            </form>
        </header>
        <!--================= Header Section End Here =================-->

        <!--================= Shop Section Start Here =================-->
        <div class="rts-shop-section section-gap">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3">
                        <div class="side-sticky">
                            <div class="shop-side-action">
                                <div class="action-item">
                                    <div class="action-top">
                                        <a href="HomeController"><span class="action-title">Category</span></a>    
                                    </div>
                                    <c:forEach var="cate" items="${requestScope.CATE_LIST}">
                                        <div class="color-item">
                                            <a href="HomeController?cateid=${cate.madm}"><span class="color-name">${cate.tendm}</span></a>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-9">
                        <div class="products-area products-area3">
                            <div class="row justify-content-center">
                                <div>${requestScope.MESSAGE}</div>
                                <c:forEach var="product" items="${requestScope.PRODUCT_LIST}">
                                    <div class="col-xl-4 col-md-4 col-sm-6">
                                        <div class="product-item product-item2 element-item3 sidebar-left">
                                            <a href="DetailsProductController?id=${product.masp}" class="product-image">
                                                <img style="width: 338px;height: 338px" src="${product.hinhanh}" alt="product-image" />
                                            </a>
                                            <div class="bottom-content">
                                                <a href="" class="product-name">${product.tensp}</a>
                                                <div>
                                                    <span class="product-price">$${product.dongia}</span>
                                                </div>
                                                    <div  ${product.soluong > 10 ? '' : 'hidden'}>
                                                      <span class="product-price">chiet khau 10%</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--================= Shop Section Section End Here =================-->

        <!--================= Jquery latest version =================-->
        <script src="assets/js/vendors/jquery-3.6.0.min.js"></script>
        <!--================= Bootstrap latest version =================-->
        <script src="assets/js/vendors/bootstrap.min.js"></script>
        <!--================= Wow.js =================-->
        <script src="assets/js/vendors/wow.min.js"></script>
        <!--================= Swiper Slider =================-->
        <script src="assets/js/vendors/swiper-bundle.min.js"></script>
        <!--================= Nice Select =================-->
        <script src="assets/js/vendors/jquery.nice-select.js"></script>
        <!--================= Swiper Slider =================-->
        <script src="assets/js/vendors/jquery.nstSlider.min.js"></script>
        <!--================= Swiper Slider =================-->
        <script src="assets/js/vendors/zoom.js"></script>
        <!--================= metisMenu Plugin =================-->
        <script src="assets/js/vendors/metisMenu.min.js"></script>
        <!--================= Main Menu Plugin =================-->
        <script src="assets/js/vendors/rtsmenu.js"></script>
        <!--================= Magnefic Popup Plugin =================-->
        <script src="assets/js/vendors/isotope.pkgd.min.js"></script>
        <!--================= Magnefic Popup Plugin =================-->
        <script src="assets/js/vendors/jquery.magnific-popup.min.js"></script>
        <!--================= Main Script =================-->
        <script src="assets/js/main.js"></script>
    </body>
</html>

