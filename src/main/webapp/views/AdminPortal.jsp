<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Portal</title>
<link rel="stylesheet" href="/resourcess/css/index.css">
<link rel="stylesheet" href="/resourcess/css/login.css">
<link rel="stylesheet" href="/resourcess/css/footer.css">
    <style type="text/css">
    button {
	margin: 10px;
}
    </style>
</head>
<body>
 <%@include file="header.jsp" %>
 <div id="particles-js"></div>
<div class="login-box">
<h2>${stud}</h2>
  <h2>Dashboard Access</h2>
 
    <button style="font-size: 20px;"><a href="update">Update</a></button>
   <button style="font-size: 20px;"> <a href="delete">DeleteStudent</a></button>
   
   <button style="font-size: 20px;"> <a href="allStudent">GetAllStudent</a></button>
    <button style="font-size: 20px;"> <a href="allOrder">GetAllOrder</a></button>
   
</div>
 <footer style="margin-top: 550px;">
 <%@include file="footer.jsp" %>
 
 </footer>
 
</body>
</html>