<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <meta charset="utf-8">
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
            <div class="col-lg-8 col-md-12 col-sm-9 col-xs-12 form-box text-center">
                <div class="logoforlogin">
                    <div class="thumbnail"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/169963/hat.svg"
                                                width="150px" height="150px"></div>
                </div>
                <div class="heading mb-3">
                    <h4>Tạo tài khoản cho bạn</h4>
                </div>
                <div style="text-align: center;color: red" class="red" id="baoLoi1">${errorBean1.getError()}</div>
                <div style="text-align: center;color: red" class="red" id="baoLoi2">${errorBean2.getError()} </div>
                <div style="text-align: center;color: red" class="red" id="baoLoi3">${errorBean3.getError()} </div>

                <form action="RegisterForm" method="post">
                    <div class="form-input">
                        <span><i class="fa fa-user"></i></span>
                        <input name="usernamere" type="text" placeholder="Tên tài khoản" required>
                    </div>
                    <div class="form-input">
                        <span><i class="fa fa-user"></i></span>
                        <input name="namere" type="text" placeholder="Tên" required>
                    </div>
                    <div class="form-input">
                        <span><i class="fa fa-envelope"></i></span>
                        <input name="emailre" type="email" placeholder="Địa chỉ email" required>
                    </div>
                    <div class="form-input">
                        <span><i class="fa fa-lock"></i></span>
                        <input name="passwordre" type="password" placeholder="Mật khẩu" required>
                    </div>
                    <div class="form-input">
                        <span><i class="fa fa-lock"></i></span>
                        <input name="enterThePasswordre" type="password" placeholder="Nhập lại mật khẩu" required>
                    </div>
                    <div class="row mb-3">
                        <div class="col-12 d-flex">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="cb1">
                                <label class="custom-control-label text-white" for="cb1">I agree all terms &
                                    conditions</label>
                            </div>
                        </div>
                    </div>
                    <div class="text-left mb-3">
                        <button type="submit" class="btn">Register</button>
                    </div>
                    <div class="text-white mb-3">or register with</div>
                    <div class="row mb-3">
                        <div class="col-4">
                            <a href="" class="btn btn-block btn-social btn-facebook">
                                <i class="fa fa-facebook"></i>
                            </a>
                        </div>
                        <div class="col-4">
                            <a href="" class="btn btn-block btn-social btn-google">
                                <i class="fa fa-google"></i>
                            </a>
                        </div>
                        <div class="col-4">
                            <a href="" class="btn btn-block btn-social btn-twitter">
                                <i class="fa fa-twitter"></i>
                            </a>
                        </div>
                    </div>
                    <div class="text-white">Already have an account?
                        <a href="./Login" class="login-link">Login here</a>
                    </div>
                </form>
            </div>
        </div>

        <div class="col-lg-6 col-md-6 d-none d-md-block image-container"></div>
    </div>
</div>
</body>
</html>