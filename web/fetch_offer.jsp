<%-- 
    Document   : fetch_offer
    Created on : Jun 10, 2016, 3:51:48 PM
    Author     : Het
--%>


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
<link rel="stylesheet" href="css/dropdown.css" type="text/css" media="all">
        <script type="text/javascript" src="js/dropdown.js" ></script>

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
<body id="page1">
<div class="main">
  <!--header -->
  <header>
    <div class="wrapper">
      <h1><a href="index.html" id="logo">AirLines</a></h1>
      <span id="slogan">Fast, Frequent &amp; Safe Flights</span>
      <nav id="top_nav">
        <ul>
          <li><a href="fetch_offer.jsp" class="nav1">Home</a></li>
         <!-- <li><a href="#" class="nav2">Sitemap</a></li>-->
          <li><a href="logout.jsp" class="nav2">Log Out</a></li>
          
        </ul>
      </nav>
      <%String name = (String) session.getAttribute("username"); %>
		        <strong>Welcome To</strong>
                        <u><b><%out.println(name);%></b></u>

      
    </div>
    <nav>
      <ul id="menu">
        <li ><a href="flight_table.jsp"><span><span>Flight</span></span></a></li>
        <li><a href="schedule.jsp"><span><span>Schedule</span></span></a></li>
        <li><a href="reg_user.jsp"><span><span>Users</span></span></a></li>
        <li><a href="sh_feedback.jsp" class="end"><span><span>FeedBack</span></span></a></li>
        <li id="menu_active"><a href="fetch_offer.jsp"><span><span>Offer</span></span></a></li>
        <li><a href="seecontacts.jsp"><span><span>Contacts</span></span></a></li>
      </ul>
    </nav>
  </header>
  <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Offer</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="offers.jsp">Add Offer</a>
    <a href="update_off.jsp">Update Offer</a>
    <a href="delete_off.jsp">Delete Offer</a>
    
  </div>
  <!-- / header -->
  <!--content -->
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/airline"
     user="root"  password="root"/>
  <sql:query dataSource="${snapshot}" var="result">
SELECT * from offer;
</sql:query>
<br>
<div class="schfont">Offers</div><br>
  <table cellpadding="4" cellspacing="0" border="1" class="listTable" >
     
     
      <tr>
          <th>Flight Id</th>
          <th>Flight Name</th>
                             
          <th>Departure Time</th>
          <th>Arrival Time</th>
          <th>Departure City</th>
          <th>Arrival CIty</th> 
          <th>Duration</th>
          <th>Price</th>
          <th>Photo</th>
      </tr>
      <c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.fligt_id}"/></td>
   <td><c:out value="${row.flight_name}"/></td>
   <td><c:out value="${row.dep_time}"/></td>
   <td><c:out value="${row.arr_time}"/></td>
   <td><c:out value="${row.dep_city}"/></td>
   <td><c:out value="${row.arr_city}"/></td>
      <td><c:out value="${row.duration}"/></td>
     <td><c:out value="${row.price}"/></td> 
     <td><img height="42" width="42" src="retrieveimage?<c:out value="${row.fligt_id}"/>"/></td>
      
</tr>
</c:forEach>
          
  </table>
  
  <!--<div id="slider" class="nivoSlider" style="position: relative; background: url(&quot;images/banner1.jpg&quot;) no-repeat;"> <img src="images/banner1.jpg" alt="" style="display: none;"> <img src="images/banner2.jpg" alt="" style="display: none;"> <img src="images/banner3.jpg" alt="" style="display: none;"> <div class="nivo-slice" style="left: 0px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) 0px 0% no-repeat;"></div><div class="nivo-slice" style="left: 37px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -37px 0% no-repeat;"></div><div class="nivo-slice" style="left: 74px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -74px 0% no-repeat;"></div><div class="nivo-slice" style="left: 111px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -111px 0% no-repeat;"></div><div class="nivo-slice" style="left: 148px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -148px 0% no-repeat;"></div><div class="nivo-slice" style="left: 185px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -185px 0% no-repeat;"></div><div class="nivo-slice" style="left: 222px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -222px 0% no-repeat;"></div><div class="nivo-slice" style="left: 259px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -259px 0% no-repeat;"></div><div class="nivo-slice" style="left: 296px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -296px 0% no-repeat;"></div><div class="nivo-slice" style="left: 333px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -333px 0% no-repeat;"></div><div class="nivo-slice" style="left: 370px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -370px 0% no-repeat;"></div><div class="nivo-slice" style="left: 407px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -407px 0% no-repeat;"></div><div class="nivo-slice" style="left: 444px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -444px 0% no-repeat;"></div><div class="nivo-slice" style="left: 481px; width: 37px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -481px 0% no-repeat;"></div><div class="nivo-slice" style="left: 518px; width: 43px; height: 100%; opacity: 1; background: url(&quot;images/banner2.jpg&quot;) -518px 0% no-repeat;"></div><div class="nivo-caption"></div></div>
  content end-->
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