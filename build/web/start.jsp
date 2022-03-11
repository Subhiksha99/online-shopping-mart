<%-- 
    Document   : start
    Created on : 26-Jan-2022, 9:38:25 pm
    Author     : subhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Subhish electronics shopping</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            .header{
                width: 100%;
                height: 50;
  border: 10px dashed red;
  animation-name: example;
  animation-duration: 10s;
  animation-iteration-count: infinite;
            }
   @keyframes example {
  0%   {border-color: #ff0028;}
  25%  {border-color: #7d3cff;}
  50%  {border-color: #161748;}
  100% {border-color: #39a0ca;}
}
            .tab{
                background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 25%;
  }
  .catalogue{
     
  }
  .row{
       border:5px solid black;
      width:100;
      height:100;
      float:left;
  }
  
  .container{
      border: 1px ;
      width: 500px;
      height: 500px;
      background-color: red;
      float:none;
      position:absolute;
      left:50 px;
      right:100 px;
      
  }
  .close-btn {
 position: absolute;
 right: 20px;
 top: 20px;
 width: 30px;
 height: 30px;
 color: white;
 font-size: 30px;
 border-radius: 50%;
 padding: 2px 5px 7px 5px;
 background: #292929;
 box-shadow:  5px 5px 15px #1e1e1e, 
             -5px -5px 15px #1e1e1e;
 }
 .open-button {
  color: white;
  padding: 16px 20px;
 
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}

* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
    </head>
    
    <body>
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script>
          var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "block";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1;}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
        function togglePopup() {
            console.log("hello");
 document.getElementById("popup-1")
  .classList.toggle("active");
}
function openform()
{document.getElementById("myform").style.display="block";
    if(document.getElementById("disp").innerHTML!="")
    document.getElementById("login").style.display="none";
    
}
function closeform()
{document.getElementById("myform").style.display="none";
}
function signedin(){
    document.getElementById("login").style.display="none";
    document.getElementById("welcome").innerHTML="Welcome "+document.getElementById("uname").value;
}
function profile(){
    
}

    </script>
        <div class="header">
            <img src="C:\books\videos\web_project\cart1.png" align="right" width="100" height="80">
            <h1 align="left">Subhish Electronics Shopping</h1>
            <div>
                <p id="welcome"></p>
            </div>
        </div>
        <div class="form-popup" id="myform">
<form class="form-container" action="signin" method="post">
 <h1>Login</h1>

    <label for="username"><b>user name</b></label>
    <input type="text" placeholder="Enter user name" id="uname"  name="un" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" id="pwd" placeholder="Enter Password" name="pwd" required>
    
    <button type="submit" class="btn" id="submitted">Login</button>
    <button type="button" class="btn cancel" onclick="closeform()">Close</button>
  </form>
</div>
    <div>
        <%
            Cookie ck[]=request.getCookies();
            if(ck!=null){
            String nm=ck[0].getValue();
            out.println("<p>welcome "+nm+" have more fun on shopping</p>");
            }
            else
            out.println("<p onclick='openform()'>sign in</p>");
            %>
    </div>        
<div class="slideshow-container">
 <div class="mySlides fade">
  <div class="image">1/4</div>
  <img src="C:\books\videos\slide1.jpg" style="width:100%;"> 
  </div>
 <div class="mySlides fade">
 <div class="image">2/4</div>
  <img src="C:\books\videos\slide2.jpg" style="width:100%;">
  </div>
<div class="mySlides fade">
 <div class="image">3/4</div>
  <img src="C:\books\videos\slide3.jpg" style="width:100%;">
 </div>
<div class="mySlides fade">
 <div class="image">4/4</div>
  <img src="C:\books\videos\slide4.jpg" style="width:100%;">
 </div>
 </div>
<br>
<div style="text-align:center">
<span class="dot"></span>
<span class="dot"></span>
<span class="dot"></span>
<span class="dot"></span>
</div>

      
    

        <div class="menu">
            <button class="tab" id="defaultopen" onclick="openPage('Home', this, 'red')">Home</button>
            <button class="tab" onclick="openPage('products', 'product.jsp', 'red')">All products</button>
            <button class="tab" onclick="openPage('discount', this, 'red')">Discount</button>
            <button class="tab" onclick="openPage('customer_care', this, 'red')">Customer care</button>
        </div>
        <div class="col">
            <div class="row">
                <form action="phone.jsp">
                    <td class="catalogue"><button><img src="C:\books\videos\web_project\phone.jpg"></button> </td>
                    </form>
                </div>
            <div class="row">
                <form action="computers" >
                    <td class="catalogue"><button><img src="C:\books\videos\web_project\laptop.jpg" width="379" height="307"></button></td>
                </form>
            </div>
        </div>
    </body>
</html>
