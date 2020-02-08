<%-- 
    Document   : add
    Created on : Dec 22, 2017, 9:27:33 PM
    Author     : Than
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Them moi thong tin khach hang!</h1>
        <form method="post" action="doAdd.jsp">
            <table>
                <tr>
                    <td>Name: </td>
                    <td><input type="text" name="name" placeholder="client name"></td>
                </tr>
                <tr>
                    <td>Address: </td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>
                    <td>Phone: </td>
                    <td><input type="text" name="phone"></td>
                </tr>
                <tr>
                    <td>Date of birth: </td>
                    <td><input type="text" name="dob" placeholder="dd/mm/yyyy"></td>
                </tr>
            </table>
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </body>
</html>
