<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url value="/View/Effect/" var = "url"></c:url>
    <link rel="shortcut icon" type="image/png" href="favicon.png"/>
    <title>Green Pink</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="${url}/CSS-JS/HtmlCSS.css"> <!-- phần text/css định dạng là css hay scss -->
</head>


<body>

<div class="bgimg-1">
    <div class="caption">
        <span class="border">Hello there ( >.< )</span>
        <h3 style="text-align: center; color: white">Please scroll down or quick click to lasted page <a href='#loginSession' class="btn btn-success" role="button">CLICK ME</a></h3>
    </div>
</div>

<div style="color: #777;background-color:white;text-align:center;padding:50px 80px;text-align: justify;">
    <h3 style="text-align:center;">A few words about the author</h3>
    <p>- Hello everyone, this is a site that summarizes all the pictures you have taken yourself, <br>- Have fun here, <br>- Maybe the picture may not be nice or eye-catching, <br>- But hopefully it will help you to relaxed mood, <br>- Whichever mood is good ... Thanks again.</p>
</div>

<div class="bgimg-2">
    <div class="caption">
        <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;">Have a nice days</span>
    </div>
</div>

<div style="position:relative;">
    <div style="color:#ddd;background-color:#282E34;text-align:center;padding:50px 80px;text-align: justify;">
        <p>Each picture has its own story and circumstances.</p>
    </div>
</div>

<div class="bgimg-3">
    <div class="caption">
        <span class="border" style="background-color:transparent;font-size:25px;color: #f7f7f7;">Happy and smile</span>
    </div>
</div>

<div style="position:relative;">
    <div style="color:#ddd;background-color:#282E34;text-align:center;padding:50px 80px;text-align: justify;">
        <p>Let your new day be energetic and wonderful</p>
    </div>
</div>

<div class="bgimg-1" id="loginSession">
    <div class="caption">
        <span class="border">One more step to becoming one of us (/^.^)/</span></br></br></br>
        <span class="spanL">Login your account &emsp;</span>
        <a href='${pageContext.request.contextPath}/Login' class="btn btn-success" role="button">CLICK ME</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
        <span class="spanL">Register your account &emsp;</span>
        <a href='${pageContext.request.contextPath}/Register' class="btn btn-success" role="button">CLICK ME</a>
    </div>
</div>
</body>
</html>
