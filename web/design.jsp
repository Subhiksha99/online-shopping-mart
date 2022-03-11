<%-- 
    Document   : design.jsp
    Created on : 27-Jan-2022, 7:47:35 am
    Author     : subhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Subish Supermarket</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
  .jumbotron {
    background-color: #f4511e;
    color: #fff;
    padding: 100px 25px;
    font-family: Montserrat, sans-serif;
  }
  .container-fluid {
    padding: 60px 50px;
  }
  .bg-grey {
    background-color: #f6f6f6;
  }
  .logo-small {
    color: #f4511e;
    font-size: 50px;
  }
  .logo {
    color: #f4511e;
    font-size: 200px;
  }
  .thumbnail {
    padding: 0 0 15px 0;
    border: none;
    border-radius: 0;
  }
  .thumbnail img {
    width: 100%;
    height: 100%;
    margin-bottom: 10px;
  }
  .carousel-control.right, .carousel-control.left {
    background-image: none;
    color: #f4511e;
  }
  .carousel-indicators li {
    border-color: #f4511e;
  }
  .carousel-indicators li.active {
    background-color: #f4511e;
  }
  .item h4 {
    font-size: 19px;
    line-height: 1.375em;
    font-weight: 400;
    font-style: italic;
    margin: 70px 0;
  }
  .item span {
    font-style: normal;
  }
  .panel {
    border: 1px solid #f4511e; 
    border-radius:0 !important;
    transition: box-shadow 0.5s;
  }
  .panel:hover {
    box-shadow: 5px 0px 40px rgba(0,0,0, .2);
  }
  .panel-footer .btn:hover {
    border: 1px solid #f4511e;
    background-color: #fff !important;
    color: #f4511e;
  }
  .panel-heading {
    color: #fff !important;
    background-color: #f4511e !important;
    padding: 25px;
    border-bottom: 1px solid transparent;
    border-top-left-radius: 0px;
    border-top-right-radius: 0px;
    border-bottom-left-radius: 0px;
    border-bottom-right-radius: 0px;
  }
  .panel-footer {
    background-color: white !important;
  }
  .panel-footer h3 {
    font-size: 32px;
  }
  .panel-footer h4 {
    color: #aaa;
    font-size: 14px;
  }
  .panel-footer .btn {
    margin: 15px 0;
    background-color: #f4511e;
    color: #fff;
  }
  .navbar {
    margin-bottom: 0;
    background-color: #f4511e;
    z-index: 9999;
    border: 0;
    font-size: 12px !important;
    line-height: 1.42857143 !important;
    letter-spacing: 4px;
    border-radius: 0;
    font-family: Montserrat, sans-serif;
  }
  .navbar li a, .navbar .navbar-brand {
    color: #fff !important;
  }
  .navbar-nav li a:hover, .navbar-nav li.active a {
    color: #f4511e !important;
    background-color: #fff !important;
  }
  .navbar-default .navbar-toggle {
    border-color: transparent;
    color: #fff !important;
  }
  footer .glyphicon {
    font-size: 20px;
    margin-bottom: 20px;
    color: #f4511e;
  }
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  @media screen and (max-width: 768px) {
    .col-sm-4 {
      text-align: center;
      margin: 25px 0;
    }
    .btn-lg {
      width: 100%;
      margin-bottom: 35px;
    }
  }
  @media screen and (max-width: 480px) {
    .logo {
      font-size: 150px;
    }
  }
  .form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}


.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}


.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}


.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}


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


.form-container .cancel {
  background-color: red;
}


.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <div>
        <%
            Cookie ck[]=request.getCookies();
            String msg=request.getHeader("Message");
            if(msg!=null)
            {
            out.println(msg);
        }
            if(ck!=null){
            String nm=ck[0].getValue();
            out.println("<p style='color:#ffffff'><b>welcome "+nm+" have more fun on shopping</b></p>");
            }
            else
            out.println("<p style='color:#ffffff' onclick='openform()'><b>sign in</b></p>");
            %>
    </div>        
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#pricing">ALL PRODUCTS</a></li>
        <li><a href="#contact">CONTACT</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="jumbotron text-center">
  <h1>Subish Electronic Shopping</h1> 
  <p>Have a great Shopping Experience</p> 
  <form action="searching">
    <div class="input-group">
      <input type="search" class="form-control" size="50" placeholder="search an item" id="searchitem">
      <div class="input-group-btn">
          
              <button type="submit" class="btn btn-danger" id="result">Search</button>
          
      </div>
    </div>
  </form>
