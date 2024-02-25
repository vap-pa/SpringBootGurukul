<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resourcess/css/index.css">
<link rel="stylesheet" href="/resourcess/css/login.css">
<link rel="stylesheet" href="/resourcess/css/footer.css">
    
</head>
<body>
 <%@include file="header.jsp" %>
 <div id="particles-js"></div>
<div class="login-box">
<h2>${stud}</h2>
  <h2>Dashboard Access</h2>
  <form action="login" method="post">
    <div class="user-box">
     <h3>EmailId</h2>
      <input type="text" name="email" required="">
      
    </div>
    <div class="user-box">
    <h3>Password</h3>
      <input type="password" name="password" required="">
      
    </div>
	<a><input style="font-size: 20px;" type="submit" value="Login" id="button-1"/></a>
	 
   
   
  </form>
   <button style="font-size: 20px;"><a href="registration">Registration</a></button>
    
</div>
 <footer style="margin-top: 550px;">
 <%@include file="footer.jsp" %>
 
 </footer>
 
</body>
</html>