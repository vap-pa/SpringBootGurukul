<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <title>School Registration Form</title>
 <link rel="stylesheet" href="/resourcess/css/update.css">
 
<link rel="stylesheet" href="/resourcess/css/index.css">
<link rel="stylesheet" href="/resourcess/css/login.css">
<link rel="stylesheet" href="/resourcess/css/footer.css">

</head>
<body>
<%@include file="header.jsp" %>	

    <form action="updatestud" method="post">
    <h2>Student Update</h2>
    <h3 style="color: green">${up}</h3>
    
     <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="grade">Password</label>
            <input type="text" id="grade" name="password" required>
        </div>
         <div class="form-group">
            <label for="name">Parent Name:</label>
            <input type="text" id="name" name="fatherName" required>
        </div>
        <div class="form-group">
            <label for="name">EmailId:</label>
            <input type="text" id="name" name="email" required>
        </div>
        <div class="form-group">
            <label for="age">Date of Birth :</label>
            <input type="date" id="age" name="dob" required>
        </div>
        <div class="form-group">
            <label for="grade">Last Class :</label>
            <input type="text" id="grade" name="lastClass" required>
        </div>
        <div class="form-group">
            <label for="grade">Grade:</label>
            <input type="text" id="grade" name="grade" required>
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <textarea id="address" name="address" required></textarea>
        </div>
           <div class="form-group">
            <input type="submit" value="Update">
        </div>
    </form>
    <footer style="margin-top: 100px;">
    <%@include file="footer.jsp" %>
    </footer>
    
</body>
</html>