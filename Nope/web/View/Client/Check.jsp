<%@ page import="Model.MailNumCheck" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url value="/View/Effect/" var="url"></c:url>
    <title>Check Mail</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/View/Effect/CSS-JS/Effect.css"> <!-- phần text/css định dạng là css hay scss -->
</head>
<body>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <form class="login100-form" action="MailNumber" method="post">
					<span class="login100-form-title">
                        <u>Check Email Exists</u>
                        <h4><% MailNumCheck mailNumCheck = new MailNumCheck();
                                out.print(mailNumCheck.getEmail());%></h4>
					</span>
                </br></br></br></br></br>
                <div class="wrap-input100 " data-validate="Type user name">
                    <input id="first-name" class="input100" type="text" name="MailNumber" placeholder="Type a number">
                </div>
                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Check
                    </button>
                    <h5 style="color: red">${pageContext.request.getAttribute("alert")}</h5>
                </div>
                </br></br></br></br></br>
                <button class="login100-form-btn">
                    Send mail again
                </button>
            </form>
            <div class="login100-more" style="background-image: url('${pageContext.request.contextPath}/View/Image/hoagiay.jpg');"></div>
        </div>
    </div>
</div>

</body>
</html>