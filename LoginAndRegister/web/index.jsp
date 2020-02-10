<%@page import="Module.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Demo đăng nhập</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<body background="tai.jpg">

<nav class="navbar navbar-inverse " >
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Welcome
<%--        <%--%>
<%--        KhachHang kh =(KhachHang) session.getAttribute("user");--%>
<%--        if(kh!=null){--%>
<%--          out.print(kh.getName());--%>
<%--        }--%>
<%--      %>--%>
      </a>




    </div>
<%--    <ul class="nav navbar-nav">--%>
<%--      <li class="active"><a href="#">Trang chủ</a></li>--%>
<%--      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Công Cụ <span class="caret"></span></a>--%>
<%--        <ul class="dropdown-menu">--%>
<%--          <li><a href="TienLuong.jsp">Xem Tiền Lương</a></li>--%>
<%--          <li><a href="#">Page 1-2</a></li>--%>
<%--          <li><a href="#">Page 1-3</a></li>--%>
<%--        </ul>--%>
<%--      </li>--%>
<%--      <li><a href="#">Page 2</a></li>--%>
<%--    </ul>--%>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="DangKy.jsp"><span class="glyphicon glyphicon-user"></span> Đăng kí</a></li>
      <li><a href="DangNhap.jsp"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
<%--      <li><a href="DangXuat"><span class="glyphicon glyphicon-user"></span> Đăng xuất</a></li>--%>
    </ul>
  </div>
</nav>

<div class="container">
  <marquee direction="left" behavior="slide" scrollamount="50">
  <span style="text-align: center ;color: white"><h3>Xin chào các bạn, xin mời <a href="DangNhap.jsp">Đăng nhập</a>,
                nếu chưa có tài khoản xin mời <a href="DangKy.jsp">Đăng ký</a> </h3></span>
  </marquee>

  <marquee direction="right" behavior="slide" scrollamount="50">
    <iframe style=""
      src="http://free.timeanddate.com/clock/i74xyx5d/n4068/tlvn/fs16/fcfff/tc000/ftb/pa8/tt0/tw1/th1/ta1/tb4" frameborder="0"
            width="204" height="53">
    </iframe>
  </marquee>





<%--  <a class="navbar-brand" href="#">Xin chào <%--%>
<%--    KhachHang kh2 =(KhachHang) session.getAttribute("user");--%>
<%--    if(kh2!=null){--%>
<%--      out.print(kh.getName());--%>

<%--    }--%>

<%--  %></a>--%>


  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
    </div>
  </div>

</div>
</br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br></br>
<div class="navbar-bottom">
  <marquee onmouseover="this.stop()" onmouseout="this.start()" direction="right"  scrollamount="900">
  <h5 style="color: white">chỉ là test thôi mà</h5>
</marquee>
</div>

</body>
</html>
