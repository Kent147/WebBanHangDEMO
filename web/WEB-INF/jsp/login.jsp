<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <title>Login</title>
    </head>
    <body>
        <div class="limiter">
            <div class="container-login100" style="background-image: url('images/bg-01.jpg');">
                <div class="wrap-login100">
                    <form class="login100-form validate-form" action="login.htm" modelAttribute="user" method="POST">
                        <span class="login100-form-logo">
                            <i class="glyphicon glyphicon-user"></i>
                        </span>

                        <span class="login100-form-title p-b-34 p-t-27">
                            Login
                        </span>

                        <div class="wrap-input100 validate-input" data-validate="Enter username">
                            <input class="input100" type="text" name="username" placeholder="Username">
                            <span class="focus-input100" data-placeholder="►"></span>
                        </div>
                        <br/>${loi}
                        <div class="wrap-input100 validate-input" data-validate="Enter password">
                            <input class="input100" type="password" name="password" placeholder="Password">
                            <span class="focus-input100" data-placeholder="►"></span>

                        </div>
                        <br/>${loimk}
                        <div class="contact100-form-checkbox">
                            <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                            <label class="label-checkbox100" for="ckb1">
                                Remember me
                            </label>
                        </div>

                        <div class="container-login100-form-btn">
                            <input type="submit" value="Login" class="login100-form-btn"/>
                        </div>

                        <div class="text-center p-t-90">
                            <a class="txt1" href="#">
                                Forgot Password?
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div id="dropDownSelect1"></div>
    </body>
</html>
