<%@ page import="Model.UserModel" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <c:url value="/View/Effect/" var = "url"></c:url>
    <title>Page1</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="${url}/CSS-JS/Page1.css">
</head>
<body>
<form action="Page1" method="post">
<div class="header">
    <h2>Welcome back, <% UserModel userModel = (UserModel) session.getAttribute("account");
                         out.print(userModel.getUserName());%></h2>
    <p>Scroll down to see some picture</p>
</div>
<div id="navbar">
    <a class="active" href="javascript:void(0)">Home</a>
    <a href="javascript:void(0)">News</a>
    <a href="javascript:void(0)">Contact</a>
</div>
<div class="content">
    <h3>Some picture</h3>
    <center>
        <h5 style="text-align: center">Confetti on the doorstep</h5>
        <img src="${pageContext.request.contextPath}/View/Image/hoagiay.jpg" alt="Girl in a jacket" style="width:1000px;height:600px;"><br>
        <h5 style="text-align: center">Confetti on the doorstep</h5>
        <img src="${pageContext.request.contextPath}/View/Image/hoagiay-3.jpg" alt="Girl in a jacket" style="width:1000px;height:600px;"><br>
        <h5 style="text-align: center">Confetti on the doorstep</h5>
        <img src="${pageContext.request.contextPath}/View/Image/hayla%20(1%20of%201).jpg" alt="Girl in a jacket" style="width:1000px;height:600px;"><br>
    </center>
</div>
</form>
<script>
    window.onscroll = function() {myFunction()};

    var navbar = document.getElementById("navbar");
    var sticky = navbar.offsetTop;

    function myFunction() {
        if (window.pageYOffset >= sticky) {
            navbar.classList.add("sticky")
        } else {
            navbar.classList.remove("sticky");
        }
    }
</script>
</body>
</html>
