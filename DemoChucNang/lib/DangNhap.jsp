<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="Controller.XuLyDangNhap" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đăng nhập</title>
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
            <a class="navbar-brand" href="index.jsp">Trang Chủ</a>
            </a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="DangKy.jsp"><span class="glyphicon glyphicon-log-in"></span> Đăng kí</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <marquee direction="left" behavior="slide" scrollamount="200">
    <h2 style="color: white">Nhập thông tin đăng nhập</h2>
    </marquee>
    <form class="form-horizontal" action="XuLyDangNhap" method="post">
        <marquee direction="up" behavior="slide" scrollamount="70">
        <div onclick="myFunction1()" class="form-group">
            <label style="color: white" class="control-label col-sm-2" for="email">Tài khoản:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="email" name="username" placeholder="ví dụ: abcd0107" data-content-id="so1">
                <p style="color: red; text-align: left" id="TK2"></p>
            </div>
        </div>

            <div onclick="myFunction2()" class="form-group">
            <label style="color: white" class="control-label col-sm-2" for="pwd">Mật khẩu:</label>
            <div class="col-sm-10">
                <input  type="password" class="form-control" id="pwd" name="pass" placeholder="Nhập mật khẩu ...">
                <p style="color: red; text-align: left" id="TK1"></p>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-success">Đăng nhập</button>
            </div>
        </div>
        </marquee>
    </form>
</div>

<script>
    function myFunction1() {
        if (document.getElementById("pwd").value == "") {
            document.getElementById("TK1").innerHTML = "Không được để trống";
        }
    }
</script>

<script>
    function myFunction2() {
        // document.getElementById("TK").innerHTML= "Không được để trống";
        if(document.getElementById("email").value == "" ) {
            document.getElementById("TK2").innerHTML = "Không được để trống";
        }
    }
</script>

</body>
</html>