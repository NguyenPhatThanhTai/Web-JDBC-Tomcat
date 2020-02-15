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
    <link rel="stylesheet" type="text/css" media="screen" href="css.css"> <!-- phần text/css định dạng là css hay scss -->
</head>
<body background="tai.jpg">
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">Home Page</a>
            </a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="DangKy.jsp"><span class="glyphicon glyphicon-log-in"></span> Register </a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <marquee direction="left" behavior="slide" scrollamount="200">
    <h2 style="color: white">Please enter your login information</h2>
    </marquee>
    <form class="form-horizontal" action="XuLyDangNhap" method="post">
        <marquee direction="up" behavior="slide" scrollamount="70">
        <div class="form-group">
            <label style="color: white" class="control-label col-sm-2" for="email">Account: </label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="email" name="username" required placeholder="Enter user name or email, phone number..." data-content-id="so1">
                <p style="color: red; text-align: left" id="TK2"></p>
            </div>
        </div>

            <div class="form-group">
            <label style="color: white" class="control-label col-sm-2" for="pwd">Password: </label>
            <div class="col-sm-10">
                <input required type="password" class="form-control" id="pwd" name="pass" placeholder="Enter your password">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button onclick="myFunction1(), myFunction2()" type="submit" class="btn btn-success">Sign in</button>
                <p style="color: red; text-align: left" id="TK3"></p>
            </div>
        </div>
        </marquee>
    </form>
</div>

<script>
    function myFunction1() {
        if (document.getElementById("pwd").value == "" ) {
            document.getElementById("TK3").innerHTML = "Please fill out all field !!!";
        }
    }
</script>

<script>
    function myFunction2() {
        // document.getElementById("TK").innerHTML= "Không được để trống";
        if(document.getElementById("email").value == "" ) {
            document.getElementById("TK3").innerHTML = "Please fill out all field !!!";
        }
    }
</script>


<body>

<h1>
    <span>S</span>
    <span>  </span>
    <span>I</span>
    <span>  </span>
    <span>G</span>
    <span>  </span>
    <span>N</span>
    </br>
    <span>U</span>
    <span>  </span>
    <span>P</span>
    <span>  </span>
    <span>!</span>

</h1>
</body>

</body>
</html>