<%-- 
    Document   : đoEit
    Created on : Dec 22, 2017, 10:13:58 PM
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
        <% 
            KH k = new KH();
            k.setId(Integer.parseInt(request.getParameter("id")));
            k.setName(request.getParameter("name"));
            k.setAddress(request.getParameter("address"));
            k.setEmail(request.getParameter("email"));
            k.setPhone(request.getParameter("phone"));
            try {
                    k.setDob(new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("dob")));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            if(new DAO().edit(k)){
                response.sendRedirect("index.jsp");
            } else{
                response.sendRedirect("error.jsp");
            }
        %>
    </body>
</html>
