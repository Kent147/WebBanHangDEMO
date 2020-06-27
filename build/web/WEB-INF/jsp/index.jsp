<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                <li><a href="index.htm" style="color: white"><span class="glyphicon glyphicon-home"></span> Trang chủ</a></li>
                                <li><a href="" style="color: white"><span class="glyphicon glyphicon-th-list"></span> Giới thiệu</a></li>
                                <li><a href="" style="color: white"><span class="glyphicon glyphicon-earphone"></span> Liên hệ</a></li>
                                <li><a href="" style="color: white"><span class="glyphicon glyphicon-envelope"></span> Góp ý</a></li>
                                <li><a href="" style="color: white"><span class="glyphicon glyphicon-question-sign"></span> Hỏi đáp</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white"><span class="glyphicon glyphicon-user"></span> Tài khoản <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="login.htm">Đăng nhập</a></li>
                                        <li><a href="password.htm">Quên mật khẩu</a></li>
                                        <li><a href="register.htm">Đăng ký thành viên</a></li>
                                        <li class="divider"></li>
                                        <li><a href="">Đăng xuất</a></li>
                                        <li><a href="password.htm">Đổi mật khẩu</a></li>
                                        <li><a href="info.htm">Cập nhật hồ sơ</a></li>
                                        <li class="divider"></li>
                                        <li><a href="">Đơn hàng</a></li>
                                        <li><a href="">Hàng đã mua</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <!--Search-->
                            <form class="navbar-form navbar-left" method="post " action="/Product/Search">
                                <div class="form-group">
                                    <input placeholder="Search" name="Search" data-validate="Enter Products" class="form-control " />
                                </div>
                            </form>
                            <!--/Search-->

                            <!--CartInfo-->
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href=""><span class="glyphicon glyphicon-briefcase"></span> Cart</a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                                <li><a href=""></a></li>
                            </ul>
                            <!--/CartInfo-->
                        </div>
                        <!--Menu-->
                    </div>
                </div>
            </nav>
            <div class="poly-sheet row">

                <article class="col-sm-9">
                    <!--Nội dung trang web-->
                    <c:forEach var="pd" items="${products}">
                        <div ng-controller="myctrl">
                            <div class="col-md-6">
                                <div class="panel panel-default text-center">
                                    <div class="panel-body"><img style="height: 150px; max-width:95%;" src="images/products/${pd.img}"></div>
                                    <div class="panel-heading"><p>${pd.name_pd}<p> ${pd.id_pd} <p>Giá : ${pd.cost_pd} VND<p> <br> 
                                            <a href="?deleteProducts&id=${pd.id_pd}" class="btn btn-danger"> Delete</a> 
                                            <button class="btn btn-info" data-toggle="modal" data-target="#myModal">Update</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </article>

                <aside class="col-sm-3 ">
                    <!--Category-->
                    <div class="panel panel-default ">
                        <div class="panel-heading " style="background-color: orange; opacity: 80%">
                            <span class="glyphicon glyphicon-th-list "></span>
                            <strong>Thêm Sản Phẩm</strong>
                        </div>

                        <div class="panel panel-body">
                            <form class="form-group" action="index.htm" modelAttribute="pd" method="POST">
                                <div class="form-group">
                                    <input class="form-control" type="text" name="name_pd" placeholder="Name Products">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="text" name="cost_pd" placeholder="Cost Products">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="text" name="info" placeholder="Info Products">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="text" name="id_pd" placeholder="Id">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" type="file" name="img">
                                </div>
                                ${loi}
                                <div class="container-login100-form-btn">
                                    <input type="submit" name="insertProducts" value="Save" class="btn btn-info" id="color" style="width: 100%"/>
                                </div>     
                            </form>
                        </div>
                    </div>
                    <!--/Category-->

                    <!--Supplier-->
                    <div class="panel panel-default ">

                        <div class="panel-heading " style="background-color: orange; opacity: 80%">
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
                        <div class="panel-heading " style="background-color: orange; opacity: 80%">
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
                    <p>Made By Kent &copy; 2020. All rights reserved.</p>
                </div>
            </footer>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modal Header</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-group" action="index.htm" modelAttribute="pd" method="POST">
                                <div class="form-group">
                                    <input class="form-control" type="tel" name="id_pd" placeholder="Id">
                                </div>
                            <div class="form-group">
                                <input class="form-control" type="text" name="name_pd" placeholder="Name Products">
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="text" name="cost_pd" placeholder="Cost Products">
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="text" name="info" placeholder="Info Products">
                            </div>
                            <div class="form-group">
                                <input class="form-control" type="file" name="img">
                            </div>
                            ${loi}
                            <div class="container-login100-form-btn">
                                <input type="submit" name="updateProducts" value="Update" class="btn btn-info" id="color" style="width: 100%"/>
                            </div>     
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
