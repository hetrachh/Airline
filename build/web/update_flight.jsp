<%-- 
    Document   : update_flight
    Created on : Jun 7, 2016, 6:37:16 PM
    Author     : Het
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="login-css.css">
	<script type="text/javascript" src="jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="javascript.js"></script>
        <title>AirLines</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/dropdown.css" type="text/css" media="all">
        <script type="text/javascript" src="js/dropdown.js" ></script>
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
          <li><a href="flight_table.jsp" class="nav1">Home</a></li>
         <!-- <li><a href="#" class="nav2">Sitemap</a></li>-->
          <li><a href="logout.jsp" class="nav2">Log Out</a></li>
          <!--<li><a href="contacts.html" class="nav3">Contact</a></li>-->
        </ul>
      </nav>
      <%String name = (String) session.getAttribute("username"); %>
		        <strong>Welcome To</strong>
                        <u><b><%out.println(name);%></b></u>
    </div>
                  
    <nav>
      <ul id="menu">
      <li id="menu_active"><a href="flight_table.jsp"><span><span>Flight</span></span></a></li>
        <li><a href="schedule.jsp"><span><span>Schedule</span></span></a></li>
        <li><a href="reg_user.jsp"><span><span>User Management</span></span></a></li>
        <li><a href="sh_feedback.jsp" class="end"><span><span>FeedBack</span></span></a></li>
        <li><a href="fetch_offer.jsp"><span><span>Offer</span></span></a></li>
      </ul>
      </ul>
    </nav>
  </header>
     <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Flight</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="add_flight.jsp">Add Flight</a>
    <a href="update_flight.jsp">Update Flight</a>
    <a href="delete_flight.jsp">Delete Flight</a>
    <a href="filterflight.jsp">Filter Flight</a>
    
  </div>
  
</div>
  <!-- / header -->
		<span href="#" class="button" id="toggle-login">Update Flight</span>

		<div id="login">
		  <div id="triangle"></div>
		  <!--<h1>Log in</h1>-->
                  <form method ="post"  action="update.jsp" >
                      <input type="text" name="flightno" placeholder="Flight No." />
                      <input type="text" name="flight_name" placeholder="Flight Name" />
			<input type="text" name="destination" placeholder="Destination" />
			<input type="text" name="source" placeholder="Source" />
                         <!--<input type="text" name="time" placeholder="Time"/>-->
                         <input type="text" name="dtime" placeholder="Departure Time"/>
                        <input type="text" name="atime" placeholder="Arrival Time"/>
                         <input type="date"  name="date" value="" id="datepicker"/>
                        <select name="class">
                            <option  value="business" > Business </option>
                            <option  value="economic" > Economic </option>
                          <option  value="first class" > First Class </option>

			</select>
                         <input type="text" name="total_cap" placeholder="Total Capacity"/>
                         <input type="text" name="Duration" placeholder="Duration"/>
                         <input type="text"  name="price" placeholder="Price"/>
                         <input type="submit" value="Update Flight" />
                         
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