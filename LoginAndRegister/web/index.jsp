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
  <link rel="stylesheet" type="text/css" media="screen" href="css.css"> <!-- phần text/css định dạng là css hay scss -->
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
      <li><a href="DangKy.jsp"><span class="glyphicon glyphicon-user"></span> Register </a></li>
      <li><a href="DangNhap.jsp"><span class="glyphicon glyphicon-log-in"></span> Sign In </a></li>
<%--      <li><a href="DangXuat"><span class="glyphicon glyphicon-user"></span> Đăng xuất</a></li>--%>
    </ul>
  </div>
</nav>

<div class="container">
  <marquee direction="up" behavior="slide" scrollamount="7">
  <span style="text-align: center ;color: white"><h3>Hello  every  one ,  if  you  already  have  a  account ,  please  <a href="DangNhap.jsp" style="color: red">Sign In</a>,
                else  please  <a href="DangKy.jsp" style="color: red">Register</a> </h3></span>
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

<body>

<h1>
  <span>H</span>
  <span>E</span>
  <span>L</span>
  <span>L</span>
  <span>O</span>
  </br>
  <span>E</span>
  <span>V</span>
  <span>E</span>
  <span>R</span>
  <span>Y</span>
  <span> </span>
  <span>O</span>
  <span>N</span>
  <span>E</span>
</h1>
</body>

</body>
</html>
