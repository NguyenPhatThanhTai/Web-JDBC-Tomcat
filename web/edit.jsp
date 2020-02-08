<%-- 
    Document   : edit
    Created on : Dec 22, 2017, 9:27:43 PM
    Author     : Than
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="controller.DAO"%>
<%@page import="model.KH"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Chinh Sua Thong Tin Khach Hang!</h1>
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            KH k = new DAO().searchKHById(id);
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            String dob = sdf.format(k.getDob());
        %>
        <form method="post" action="doEdit.jsp?id=<%=k.getId()%>">
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" value="<%=k.getName()%>"></td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td><input type="text" name="address" value="<%=k.getAddress()%>"></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="text" name="email" value="<%=k.getEmail()%>"></td>
                </tr>
                <tr>
                    <td>Phone: </td>
                    <td><input type="text" name="phone" value="<%=k.getPhone()%>"></td>
                </tr>
                <tr>
                    <td>Date of birth: </td>
                    <td><input type="text" name="dob" value="<%=dob%>"></td>
                </tr>
            </table>
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </body>
</html>
