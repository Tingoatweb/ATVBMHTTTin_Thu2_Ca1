<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Forget password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="css/styleforlogin.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <link rel="icon" type="image/png" size="50" href="img/icons8-book-64.png">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 col-md-6 form-container">
            <div class="col-lg-8 col-md-12 col-sm-9 col-xs-12 form-box">

                <div class="reset-form d-block">
                    <form class="reset-password-form" action="ForgotPassword" method="post">
                        <h4 class="mb-3">Cấp lại mật khẩu cho bạn</h4>
                        <p>Thực hiện việc thay đổi mật khẩu theo 3 bước sau. Điều này sẽ giúp bạn bảo mật an toàn mật
                            khẩu</p>
                        <ol class="list-unstyled">
                            <li><span>1. </span>Nhập địa chỉ email của bạn</li>
                            <li><span>2. </span>Hệ thống của chúng tôi sẽ gửi mã OTP tới email của bạn</li>
                            <li><span>3. </span>Nhập mã OTP bạn nhận được</li>
                        </ol>
                        <div class="form-input">
                            <span><i class="fa fa-envelope"></i></span>
                            <input name="emailForget" type="email" placeholder="Email Address" required>
                        </div>
                        <div class="mb-6">
                            <button type="submit" class="btn">Gửi mã OTP</button>
                            <button onclick="event.preventDefault(); window.location.href='./Login';"
                                    class="btn btn-success">Quay lại
                            </button>

                        </div>
                    </form>
                </div>
                <%--                <div class="reset-confirmation d-none">--%>
                <%--                    <div class="mb-4">--%>
                <%--                        <h4 class="mb-3">Link was sent</h4>--%>
                <%--                        <h6 class="text-white">Please, check your inbox</h6>--%>
                <%--                    </div>--%>
                <%--                    <div>--%>
                <%--                        <a href="logintwo.jsp">--%>
                <%--                            <button type="submit" class="btn">Login Now</button>--%>
                <%--                        </a>--%>
                <%--                    </div>--%>
                <%--                </div>--%>
            </div>
        </div>

        <div class="col-lg-6 col-md-6 d-none d-md-block image-container"></div>
    </div>
</div>

<%--<script type="text/javascript">--%>
<%--    function PasswordReset() {--%>
<%--        $('form.reset-password-form').on('submit', function (e) {--%>
<%--            e.preventDefault();--%>
<%--            $('.reset-form')--%>
<%--                .removeClass('d-block')--%>
<%--                .addClass('d-none');--%>
<%--            $('.reset-confirmation').addClass('d-block');--%>
<%--        });--%>
<%--    }--%>

<%--    window.addEventListener('load', function () {--%>
<%--        PasswordReset();--%>
<%--    });--%>
<%--</script>--%>
</body>
</html>
