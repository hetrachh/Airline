<%-- 
    Document   : contacts
    Created on : Jun 9, 2016, 3:44:41 PM
    Author     : Het
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
<title>AirLines | Contacts</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Cabin_400.font.js"></script>
<script type="text/javascript" src="js/tabs.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>
<body id="page6">
<div class="main">
  <!--header -->
  <header>
    <div class="wrapper">
      <h1><a href="index.html" id="logo">AirLines</a></h1>
      <span id="slogan">Fast, Frequent &amp; Safe Flights</span>
      <nav id="top_nav">
        <ul>
          <li><a href="index.jsp" class="nav1">Home</a></li>
          <li><a href="log_out.jsp" class="nav2">Log Out</a></li>
          <li><a href="contacts.jsp" class="nav3">Contact</a></li>
        </ul>
      </nav>
      <%String name = (String) session.getAttribute("email"); %>
		        <strong>Welcome To</strong>
                        <u><b><%out.println(name);%></b></u>    
    
    </div>
    <nav>
      <ul id="menu">
        <li><a href="index.jsp"><span><span>Home</span></span></a></li>
        <li><a href="offer.jsp"><span><span>Offers</span></span></a></li>
        <li><a href="ticket.jsp"><span><span>Book</span></span></a></li>
        <li><a href="services.jsp"><span><span>Services</span></span></a></li>
        <li><a href="safety.jsp"><span><span>Safety</span></span></a></li>
        <li id="menu_active" class="end"><a href="contacts.jsp"><span><span>Contacts</span></span></a></li>
      </ul>
    </nav>
  </header>
  <!-- / header -->
  <!--content -->
  <section id="content">
    <div class="wrapper pad1">
      <article class="col1">
        <div class="box1">
          <h2 class="top">Contact Us</h2>
          <div class="pad">
            <div class="wrapper pad_bot1">
              <p class="cols pad_bot2"><strong>Country:<br>
                City:<br>
                Address:<br>
                Email:</strong></p>
              <p class="color1 pad_bot2">INDIA<br>
                Aptech<br>
                C.G.Road<br>
                <a href="#">hetrachh20@gmail.com,
                    darshilarora@rocketmail.com</a></p>
            </div>
          </div>
         
     
        </div>
      </article>
      <article class="col2">
        <h3 class="pad_top1">Contact Form</h3>
        <form id="ContactForm" action="Contacts" method="post">
          <div>
            <div  class="wrapper"> <span>Name:</span>
              <input type="text" name="name" class="input" >
            </div>
            <div  class="wrapper"> <span>Email:</span>
              <input type="text" name="email" class="input" >
            </div>
            <div  class="textarea_box"> <span>Message:</span>
              <textarea  cols="1" rows="1" name="msg"></textarea>
            </div>
            <input type="submit" value="send" class="button1"> <input type="reset" value="reset" class="button1"> </div>
        </form>
      </article>
    </div>
  </section>
  <!--content end-->
  <!--footer -->
  <footer>
    <div class="wrapper">
      <ul id="icons">
        <li><a href="feedback.html" class="normaltip"><img src="images/feedback.png" alt="" height="42" width="42"></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon1.jpg" alt="" height="42" width="42"></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon2.jpg" alt="" height="42" width="42"></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon3.jpg" alt="" height="42" width="42"></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon4.jpg" alt="" height="42" width="42"></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon5.jpg" alt="" height="42" width="42"></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon6.jpg" alt="" height="42" width="42"></a></li>
      </ul>
      <div class="links">Copyright &copy; <a href="#">Domain Name</a> All Rights Reserved<br>
        Design by Darshil Arora,Nilay Patel and Het Rachh</div>
    </div>
  </footer>
  <!--footer end-->
</div>
<script type="text/javascript">Cufon.now();</script>
</body>
</html>