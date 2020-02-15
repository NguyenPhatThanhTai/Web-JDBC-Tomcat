<%--
    Document   : index.jsp
    Created on : Dec 23, 2017, 6:33:51 PM
    Author     : Than
--%>

<%@page import="Dao.KhachHangDao"%>
<%@page import="Module.TienLuong"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ page language="java" contentType="text/html; charset=utf-8"--%>
<%--         pageEncoding="utf-8"%>--%>
<%--<%@ page language="java" contentType="text/html; charset=utf-8"--%>
<%--         pageEncoding="utf-8"%>--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đăng ký</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%--    <link rel="stylesheet" type="text/css" media="screen" href="css.css"> <!-- phần text/css định dạng là css hay scss -->--%>
</head>
<body background="tai.jpg">


<form class="form-horizontal" action="XuLyTienLuong" method="post">
</form>
<marquee direction="left" behavior="slide" scrollamount="900">
<h1 align="center" style="color: white">Your salary</h1>
</marquee>

    <%
        ArrayList<TienLuong> list = new KhachHangDao().getList();
        int i = 1;
        for (TienLuong s : list) {
            String urle = "edit.jsp?id="+s.getTenNV();
            String urlr = "remove.jsp?id="+s.getTenNV();
    %>

    <div class="container">
        <marquee direction="left" behavior="slide" scrollamount="500">
        <input style="color: white"><%="Staff name: " + s.getTenNV() %></input>
        </marquee>
        <marquee direction="left" behavior="slide" scrollamount="300">
        <h1 style="color: red"><%= "Salary: " + s.getTienLuong()%></h1>
        </marquee>



    </div>
    <%}%>


</body>
</html>


