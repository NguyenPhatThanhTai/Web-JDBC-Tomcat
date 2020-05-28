<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Đăng ký</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/View/Effect/CSS-JS/Effect.css">
</head>
<body>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <form class="login100-form" action="Register" method="post">
					<span class="login100-form-title">
                        <u>Register Account</u>
					</span>
                </br></br></br></br></br>
                <div class="wrap-input100 " data-validate="Type user name">
                    <input id="first-name" class="input100" type="text" name="username" placeholder="User name" required>
                </div>
                <div class="wrap-input100 " data-validate="Type password">
                    <input class="input100" type="password" name="pass" placeholder="Password" required>
                </div>
                <div class="wrap-input100 " data-validate="Type password">
                    <input class="input100" type="password" name="Repass" placeholder="RePassword" required>
                </div>
                <div class="wrap-input100 " data-validate="Type password">
                    <input class="input100" type="email" name="email" placeholder="Email" required>
                </div>
                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Register
                    </button>
                    <h5 style="color: red">${pageContext.request.getAttribute("alert")}</h5>
                </div>
                </br></br></br></br>
                </br></br></br></br></br>
                <div class="w-full text-center p-t-27 p-b-239">
                    </br></br></br></br></br>
                    <span class="txt1" style="text-align: center">
							Already have account
						</span>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                    <a href="${pageContext.request.contextPath}/Login" class="txt3">
                        Login
                    </a>
                </div>
            </form>
            <div class="login100-more" style="background-image: url('${pageContext.request.contextPath}/View/Image/hoagiay-3.jpg');"></div>
        </div>
    </div>
</div>
</body>


</body>
</html>
