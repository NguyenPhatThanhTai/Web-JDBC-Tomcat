<%@ page import="Module.KhachHang" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đăng ký</title>
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
            <li><a href="DangNhap.jsp"><span class="glyphicon glyphicon-log-in"></span>Sign In</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <marquee direction="left" behavior="slide" scrollamount="200">
    <h2 style="color: white">please enter infomation to Register</h2>
    </marquee>

</div>
<form class="form-horizontal" action="XuLyDangKy" method="post">
    <marquee direction="up" behavior="slide" scrollamount="70">
    <div class="form-group">
        <label style="color: white" class="control-label col-sm-2" for="email">Account: </label>
        <div class="col-sm-10">
            <input   type="text" class="form-control" id="email" name="username" placeholder="Example: abcd123" required>
        </div>
    </div>
    <div class="form-group">
        <label style="color: white" class="control-label col-sm-2" for="pwd">PassWord: </label>
        <div class="col-sm-10">
            <input  type="password" class="form-control" id="pwd" name="pass" placeholder="Enter your PassWord..." required >
        </div>
    </div>
        <div class="form-group">
            <label style="color: white" class="control-label col-sm-2" for="re-pwd">Re-PassWord: </label>
            <div class="col-sm-10">
                <input  type="password" class="form-control" id="re-pwd" name="re-pass" placeholder="Enter again your PassWord..." required>
            </div>
        </div>
    <div class="form-group">
        <label style="color: white" class="control-label col-sm-2" for="pwd">Your name </label>
        <div class="col-sm-10">
            <input  type="text" class="form-control" id="pwb" name="name" placeholder="Your name is..." required>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button onclick="myFunction1(), myFunction2(), myFunction3(), validatePassword()" type="submit" class="btn btn-success">Register</button>
            <p style="color: red; text-align: left" id="TK3"></p>
            <p style="color: red; text-align: left" id="TK4"></p>
        </div>
    </div>



    </marquee>
</form>
<script>
    function myFunction1() {
        if (document.getElementById("email").value == "") {
            document.getElementById("TK3").innerHTML = "Please fill out all field !!!";
        }
    }
</script>
<script>
    function myFunction2() {
        if (document.getElementById("pwd").value == "") {
            document.getElementById("TK3").innerHTML = "Please fill out all field !!!";
        }
    }
</script>
<script>
    function myFunction3() {
        if (document.getElementById("pwb").value == "") {
            document.getElementById("TK3").innerHTML = "Please fill out all field !!!";
        }
    }
</script>

<script>
    let password = document.getElementById("pwd")
        , confirm_password = document.getElementById("re-pwd");

    function validatePassword(){
        if(password.value != confirm_password.value) {
            document.getElementById("TK4").innerHTML = "Password and Repassword don't MATCH !!!";
            confirm_password.setCustomValidity("Passwords Don't Match");
        } else {
            confirm_password.setCustomValidity('');
        }
    }

    password.onchange = validatePassword;
    confirm_password.onkeyup = validatePassword;
</script>

<body>

<h1>
    </br>
    </br>
    </br>
    <span>R</span>
    <span>  </span>
    <span>E</span>
    <span>  </span>
    <span>G</span>
    <span>  </span>
    <span>I</span>
    <span> </span>
    <span>S</span>
    <span> </span>
    <span>T</span>
    <span> </span>
    <span>E</span>
    <span> </span>
    <span>R</span>

</h1>
</body>


</body>
</html>
