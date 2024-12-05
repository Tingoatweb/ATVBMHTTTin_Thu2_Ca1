<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="util.FormatCurrency"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thanh toán</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <style>
        .product-list {
            list-style: none;
            padding: 0;
        }

        .product-list li {
            margin-bottom: 10px; /* Adjust spacing between list items */
        }

        .product-name {

        }


    </style>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<jsp:include page="navbar.jsp"/>
<jsp:useBean id="paymentDAO" class="database.PaymentDAO"/>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/hinhnen.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>Checkout</h2>
                    <div class="breadcrumb__option">
                        <a href="Index">Home</a>
                        <span>Checkout</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
    <div class="container">
        <c:choose>
            <c:when test="${empty sessionScope.userC and empty sessionScope.admin}">
                <div class="row">
                    <div class="col-lg-12">
                        <h6><span><i class="fa-solid fa-right-to-bracket"></i></span> Bạn đã đăng nhập chưa ? <a href="Login">Bấm vào đây </a> để đăng nhập hoặc đăng ký.
                        </h6>
                    </div>
                </div>
            </c:when>
        </c:choose>
        <div class="checkout__form">
            <h4>Chi tiết hóa đơn ${sessionScope.userC.userId}</h4>
            <form action="/CheckoutController" method="post">
                <div class="row">
                    <div class="col-lg-7 col-md-6">

                        <div class="checkout__input">
                            <label for="nameConsignee">Tên người nhận<span style="color: red">*</span></label>
                            <input type="text" id="nameConsignee" name="nameConsignee" required="required">
                        </div>
                        <div class="checkout__input">
                            <label for="address">Địa chỉ<span style="color: red">*</span></label>
                            <input type="text" id="address" name="address" required="required">
                        </div>
                        <div class="checkout__input">
                            <label for="phone">Số điện thoại<span style="color: red">*</span></label>
                            <input type="text" id="phone" name="phone" required="required">
                        </div>
                        <div class="checkout__input">
                            <label for="note">Ghi chú</label>
                            <input type="text" id="note" name="note" placeholder="Viết ghi chú bạn muốn nhắn với shop"></input>
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="checkout__order">
                            <h4>Your Order</h4>
                            <div class="checkout__order__products">Sản phẩm <span>Giá</span></div>

                            <ul>
                                <c:forEach var="p" items="${sessionScope.cart.cart_items}">
                                    <li class="product-name">${p.product.product_name}<span class="product-price">${FormatCurrency.formatCurrency(p.product.price)}</span></li>
                                    <c:set var="subtotal" value="${subtotal + (p.product.price * p.quantity)}" />
                                    <c:set var="total" value="${total + (p.product.price * p.quantity)}" />
                                </c:forEach>
                            </ul>
                            <div class="checkout__order__subtotal">Subtotal <span>${FormatCurrency.formatCurrency(subtotal)}</span></div>
                            <div class="checkout__order__total">Total <span>${FormatCurrency.formatCurrency(total)}</span></div>
                            <div class="checkout__input__checkbox" style="display: flex;">
                                <label for="payment" style="margin-left: -15px">Phương thức thanh toán</label>
                                <div style="margin-left: 20px; margin-top: -10px">
                                    <select name="payment" id="payment" title="Select Category">
                                        <c:forEach items="${paymentDAO.selectAll()}" var="c">
                                            <option value="${c.paymentId}">${c.paymentName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <button type="submit" class="site-btn">Đặt hàng</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<!-- Footer Section Begin -->
<footer class="footer spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__about__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                    <ul>
                        <li>Address: 60-49 Road 11378 New York</li>
                        <li>Phone: +65 11.188.888</li>
                        <li>Email: hello@colorlib.com</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                <div class="footer__widget">
                    <h6>Useful Links</h6>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">About Our Shop</a></li>
                        <li><a href="#">Secure Shopping</a></li>
                        <li><a href="#">Delivery infomation</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Our Sitemap</a></li>
                    </ul>
                    <ul>
                        <li><a href="#">Who We Are</a></li>
                        <li><a href="#">Our Services</a></li>
                        <li><a href="#">Projects</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Innovation</a></li>
                        <li><a href="#">Testimonials</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="footer__widget">
                    <h6>Join Our Newsletter Now</h6>
                    <p>Get E-mail updates about our latest shop and special offers.</p>
                    <form action="#">
                        <input type="text" placeholder="Enter your mail">
                        <button type="submit" class="site-btn">Subscribe</button>
                    </form>
                    <div class="footer__widget__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="footer__copyright">
                    <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>



</body>

</html>