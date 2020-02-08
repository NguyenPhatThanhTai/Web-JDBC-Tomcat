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

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Error<%
                KhachHang kh =(KhachHang) session.getAttribute("user");
                if(kh!=null){
                    out.print(kh.getName());
                }
            %>
                <a class="navbar-brand" href="index.jsp">Trang Chủ</a>
            </a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="DangKy.jsp"><span class="glyphicon glyphicon-user"></span> Đăng kí</a></li>
            <li><a href="DangNhap.jsp"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <span style="text-align: center ;color: white"><h1>Opp!!! có vẻ bạn đã sai mật khẩu hoặc tài khoản<br></h1> <h3>Vui lòng <a href="DangNhap.jsp">Thử lại</a> hoặc nếu
        chưa có tài khoản xin mời <a href="DangKy.jsp">Đăng ký</a></h3></span>
</div>

</body>
</html>
