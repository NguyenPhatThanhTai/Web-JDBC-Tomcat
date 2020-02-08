<%-- 
    Document   : remove
    Created on : Dec 22, 2017, 9:27:56 PM
    Author     : Than
--%>

<%@page import="controller.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            int id = Integer.parseInt(request.getParameter("id"));
            new DAO().remove(id);
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
