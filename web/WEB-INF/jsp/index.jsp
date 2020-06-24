<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOP DEMO</title>
        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>
        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet" />
        <script src="js/bootstrap.min.js"></script>
        <link href="css/headerfont.css" rel="stylesheet"/>
        <link href="css/color.min.css" rel="stylesheet" />
    </head>

    <body>
        <div class="container">
            <header class="row" id="color" style="height: 150px;">
                <div class="container">
                    <div class="shopping-mall" style="position: absolute; left: 500px; top: 40px">
                        <h1>Online shopping DEMO</h1>
                        <h5>The center point of the professional programming</h5>
                    </div>
                    <img class="pull-left" style="height: 150px;" src="images/header-object.png" />
                </div> 
            </header>
            <nav class="row">
                <div class="navbar navbar-inverse" style="top: auto">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="navbar-collapse collapse">
                        <!--Menu-->
                        <div class="container">
                            <ul class="nav navbar-nav">
                                <li><a href="" style="color: white"><span class="glyphicon glyphicon-home"></span> Trang chủ</a></li>
                                <li><a href="" style="color: white"><span class="glyphicon glyphicon-th-list"></span> Giới thiệu</a></li>
                                <li><a href="" style="color: white"><span class="glyphicon glyphicon-earphone"></span> Liên hệ</a></li>
                                <li><a href="" style="color: white"><span class="glyphicon glyphicon-envelope"></span> Góp ý</a></li>
                                <li><a href="" style="color: white"><span class="glyphicon glyphicon-question-sign"></span> Hỏi đáp</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white"><span class="glyphicon glyphicon-user"></span> Tài khoản <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="login.htm">Đăng nhập</a></li>
                                        <li><a href="">Quên mật khẩu</a></li>
                                        <li><a href="">Đăng ký thành viên</a></li>
                                        <li class="divider"></li>
                                        <li><a href="">Đăng xuất</a></li>
                                        <li><a href="">Đổi mật khẩu</a></li>
                                        <li><a href="">Cập nhật hồ sơ</a></li>
                                        <li class="divider"></li>
                                        <li><a href="">Đơn hàng</a></li>
                                        <li><a href="">Hàng đã mua</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>

                        <!--Menu-->
                    </div>
                </div>
            </nav>
            <div class="poly-sheet row">

                <article class="col-sm-9">
                    <!--Nội dung trang web-->

                </article>

                <aside class="col-sm-3 ">
                    <!--CartInfo-->
                    <div class="poly-cart ">
                        <div class="panel panel-default ">
                            <div class="panel-body ">
                                <img class="col-sm-5 " src="images/shoppingcart.gif " />
                                <ul class="col-sm-7 ">
                                    <li>100 items</li>
                                    <li>$ 56.8</li>
                                    <li><a href=" ">View Cart</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!--/CartInfo-->

                    <!--Search-->
                    <div class="nn-cart ">
                        <div class="panel panel-default ">
                            <div class="panel-body ">
                                <form method="post " action="/Product/Search ">
                                    <input placeholder="Keywords " name="Keywords " class="form-control " />
                                </form>
                            </div>
                        </div>
                    </div>
                    <!--/Search-->

                    <!--Category-->
                    <div class="panel panel-default ">
                        <div class="panel-heading ">
                            <span class="glyphicon glyphicon-th-list "></span>
                            <strong>Chủng loại</strong>
                        </div>

                        <div class="list-group ">
                            <a href="# " class="list-group-item ">Điện thoại di động</a>
                        </div>
                    </div>
                    <!--/Category-->

                    <!--Supplier-->
                    <div class="panel panel-default ">

                        <div class="panel-heading ">
                            <span class="glyphicon glyphicon-list-alt "></span>
                            <strong>Nhà cung cấp</strong>
                        </div>

                        <div class="list-group ">
                            <a href="# " class="list-group-item ">Apple</a>
                        </div>
                    </div>
                    <!--/Supplier-->

                    <!--Special-->
                    <div class="panel panel-default ">
                        <div class="panel-heading ">
                            <span class="glyphicon glyphicon-star-empty "></span>
                            <strong>Hàng đặc biệt</strong>
                        </div>

                        <div class="list-group ">
                            <a href="# " class="list-group-item ">Hàng bán chạy</a>
                            <a href="# " class="list-group-item ">Hàng mới</a>
                            <a href="# " class="list-group-item ">Hàng giảm giá</a>
                            <a href="# " class="list-group-item ">Hàng đặc biệt</a>
                            <a href="# " class="list-group-item ">Hàng xem nhiều</a>
                        </div>
                    </div>
                    <!--/Special-->

                </aside>
            </div>

            <footer class="panel panel-default">
                <div class="panel-heading text-center " id="color">
                    <p>FPT Polytechnic &copy; 2017. All rights reserved.</p>
                </div>
            </footer>
        </div>
    </body>
</html>
