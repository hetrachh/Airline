<%-- 
    Document   : schedule
    Created on : May 7, 2016, 12:09:35 PM
    Author     : Het
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<title>AirLines</title>
<meta charset="utf-8">
<link rel="stylesheet" href="crud.css"/>
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
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>
<body id="page1">
<div class="main">
  <!--header -->
  <header>
    <div class="wrapper">
      <h1><a href="index.html" id="logo">AirLines</a></h1>
      <span id="slogan">Fast, Frequent &amp; Safe Flights</span>
      <nav id="top_nav">
        <ul>
          <li><a href="flight_table.jsp" class="nav1">Home</a></li>
         <!-- <li><a href="#" class="nav2">Sitemap</a></li>-->
          <li><a href="log_out.jsp" class="nav2">Log Out</a></li>
          <!--<li><a href="contacts.html" class="nav3">Contact</a></li>-->
        </ul>
      </nav>
      <%String name = (String) session.getAttribute("email"); %>
		        <strong>Welcome To</strong>
                        <u><b><%out.println(name);%></b></u>

    </div>
    <nav>
      <ul id="menu">
         <li ><a href="flight_table.jsp"><span><span>Flight</span></span></a></li>
        <li ><a href="schedule.jsp"><span><span>Schedule</span></span></a></li>
        <li id="menu_active"><a href="reg_user.jsp"><span><span>Users</span></span></a></li>
        <li class="end"><a href="sh_feedback.jsp"><span><span>FeedBack</span></span></a></li>
        <li><a href="fetch_offer.jsp"><span><span>Offer</span></span></a></li>
        <li><a href="seecontacts.jsp"><span><span>Contacts</span></span></a></li>
      </ul>
    </nav>
      
      
  </header>
  <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Booking</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="update_ticket.jsp">Update Ticket</a>
    <a href="cancle_ticket.jsp">Cancellation Ticket</a>
    
  </div>
</div>
   
	
                        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/airline"
     user="root"  password="root"/>
  <sql:query dataSource="${snapshot}" var="result">
      
SELECT * from book;
</sql:query>
<br>
<div class="schfont">Bookings</div><br>
  <table cellpadding="4" cellspacing="0" border="1" class="listTable1" >
     
     
      <tr>
          <th>User Name</th>
          <th>Flight Id</th>
          <th>Name</th>
          <th>Source</th>
          <th>Destination</th>                    
          
          <th>Date</th>
          <th>Ticket Type</th>
          <th>Adult</th>
          <th>Children</th>
          <th>Total</th>
          <th>Ticket Number</th>
          
      </tr>
      <c:forEach var="row" items="${result.rows}">
<tr>
    <td><c:out value="${row.username}"/></td>
   <td><c:out value="${row.flightid}"/></td>
   <td><c:out value="${row.name}"/></td>
   <td><c:out value="${row.fromplace}"/></td>
   <td><c:out value="${row.toplace}"/></td>
     <td><c:out value="${row.date}"/></td>
      <td><c:out value="${row.tickettype}"/></td>
     <td><c:out value="${row.adult}"/></td>
     <td><c:out value="${row.child}"/></td>
      <td><c:out value="${row.total}"/></td>
      <td><c:out value="${row.ticketnum}"/></td>
      
      
</tr>
</c:forEach>
          
  </table>
  
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