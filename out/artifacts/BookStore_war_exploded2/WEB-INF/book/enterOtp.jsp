<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Nhập mã OTP</title>
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
                    <form class="reset-password-form" action="ValidateOtp" method="post">
                        <h4 class="mb-3">Nhập mã OTP</h4>
                        <p class="mb-3 text-white">
                            Nhập mã OTP chúng tôi đã gửi qua mail của bạn
                        </p>
                        <div class="form-input">
                            <span><i class="fa fa-envelope"></i></span>
                            <input name="otp" type="text" placeholder="Mã OTP" required>
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn">Cấp lại mật khẩu</button>
                        </div>
                    </form>
                </div>

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