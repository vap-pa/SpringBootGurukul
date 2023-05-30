<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
                <li><a href="gurukul">Gurukul</a></li>
                <li><a href="contect">Contect Us</a></li>
               
            </ul>

        </div>
        

    </nav>
    <div width="100%">
        <div style="width:45%;height:200px;float: left;" >
    
            <h1>Gurukul</h1>
            <p width="100%" class="pf">
                    India has been a land of knowledge, wisdom, and intelligence since quite a long time. If we look at our history then we would certainly realize that people from neighbouring countries used to come to India to learn Vedas, Upanishadas, Philosophies, Ancient scriptures and so on. India was quite enriched with innovations and scientific discoveries not only in Physical Science but also in Medical Science, Ayurveda, Yoga, Astrology, Chemical Science, Atomic Science and so on. That is the reason why India was called as âThe Learning Hubâ of S-E Asia. These all were possible because of a strong and robust Education System which was well known as âThe Gurukul Systemâ.
            </p>
        </div>
        <div style="width:45%;height:200px;float: left;margin-left:120px;">
           
            <div class="img">
                    <img src="/resourcess/images/Gurukul.jpg">
            </div>
        </div>
    </div>
        <div style="width:50%;height:200px;float: left; margin-top: 220px;">
            
                <p class="pf">Ancient Gurukul System in India was a Residential Schooling System which was dated back to appx. 5000 BC especially during the Vedic era. It was a quite different Schooling System if we compare it with the Modern Education System of India. In this Education System students (disciples/shishyas) used to go to the teacherâs (guruâs) place and stay there until they finish up their basic Education. Students were basically categorized into 3 groups such as âVasuâ (Those who obtain education up to the age of 24), âRudraâ (Those who obtain education up to the age of 36), âAdityaâ (Those who obtain education up to the age of 48).</p>
        </div>
        <div style="width:45%;height:0px;float: left; margin-top: 220px;margin-left: 60px;">  
            <div  class="img">
                <img src="/resourcess/images/g2.jpg">
            </div>
        </div>
     <footer style="margin-top: 800px">
     <%@include file="footer.jsp" %>
     </footer>      
   
     
</body>
</html>