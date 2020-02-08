<%-- 
    Document   : index
    Created on : Dec 22, 2017, 9:03:30 PM
    Author     : Than
--%>

<%@page import="controller.DAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.KH"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Thông tin khách hàng</h1>
        <table border="1" style="border-collapse:collapse;" width="80%" align="center">
            <tr>
            <th>STT</th>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Email</th>
            <th>Phone</th>
            <th>DOB</th>
            <th colspan="2"><a href="add.jsp">Add new</a></th>
        </tr>
        <% int i= 1;
            ArrayList<KH> list = new DAO().getKH();
            
            for(KH k: list){
                String urle = "edit.jsp?id="+k.getId();
                String urlr= "remove.jsp?id="+k.getId();
            
        %>
        <tr>
            <td><%= i++%></td>
            <td><%= k.getId()%></td>
            <td><%= k.getName()%></td>
            <td><%= k.getAddress()%></td>
            <td><%= k.getEmail()%></td>
            <td><%= k.getPhone()%></td>
            <td><%= k.getDob()%></td>
            <td><a href="<%= urle %>">Edit</a></td>
            <td><a href="<%= urlr %>">Remove</a></td>
        </tr>
        <%}%>
    </table>
</body>
</html>
