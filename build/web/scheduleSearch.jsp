<%-- 
    Document   : schedule
    Created on : May 7, 2016, 12:09:35 PM
    Author     : Het
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.Date"%>
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
          <li><a href="logout.jsp" class="nav2">Log Out</a></li>
          <!--<li><a href="contacts.html" class="nav3">Contact</a></li>-->
        </ul>
      </nav>
      <%String name = (String) session.getAttribute("mail"); %>
		        <strong>Welcome To</strong>
                        <u><b><%out.println(name);
                                   String from=request.getParameter("from");
                        String to=request.getParameter("to");
                        int adult=Integer.parseInt(request.getParameter("adult"));
                        int child=Integer.parseInt(request.getParameter("child"));
                        String date=request.getParameter("date");
                        String rdate=request.getParameter("rdate");
                        String mail=request.getParameter("mail");
                        String round=request.getParameter("round");
                        String one=request.getParameter("one");
                        int class1=Integer.parseInt(request.getParameter("class1"));
      %></b></u>
    </div>
    <nav>
      <ul id="menu">
         <li id="menu_active"><a href="index.jsp"><span><span>Home</span></span></a></li>
        <li><a href="offer.jsp"><span><span>Offers</span></span></a></li>
        <li><a href="ticket.jsp"><span><span>Book</span></span></a></li>
        <li><a href="services.jsp"><span><span>Services</span></span></a></li>
        <li><a href="safety.jsp"><span><span>Safety</span></span></a></li>
        <li class="end"><a href="contacts.jsp"><span><span>Contacts</span></span></a></li>
        <!--<li ><a href="contacts.html"><span><span>Contacts</span></span></a></li>-->
      </ul>
    </nav>
      
      
  </header>
 <!-- <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Schedule</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="add_schedule.jsp">Add Schedule</a>
    <a href="update_schedule.jsp">Update Schedule</a>
    <a href="del_schedule.jsp">Delete Schedule</a>
    
  </div>
</div>-->

                        
                        <form action="book.jsp" method="get">
                          
                            <input type="hidden" name="from" value="<%=from%>"/>
                                   <input type="hidden" name="to" value="<%=to%>"/>
                                   <input type="hidden" name="adult" value="<%=adult%>"/>
                                   <input type="hidden" name="child" value="<%=child%>"/>
                                   <input type="hidden" name="sum" value="<%=adult+child%>"/>
                                   <input type="hidden" name="date" value="<%=date%>"/>
                                   <input type="hidden" name="mail" value="<%=mail%>"/>
                                   <input type="hidden" name="rdate" value="<%=rdate%>"/>
                                 
  <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/airline"
     user="root"  password="root"/>
  <sql:query dataSource="${snapshot}" var="result">
      <%if(round==null){
 %>         
     
SELECT * from schedule where source="<%=from%>" AND destination="<%=to%>" AND date="<%=date%>";
 <%}else{%>
SELECT * from schedule where source="<%=from%>" AND destination="<%=to%>" AND date="<%=date%>" AND rdate="<%=rdate%>";
<%}%>
  </sql:query>

<br>
<div class="schfont">Schedule</div><br>
  <table cellpadding="4" cellspacing="0" border="1" class="listTable" >
     
     
      <tr>
          <th>Flight Name</th>
          <th>Destination</th>
          <th>Source</th>                    
          <th>Departure Time</th>
          <th>Arrival Time</th>
          <th>Date</th>
          <%if(round!=null){%>
          <th>Return Date</th>
          <%}%>
          <th>Duration</th>
          <%switch(class1){
              case 1:
          %>
          <th>Economy</th>
          <%break;
          case 2:%>
          <th>Business</th> 
          <%break;
          case 3:%>
          <th>First Class</th> <%break;
                  default:%>
          <th>Economy</th>
          <th>Business</th>
           <th>First Class</th> 
       <%   }%>
          <th>Book</th>
      </tr>
      <c:forEach var="row" items="${result.rows}">
<tr>
    <input type="hidden" name="flightid" value="<c:out value="${row.flightno}"/>"/>
   <td><c:out value="${row.flight_name}"/></td>
   <td><c:out value="${row.destination}"/></td>
   <td><c:out value="${row.source}"/></td>
   <td><c:out value="${row.dep_time}"/></td>
   <td><c:out value="${row.arr_time}"/></td>
     <td><c:out value="${row.date}"/></td>
     <% if(round!=null){%>
   <td><c:out value="${row.rdate}"/></td>
   <input type="hidden" name="round" value="<%=round%>"/>
   <input type="hidden" value="<c:out value="${row.rdate}"/>"/>
   <%}%>
      <td><c:out value="${row.duration}"/></td>
      <input type="hidden" name="duration" value="<c:out value="${row.duration}"/>"/>
      <%switch(class1){
              case 1:
          %>
          <td>₹<c:out value="${row.price}"/><br><c:out value="${row.etotal}"/>&nbsp;Seats&nbsp;left</td>
   <input type="hidden" name="class" value="Economy"/>
   <input type="hidden" name="price" value="<c:out value="${row.price}"/>"/>
  
   <input type="hidden" name="total" value="<c:out value="${row.etotal}"/>"/>
   <%break;
   case 2:%>
   <td>₹<c:out value="${row.bprice}"/><br><c:out value="${row.btotal}"/>&nbsp;Seats&nbsp;left</td>
   <input type="hidden" name="class" value="Business"/>
   <input type="hidden" name="price" value="<c:out value="${row.bprice}"/>"/>
  
   <input type="hidden" name="total" value="<c:out value="${row.btotal}"/>"/>
  <%break;
   case 3:%>
   <td>₹<c:out value="${row.fprice}"/><br><c:out value="${row.ftotal}"/>&nbsp;Seats&nbsp;left</td>
   
   <input type="hidden" name="price" value="<c:out value="${row.fprice}"/>"/>
   <input type="hidden" name="class" value="First Class"/>
   <input type="hidden" name="total" value="<c:out value="${row.ftotal}"/>"/>
   <%break;
   default:%>
   <td>₹<c:out value="${row.price}"/><br><c:out value="${row.etotal}"/>&nbsp;Seats&nbsp;left</td>
   
   <input type="hidden" name="price" value="<c:out value="${row.price}"/>"/>
   
   <input type="hidden" name="etotal" value="<c:out value="${row.etotal}"/>"/>
   <td>₹<c:out value="${row.bprice}"/><br><c:out value="${row.btotal}"/>&nbsp;Seats&nbsp;left</td>
   
   <input type="hidden" name="bprice" value="<c:out value="${row.bprice}"/>"/>
  
   <input type="hidden" name="btotal" value="<c:out value="${row.btotal}"/>"/>
   <td><c:out value="${row.fprice}"/><br><c:out value="${row.ftotal}"/>&nbsp;Seats&nbsp;left</td>
   
   <input type="hidden" name="fprice" value="<c:out value="${row.fprice}"/>"/>
   
   <input type="hidden" name="etotal" value="<c:out value="${row.ftotal}"/>"/>
   <%}%>
   <input type="hidden" name="dtime" value="<c:out value="${row.dep_time}"/>"/>
   <input type="hidden" name="atime" value="<c:out value="${row.arr_time}"/>"/>
          
     <td><input type="submit" value="book"/></td>
    
      
</tr>
</c:forEach>
          
  </table>
  
  
                        </form>
          
          
  <!--content end-->
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