</div>
     <div class="form-popup" id="myform">
<form class="form-container" action="signin" method="post">
 <h1>Login</h1>

    <label for="username"><b>user name</b></label>
    <input type="text" placeholder="Enter user name" id="uname"  name="un" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" id="pwd" placeholder="Enter Password" name="pwd" required>
    
    <button type="submit" class="btn" id="submitted">Login</button>
    <hr><br><h4>Don't have an account <span style="color:blue" onclick="opensignup()">sign up</span></h4>
    <button type="button" class="btn cancel" onclick="closeform()">Close</button>
  </form>
</div>
 
    <div class="form-popup" id="signupform">
<form class="form-container" action="signin" method="post">
 <h1>Create An Account</h1>

    <label for="username"><b>user name</b></label>
    <input type="text" placeholder="Enter user name" id="uname"  name="un" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" id="pwd" placeholder="Enter Password" name="pwd" required>
    
    
    <button type="submit" class="btn" id="submitted">sign up</button>
    <hr><br><h4>Already have an account <span style="color:blue" onclick="openform()">sign in</span></h4>
    <button type="button" class="btn cancel" onclick="closesignupform()">Close</button>
  </form>
</div> 
    
  <h2></h2>
  <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="C:\books\videos\slide1.jpg" style="width:100%;"> 
      </div>
      <div class="item">
        <img src="C:\books\videos\slide2.jpg" style="width:100%;"> 
      </div>
      <div class="item">
        <img src="C:\books\videos\slide3.jpg" style="width:100%;"> 
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<!-- Container (Pricing Section) -->
<div id="pricing" class="container-fluid">
  <div class="text-center">
    <h2>All products</h2>
    <h4>Select a products which suits you most</h4>
  </div>
  <div class="row slideanim">
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1 id="phone">Phone</h1>
        </div>
        <div class="panel-body">
          
                    <img src="C:\books\videos\web_project\phone.jpg">
                    
        </div>
        <div class="panel-footer">
          <h3>Starts from 7K</h3>
          <form action="phone.jsp">
          <button class="btn btn-lg">Shop more</button>
          </form>
        </div>
      </div>      
    </div>     
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1 id="laptop">Laptop</h1>
        </div>
        <div class="panel-body">
          
                    <img src="C:\books\videos\web_project\laptop.jpg" width="379" height="307">
        </div>
        <div class="panel-footer">
          <h3>Starts from 30K</h3>
          <form action="computers">
          <button class="btn btn-lg">Shop more</button>
                              </form>
        </div>
      </div>      
    </div>       
    <div class="col-sm-4 col-xs-12">
      <div class="panel panel-default text-center">
        <div class="panel-heading">
          <h1>Clearance Product</h1>
        </div>
        <div class="panel-body">
            <img src="C:\books\videos\web_project\discount.jpg" width="300" height="300">
        </div>
        <div class="panel-footer">
          <h3>Discounts start from 10%</h3>
          <form action="discount.jsp">
          
          <button class="btn btn-lg">Shop more</button>
          </form>
        </div>
      </div>      
    </div>  
  </div>
</div>

<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">CUSTOMER CARE</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Contact us and we'll get back to you within 24 hours.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span> Subhiksha, INDIA</p>
      <p><span class="glyphicon glyphicon-phone"></span> 9150915516</p>
      <p><span class="glyphicon glyphicon-envelope"></span> subhish@gmail.com</p>
    </div>
      <form action="registerComplaint" method="get">
    <div class="col-sm-7 slideanim">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
      <div class="row">
        <div class="col-sm-12 form-group">
          <button class="btn btn-default pull-right" type="submit"id="query">Send</button>
        </div>
      </div>
    </div>
      </form>
  </div>
</div>

<!-- Image of location/map -->


<footer class="container-fluid text-center">
  <a href="#myPage" title="To Top">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a>
  <p>Made By Subhiksha</p>
</footer>

<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
  
});
function openform()
{document.getElementById("myform").style.display="block";
    document.getElementById("login").style.display="none";
    
}
function closeform()
{document.getElementById("myform").style.display="none";
}

function opensignup(){
        document.getElementById("signupform").style.display="block";
}
function closesignupform(){
    document.getElementById("signupform").style.display="none";
    document.getElementById("myform").style.display="none";
}
</script>

</body>
</html>
