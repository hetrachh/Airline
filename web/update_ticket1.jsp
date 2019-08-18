<%-- 
    Document   : update_ticket
    Created on : Jun 20, 2016, 3:06:09 PM
    Author     : Het
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
	<link rel="stylesheet" href="login-css.css">
	<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="javascript.js"></script>
        <title>AirLines</title>
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
        
        <link rel="stylesheet" href="css/dropdown.css" type="text/css" media="all">
        <script type="text/javascript" src="js/dropdown.js" ></script>
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>

   <!--     <script>  
                function validateform(){  
                var fname=document.add.fname.value;
                var lname=document.add.lname.value;
                var pass=document.add.pass.value;  
                var cfmpass=document.add.cfmpass.value;
                var phno=document.add.phno.value;
                var city=document.add.city.value;

                if (fname==null || fname=="")
                {  
                  alert("First Name can't be blank");  
                  return false;  
                }
                else if(pass.length<6)
                {  
                  alert("Password must be at least 6 characters long.");  
                  return false;  
                  }
                  else if(cfmpass!=pass)
                {  
                  alert("Password Not Match");  
                  return false;  
                  }
                  else if(lname==null || lname=="")
                {  
                  alert("Last Name can't be blank");  
                  return false;  
                }
                else if(city==null || city=="")
                {
                    alert("Insert City Name");
                    return false;
                }
                }  
        </script>-->
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>
	<body id="page1">
<div class="main">
              <header>
    <div class="wrapper">
      <h1><a href="index.html" id="logo">AirLines</a></h1>
      <span id="slogan">Fast, Frequent &amp; Safe Flights</span>
      <nav id="top_nav">
        <ul>
          <li><a href="index.html" class="nav1">Home</a></li>
         <!-- <li><a href="#" class="nav2">Sitemap</a></li>-->
          <li><a href="Login.html" class="nav2">Login/Sign Up</a></li>
          <li><a href="contacts.html" class="nav3">Contact</a></li>
        </ul>
      </nav>
      <%String name = (String) session.getAttribute("email"); %>
		        <strong>Welcome To</strong>
                        <u><b><%out.println(name);%></b></u>
    </div>
          
    
                  
                  <nav>
      <ul id="menu">
        <li id="menu_active"><a href="index.jsp"><span><span>Home</span></span></a></li>
        <li><a href="offer.jsp"><span><span>Offers</span></span></a></li>
        <li><a href="ticket.jsp"><span><span>Book</span></span></a></li>
        <li><a href="services.jsp"><span><span>Services</span></span></a></li>
        <li><a href="safety.jsp"><span><span>Safety</span></span></a></li>
        <li class="end"><a href="contacts.jsp"><span><span>Contacts</span></span></a></li>
      </ul>
    </nav>
  </header>
    <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Booking</button>
  <div id="myDropdown" class="dropdown-content">
      <a href="book.jsp">Ticket Book</a>
    <a href="update_ticket1.jsp">Update Booking</a>
    <a href="cancle_ticket1.jsp">Delete Booking</a>
        </div>
</div>
  <!-- / header -->
		<span href="#" class="button" id="toggle-login">Update Booking</span>

		<div id="login">
		  <div id="triangle"></div>
		  <!--<h1>Log in</h1>-->
                  <form method ="post"  action="updatebooking.jsp" >
                       <input type="text" name="Username" placeholder="Username" />
                        <input type="text" name="Name" placeholder="Name" />
                      <input type="text" name="fligt_id" placeholder="Flight ID." />
                      <input type="text" name="fromplace" placeholder="From Place" />
			<input type="text" name="to place" placeholder="To Place" />
			<input type="date" name="date"  />
                         <!--<input type="text" name="time" placeholder="Time"/>-->
                        <!-- <input type="text" name="arr_city" placeholder="Arrival City"/>-->
                       <!-- <input type="text" name="" placeholder="Arrival Time"/>
                         <input type="date"  name="date" value="" id="datepicker"/>-->
                        <select name="class">
                            <option  value="business" > Business </option>
                            <option  value="economic" > Economic </option>
                          <option  value="first class" > First Class </option>

			</select>
                         <input type="number" name="Adult" placeholder="Adult"/>
                         <input type="number" name="Children" placeholder="Children"/>
                         <input type="text" name="ticket" placeholder="Ticket Number"/>
                         <input type="submit" value="Update Booking" />
                         
		  </form>
                  <br>
                  
		</div>
                <!--footer -->
  <footer>
    <div class="wrapper">
      <ul id="icons">
        <li><a href="#" class="normaltip"><img src="images/icon1.jpg" alt=""></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon2.jpg" alt=""></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon3.jpg" alt=""></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon4.jpg" alt=""></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon5.jpg" alt=""></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon6.jpg" alt=""></a></li>
      </ul>
      <div class="links">Copyright &copy; <a href="#">Domain Name</a> All Rights Reserved<br>
        Design by Darshil Arora,Nilay Patel and Het Rachh</div>
    </div>
  </footer>
  <!--footer end-->
</div>
<script type="text/javascript">Cufon.now();</script>
<script type="text/javascript">
$(document).ready(function () {
    tabs.init();
});
jQuery(document).ready(function ($) {
    $('#form_1, #form_2, #form_3').jqTransform({
        imgPath: 'jqtransformplugin/img/'
    });
});
$(window).load(function () {
    $('#slider').nivoSlider({
        effect: 'fade', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft' 
        slices: 15,
        animSpeed: 500,
        pauseTime: 6000,
        startSlide: 0, //Set starting Slide (0 index)
        directionNav: false, //Next & Prev
        directionNavHide: false, //Only show on hover
        controlNav: false, //1,2,3...
        controlNavThumbs: false, //Use thumbnails for Control Nav
        controlNavThumbsFromRel: false, //Use image rel for thumbs
        controlNavThumbsSearch: '.jpg', //Replace this with...
        controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
        keyboardNav: true, //Use left & right arrows
        pauseOnHover: true, //Stop animation while hovering
        manualAdvance: false, //Force manual transitions
        captionOpacity: 1, //Universal caption opacity
        beforeChange: function () {},
        afterChange: function () {},
        slideshowEnd: function () {} //Triggers after all slides have been shown
    });
});
</script>
</body>
</html>