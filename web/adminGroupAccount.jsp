<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="darkmode" data-theme="light">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Admin</title>
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
                                <a href="HomeController" class="logo"><h1 class="path-title">Nhat's Car</h1></a>
                            </div>
                            <div class="rts-menu">
                                <nav class="menus menu-toggle">
                                    <ul class="nav__menu">
                                        <li><a class="menu-item" href="contact.html"></a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="page-path">
                <div class="container">
                    <div class="breadcrumbs-inner">
                        <h1 class="path-title">Admin</h1>
                    </div>
                </div>
            </div>
        </header>
        <!--================= Header Section End Here =================-->

        <!--================= Shop Section Start Here =================-->
        <div class="rts-shop-section section-gap">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3">
                        <div class="account-side-navigation">
                            <a href="ListProductController" class="filter-btn" data-show=".dashboard">Product</a>
                            <a href="ListCategoryController" class="filter-btn" data-show=".dashboard">Category</a>
                            <a href="ListAccountController" class="filter-btn" data-show=".dashboard">Account</a>
                            <a href="ListGroupAccountController" class="filter-btn active" data-show=".dashboard">Group Account</a>
                        </div>
                    </div>
                    <div class="col-xl-9">
                        <div class="">
                            <h2 class="mb--30">
                                My Group Account
                            </h2>
                            <a  href="createGroupAccount.jsp" class="btn btn-info">Add</a>
                            <table class="table">
                                <thead>
                                    <tr class="top-tr">
                                        <th>id</th>
                                        <th>description</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="ga" items="${requestScope.GROUPACCOUNT_LIST}">
                                    <form action="UpdateGroupAccountController" method="post">
                                        <tr>
                                            <td>#${ga.nhomtk}</td>
                                            <td><input type="text" name="mota" value="${ga.mota}" /> </td>
                                            <td>
                                                <input type="hidden" name="nhomtk" value="${ga.nhomtk}" />
                                                <button type="submit" class="btn-small d-block">Update</button>      
                                                <br>
                                                <a href="DeleteGroupAccountController?id=${ga.nhomtk}" class="btn-small d-block">Delete</a>
                                            </td>
                                        </tr>
                                    </form>
                                </c:forEach>
                                </tbody>
                            </table>
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
