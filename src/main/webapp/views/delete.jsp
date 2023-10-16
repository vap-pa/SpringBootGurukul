<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Portal</title>
<link rel="stylesheet" href="/resourcess/css/style.css">
<link rel="stylesheet" href="/resourcess/css/login.css">
<link rel="stylesheet" href="/resourcess/css/footer.css">
    
</head>
<body>
 <%@include file="header.jsp" %>
 <div id="particles-js"></div>
<div class="login-box">
<h1>${del}</h1>
  <h2>Dashboard Access</h2>
  <form action="delete" method="post">
    <div class="user-box">
     <h3>EmailId :</h2>
      <input type="text" name="email" required="">
      
    </div>
    	
	<a><input style="font-size: 20px;" type="submit" value="Delete" id="button-1"/></a>
	 
   
   
  </form>
  
</div>
 <footer style="margin-top: 550px;">
 <%@include file="footer.jsp" %>
 
 </footer>
 
</body>
</html>