<%@page import="com.example.demo.Bean.BookCourse"%>
<%@page import="com.example.demo.Bean.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.springframework.ui.Model"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


       <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Order data</title>
<link rel="stylesheet" href="/resourcess/css/style.css">
<link rel="stylesheet" href="/resourcess/css/login.css">
<link rel="stylesheet" href="/resourcess/css/footer.css">
<link rel="stylesheet" href="/resourcess/css/table.css">


</head>
<body>
<nav>
        <div class="logo">
            <img class="p" src="/resourcess/images/logo.png">
        </div>
        <div class="navbar">
            <ul>
                <li><a href="home">Home</a></li>
                <li><a href="about">About</a></li>
                <li><a href="gurukul">Gurukul</a></li>
                <li><a href="contect">Contact Us</a></li>
               
            </ul>

        </div>
        

    </nav>
<table style="border: 5px black;">
<h2>${msg}</h2>
<tr>
<th>Email :</th>

<th>Course</th>
<th>Date</th>


</tr>
<%
List<BookCourse> allorder = (List<BookCourse>) request.getAttribute("orderdata");

 for(BookCourse s : allorder) { %>

<tr>
<td><%=s.getEmail() %></td>

<td><%=s.getCourse() %></td>
<td><%=s.getDate() %></td>



</tr>


<% } %>
</table>

 
  <footer style="margin-top: 50px">

    <div class="row">

      <div class="column">

        <h4>About Us</h4>

        <p>The students learn from the guru and help the guru in his everyday life, including carrying out of mundane daily household chores. However, some scholars suggest that the activities are not mundane and very essential part of the education to inculcate self-discipline among students. Typically, a guru does not receive or accept any fees from the shishya studying with him as the relationship between a guru and the shishya is considered very sacred.</p>

      </div>

      <div class="column">

        <h4>Quick Links</h4>

        <ul>

          <li><a href="#"><i class="fa fa-angle-right"></i> Subscription</a></li>

          <li><a href="#"><i class="fa fa-angle-right"></i> Contact us</a></li>

          <li><a href="#"><i class="fa fa-angle-right"></i> Bug report</a></li>

        </ul>

      </div>

      <div class="column">

        <h4>Connect with Us</h4>

        <ul class="social-icons">

          <li><a href="#"><i class="fa-brands fa-facebook-f"></i></a></li>

          <li><a href="#"><i class="fa-brands fa-instagram"></i></a></li>
          
          <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>

            <li><a href="#"><i class="fa-brands fa-github"></i></a></li>

        </ul>

      </div>

    </div>

    <p class="copyright">© 2023 All Rights Reserved</p>

  </footer>