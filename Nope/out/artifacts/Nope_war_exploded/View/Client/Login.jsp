<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url value="/View/Effect/" var="url"></c:url>
    <title>Đăng nhập</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/View/Effect/CSS-JS/Effect.css"> <!-- phần text/css định dạng là css hay scss -->
</head>
<body>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <form class="login100-form" action="Login" method="post">
					<span class="login100-form-title">
                        <u>Account Login</u>
					</span>
                </br></br></br></br></br>
                <div class="wrap-input100 " data-validate="Type user name">
                    <input id="first-name" class="input100" type="text" name="username" placeholder="User name" required>
                </div>
                <div class="wrap-input100 " data-validate="Type password">
                    <input class="input100" type="password" name="pass" placeholder="Password" required>
                </div>
                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Login
                    </button>
                    <h5 style="color: red">${pageContext.request.getAttribute("alert")}</h5>
                </div>
                </br></br></br></br></br>
                <div class="w-full text-center p-t-27 p-b-239">
                    </br></br></br></br></br>
                    <span class="txt1">
							Forgot
						</span>
                    <a href="#" class="txt2">
                        User name / password ?
                    </a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <a href="${pageContext.request.contextPath}/Register" class="txt3">
                        Sign Up
                    </a>
                </div>
            </form>
            <div class="login100-more" style="background-image: url('${pageContext.request.contextPath}/View/Image/hoagiay.jpg');"></div>
        </div>
    </div>
</div>

</body>
</html>