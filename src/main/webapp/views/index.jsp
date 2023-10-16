<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gurukul</title>
    <link rel="stylesheet" href="/resourcess/css/style.css">
    <link rel="stylesheet" href="/resourcess/css/footer.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    
</head>
<body>
    <nav>
        <div class="logo">
            <img class="p" src="/resourcess/images/logo.png">
        </div>
        <div class="navbar">
            <ul>
				<label style="color: green" id="label-1">${stud}</label>
                <li><a href="home">Home</a></li>
                <li><a href="about">About</a></li>
                <li><a href="gurukul">Student Portal</a></li>
                <li><a href="admin">Admin Portal</a></li>
                
                <li><a href="contect">Contact Us</a></li>
               
            </ul>

        </div>
        

    </nav>
    <div width="100%">
        <div style="width:45%;height:200px;float: left;" >
    
            <h1>Gurukul</h1>
            <p width="100%" class="pf">
                    

"India has been a land of knowledge, wisdom, and intelligence for an extensive period. Reflecting on our history, it becomes evident that people from neighboring countries used to journey to India to delve into the realms of Vedas, Upanishads, philosophies, ancient scriptures, and more. India thrived with innovations and scientific discoveries, not solely in physical science but also in medical science, Ayurveda, yoga, astrology, chemical science, atomic science, and various other domains. This richness positioned India as the 'Learning Hub' of Southeast Asia.

The credit for these accomplishments goes to a robust and formidable education system, famously known as 'The Gurukul System.'"</p>
        </div>
        <div style="width:45%;height:200px;float: left;margin-left:120px;">
           
            <div class="img">
                    <img src="/resourcess/images/Gurukul.jpg">
            </div>
        </div>
    </div>
        <div style="width:50%;height:200px;float: left; margin-top: 220px;">
            
                <p class="pf">

"The Ancient Gurukul System in India was a residential schooling system that dates back to approximately 5000 BC, especially during the Vedic era. It significantly differed from the modern education system of India. In this educational framework, students, also known as disciples or shishyas, would journey to the teacher's (guru's) place and reside there until completing their foundational education.

Students were categorically divided into three groups:

- 'Vasu': Those who obtained education up to the age of 24.
- 'Rudra': Those who obtained education up to the age of 36.
- 'Aditya': Those who obtained education up to the age of 48."</div>
        <div style="width:45%;height:0px;float: left; margin-top: 240px;margin-left: 60px;">  
            <div  class="img">
                <img width="100px" height="50px" src="/resourcess/images/g2.jpg">
            </div>
        </div>
     <footer style="margin-top: 800px">
     <%@include file="footer.jsp" %>
     </footer>      
   
     
</body>
</html>
