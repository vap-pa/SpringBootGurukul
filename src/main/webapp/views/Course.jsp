<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gurukul Courses</title>
    <link rel="stylesheet" href="/resourcess/css/index.css">
     <link rel="stylesheet" href="/resourcess/css/course.css">
    <link rel="stylesheet" href="/resourcess/css/footer.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    
    

</head>
<body>
    <%@ include file="header.jsp" %>
    <div>
        
        <h3 style="color: green;">welcome ${stud}</h3>

        <div class="courses-container">
            <div class="course-container">
                <h2>Vedas Courses</h2>
                <img src="/resourcess/images/ved.jpg" alt="Vedas Courses">
                <p>
                    Explore the profound knowledge of the Vedas, the ancient sacred scriptures of India. Our Vedas courses provide in-depth insights into the spiritual and philosophical teachings.
                    <span class="course-duration">Duration: 1 year</span>
                    <form action="book" method="post">
                    <input type="hidden" name="email" value="${stud}">
                        <input type="hidden" name="course" value="Vedas Courses">
                        <label>Select Join Date:</label><input type="date" name="date">
                        <button type="submit" class="book-now-button">Join Now</button>
                    </form>
                </p>
            </div>

            <div class="course-container">
                <h2>Meditation Courses</h2>
                <img src="/resourcess/images/soul.jpg" alt="Meditation Courses">
                <p>
                    Discover the art of meditation and cultivate inner peace. Our Meditation courses offer practical techniques for calming the mind and achieving mental clarity.
                    <span class="course-duration">Duration: 6 months</span>
                    <form action="book" method="post">
                       <input type="hidden" name="email" value="${stud}">
 
                        <label>Select Join Date:</label><input type="date" name="date">
                        <input type="hidden" name="course" value="Meditation Courses">
                        <button type="submit" class="book-now-button">Join Now</button>
                    </form>
                </p>
            </div>

         
            <div class="course-container">
                <h2>Spiritual Living</h2>
                <img src="/resourcess/images/medi.jpg" alt="Spiritual Living">
                <p>
                    Embrace spiritual living with this transformative course. Learn practices that enhance spiritual well-being and bring harmony to your life.
                    <span class="course-duration">Duration: 1 year</span>
                    <form action="book" method="post">
                        <input type="hidden" name="email" value="${stud}">
  <label>Select Join Date:</label><input type="date" name="date">
  
                        <input type="hidden" name="course" value="Spiritual Living">
                        <button type="submit" class="book-now-button">Join Now</button>
                    </form>
                </p>
            </div>

            <div class="course-container">
                <h2>Work on Soul</h2>
                <img src="/resourcess/images/living.jpg" alt="Work on Soul">
                <p>
                    Delve into the depths of your soul with this transformative course. Explore spiritual practices that empower your soul's journey.
                    <span class="course-duration">Duration: 6 months</span>
                    <form action="book" method="post">
                       <input type="hidden" name="email" value="${stud}">
  <label>Select Join Date:</label><input type="date" name="date">
                        <input type="hidden" name="course" value="Work on Soul">
                        <button type="submit" class="book-now-button">Join Now</button>
                    </form>
                </p>
            </div>

           
        </div>
    </div>

   
    <footer>
        <%@ include file="footer.jsp" %>
    </footer>
</body>
</html>
