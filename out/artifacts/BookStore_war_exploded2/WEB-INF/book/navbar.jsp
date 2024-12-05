<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page isELIgnored="false" %>


<!DOCTYPE html>
<nav>
    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>
                <li><a href="#"><i class="fa fa-heart"></i> <span>2</span></a></li>
                <li><a href="#"><i class="fa fa-shopping-bag"></i> </a></li>
            </ul>
            <div class="header__cart__price">item: <span>$150.00</span></div>
        </div>
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <c:choose>
            <c:when test="${not empty sessionScope.userC.name}">
                <p style="position:relative;top:8px">Chào ${sessionScope.userC.name}/<a href="LogOutForm"
                                                                                        style="text-decoration:none">LogOut</a>
                </p>
            </c:when>
            <c:otherwise>
            <div class="header__top__right__auth">
                <a href="./Login"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        </c:otherwise>
        </c:choose>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./Index">Home</a></li>
                <li><a href="./Shopgrid">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./Shop details">Shop Details</a></li>
                        <li><a href="./Cart">Shoping Cart</a></li>
                        <li><a href="./Checkout">Check Out</a></li>
                        <li><a href="./Blog details">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="./Blog">Blog</a></li>
                <li><a href="./contact.jsp">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
</nav>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header" style="position: fixed;z-index: 999;;background:white;top:0;width: 100%">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                            <li>Free Shipping for all Order of $99</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <%--                            <div class="header__top__right__language">--%>
                        <%--                                <img src="img/language.png" alt="">--%>
                        <%--                                <div>English</div>--%>
                        <%--                                <span class="arrow_carrot-down"></span>--%>
                        <%--                                <ul>--%>
                        <%--                                    <li><a href="#">Spanis</a></li>--%>
                        <%--                                    <li><a href="#">English</a></li>--%>
                        <%--                                </ul>--%>
                        <%--                            </div>--%>

                        <%--                            <li style="padding-left: 5px; padding-top: 10px; margin: 0px;"--%>
                        <%--                                class="nav-item dropdown"><a class="nav-icon-hover"--%>
                        <%--                                                             href="javascript:void(0)" id="drop2"--%>
                        <%--                                                             data-bs-toggle="dropdown"--%>
                        <%--                                                             aria-expanded="false"> <img--%>
                        <%--                                    style="margin-left: 40px; margin-top: 20px" src="images/cool.png"--%>
                        <%--                                    alt="" width="35" height="35" class="rounded-circle">--%>
                        <c:choose>
                        <c:when test="${not empty sessionScope.userC.name}">
                            <div class="header__top__right__auth">

                                Chào, ${sessionScope.userC.name}

                                <div class="header__top__right__language">
                                    <img
                                            style="margin-left: 40px" src="img/blog/blog-1.jpg"
                                            alt="" width="35" height="35" class="rounded-circle">
                                    <span class="arrow_carrot-down"></span>
                                    <ul>
                                        <li><a href="./Profile">Hồ sơ của tôi</a></li>
                                        <li><a href="./ChangePass">Thay đổi mật khẩu</a></li>
                                        <li><a href="./ChangeInf">Thay đổi thông tin</a></li>
                                        <li><a href="./Register">Trợ giúp</a></li>
                                        <li><a href="./ForgotPass">Đơn đặt hàng</a></li>
                                        <li><a href="./Logout">Đăng xuất</a></li>
                                    </ul>
                                </div>
                            </div>
                        </c:when>
                        <c:otherwise>
                        <div class="header__top__right__language">

                            <div>Đăng nhập</div>
                            <span class="arrow_carrot-down"></span>
                            <ul>
                                <li><a href="./Login">Đăng nhập</a></li>
                                <li><a href="./Register">Đăng kí</a></li>
                                <li><a href="./ForgotPass">Quên mật khẩu</a></li>
                            </ul>
                        </div>
                    </div>
                    </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="index.jsp"><img src="img/logobook.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="./Index">Home</a></li>
                        <li><a href="./Shopgrid">Shop</a></li>
                        <li><a href="#">Pages</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="./Shopdetails">Shop Details</a></li>
                                <li><a href="./Shoppingcart">Shoping Cart</a></li>
                                <li><a href="./Checkout">Check Out</a></li>
                                <li><a href="./AdminIndex">Blog Details</a></li>
                            </ul>
                        </li>
                        <li><a href="./Blog">Blog</a></li>
                        <li><a href="./Contact">Contact</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>2</span></a></li>
                        <li>
                            <a href="Shoppingcart">
                                <i class="fa fa-shopping-bag"></i>
                                <span>${empty sessionScope.cart ? '0' : sessionScope.cart.calculateTotalQuantity()}</span>
                            </a>
                        </li>
                    </ul>
                    <div class="header__cart__price">item: <span>$150.00</span></div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>

<%--    <div>--%>
<%--        <ul class="navbar-nav w-100">--%>
<%--            <li class="nav-item w-100">--%>
<%--                <form action="${pageContext.request.contextPath}/search"--%>
<%--                      class="nav-link mt-2 mt-md-0 d-none d-lg-flex search">--%>
<%--                    <input type="text" id="productName" name="productName"--%>
<%--                           class="form-control-search"--%>
<%--                           placeholder="search"/>">--%>
<%--                    <button type="submit" class="button-search">--%>
<%--                        <img src="/image/icons8-find-30.png" alt="Search">--%>
<%--                    </button>--%>
<%--                </form>--%>


<%--            </li>--%>
<%--        </ul>--%>
<%--    </div>--%>
</header>
<!-- Header Section End -->

<!-- Hero Section Begin -->
<<<<<<< HEAD
<!-- Hero Section Begin -->
=======
>>>>>>> d4bd9b9c1b416c700a6b6beb0ff8c148d913894d
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>All departments</span>
                    </div>
                    <ul>
                        <li><a href="#">Fresh Meat</a></li>
                        <li><a href="#">Vegetables</a></li>
                        <li><a href="#">Fruit & Nut Gifts</a></li>
                        <li><a href="#">Fresh Berries</a></li>
                        <li><a href="#">Ocean Foods</a></li>
                        <li><a href="#">Butter & Eggs</a></li>
                        <li><a href="#">Fastfood</a></li>
                        <li><a href="#">Fresh Onion</a></li>
                        <li><a href="#">Papayaya & Crisps</a></li>
                        <li><a href="#">Oatmeal</a></li>
                        <li><a href="#">Fresh Bananas</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="/search">
                            <div class="hero__search__categories">
                                All Categories
                                <span class="arrow_carrot-down"></span>
                            </div>
                            <input type="text" id="productName" name="productName" placeholder="What do yo u need?">
                            <button type="submit" class="site-btn">SEARCH</button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+65 11.188.888</h5>
                            <span>support 24/7 time</span>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- Hero Section End -->
</nav>

