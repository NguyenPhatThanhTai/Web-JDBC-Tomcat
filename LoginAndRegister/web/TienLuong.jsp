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
</head>
<body background="tai.jpg">


<form class="form-horizontal" action="XuLyTienLuong" method="post">
</form>
<h1 align="center" style="color: white">Thông tin tiền lương</h1>
<table border="1" style="border-collapse: collapse;" width="80%" align="center">
    <tr>
        <th style="color: white">STT</th>
        <th style="color: white">Tên</th>
        <th style="color: white">Tiền Lương</th>
    </tr>

    <%
        ArrayList<TienLuong> list = new KhachHangDao().getList();
        int i = 1;
        for (TienLuong s : list) {
            String urle = "edit.jsp?id="+s.getTenNV();
            String urlr = "remove.jsp?id="+s.getTenNV();
    %>

    <tr>
        <td style="color: white"><%= i++ %></td>
        <td style="color: white"><%= s.getTenNV() %></td>
        <td style="color: white"><%= s.getTienLuong()%></td>

    </tr>
    <%}%>
</table>
</body>
</html>


