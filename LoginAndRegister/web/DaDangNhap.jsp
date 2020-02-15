<%@page import="Module.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đã Đăng Nhập</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="css.css"> <!-- phần text/css định dạng là css hay scss -->
</head>


<body background="tai.jpg">

<nav class="navbar navbar-inverse color-bar: #2B485C ">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Welcome <%
                KhachHang kh =(KhachHang) session.getAttribute("user");
                if(kh!=null){
                    out.print(kh.getName());
                }
            %></a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="index.jsp">Home Page</a></li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="TienLuong.jsp">Your salary</a></li>
                    <li><a href="#">Your information (comming soon)</a></li>
                </ul>
            </li>
            <li><a href="#">Page 2</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-user"></span> Log Out</a></li>
        </ul>
    </div>
</nav>



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
    <span>H </span>
    <span> A </span>
    <span> V </span>
    <span> E </span>
    <span> </span>
    <span> A </span>
    <span> </span>
    <span> N </span>
    <span> I </span>
    <span> C </span>
    <span> E </span>
    <span> </span>
    <span> D </span>
    <span> A </span>
    <span> Y </span>



</h1>
</body>

</body>
</html>
