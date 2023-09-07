<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="darkmode" data-theme="light">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Details</title>
        <!--================= Bootstrap V5 CSS =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
        <!--================= Font Awesome 5 CSS =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/all.min.css" />
        <!--================= RT Icons CSS =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/rt-icons.css" />
        <!--================= Animate css =================-->
        <link rel="stylesheet" type="text/css" href="assets/css/animate.min.css" />
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
        <!--================= Header Section Start Here =================-->
        <header id="rtsHeader">
            <div class="navbar-sticky">
                <div class="container">
                    <div class="navbar-part navbar-part1">
                        <div class="navbar-inner">
                            <div class="left-side">
                                <h1 class="path-title">Nhat's Car</h1>
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

            <div class="page-path">
                <div class="container">
                    <div class="breadcrumbs-inner">
                        <h1 class="path-title">Product</h1>
                    </div>
                </div>
            </div>
        </header>
        <!--================= Header Section End Here =================-->




        <!--================= Product-details Section Start Here =================-->
        <div class="rts-product-details-section section-gap">
            <div class="container">
                <div class="details-product-area mb--70">
                    <div class="product-thumb-area">
                        <img style="width: 440px;height: 500px" src="${PRODUCT.hinhanh}" alt="product-thumb" />
                    </div>
                    <div class="contents">
                        <div class="product-status">
                            <span class="product-catagory">${PRODUCT.masp}</span>
                        </div>
                        <h2 class="product-title">${PRODUCT.tensp}</h2>
                        <span class="product-price">$${PRODUCT.dongia}</span>
                        <p>
                            ${PRODUCT.mota}
                        </p>
                        <div class="product-uniques">
                            <span class="sku product-unipue"><span>Quantity: </span> ${PRODUCT.soluong}</span>
                            <span class="catagorys product-unipue"><span>Categories: </span> ${PRODUCT.madm}</span>
                        </div>
                        <div class="product-bottom-action">
                            <a href="HomeController" class="addto-cart-btn action-item">Back</a>
                        </div>
                    </div>

                </div>
                <div class="product-full-details-area">
                    <div class="full-details dls-one filterd-items">
                        <div class="full-details-inner"></div>
                    </div>
                </div>
            </div>
        </div>
        <!--================= Product-details Section End Here =================-->
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

