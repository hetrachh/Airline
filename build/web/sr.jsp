<%-- 
    Document   : sr
    Created on : 3 Sep, 2016, 2:15:24 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
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
                        <u><b><%out.println(name);
                                String Economy=request.getParameter("Economy");
                        String Business=request.getParameter("Business");
                        String First=request.getParameter("First");%></b></u>
    </div>
    <nav>
      <ul id="menu">
     <!--   <li ><a href="add.html"><span><span>Add Flight</span></span></a></li>
        <li><a href="update.html"><span><span>Update Flight</span></span></a></li>
        <li><a href="delete.html" ><span><span>Delete Flight</span></span></a></li>-->
        
        
        <li ><a href="flight_table.jsp"><span><span>Flight</span></span></a></li>
        <li id="menu_active"><a href="schedule.jsp"><span><span>Schedule</span></span></a></li>
        <li><a href="reg_user.jsp"><span><span>Users</span></span></a></li>
        <li class="end"><a href="sh_feedback.jsp"><span><span>FeedBack</span></span></a></li>
        <li><a href="fetch_offer.jsp"><span><span>Offer</span></span></a></li>
      </ul>
    </nav>
  </header>
  <!-- / header -->
  <div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Schedule</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="add_schedule.jsp">Add Schedule</a>
    <a href="update_schedule.jsp">Update Schedule</a>
    <a href="del_schedule.jsp">Delete Schedule</a>
    <a href="SearchSchedule.jsp">Search Schedule</a>
  </div>
</div>
   <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/airline"
     user="root"  password="root"/>
  <sql:query dataSource="${snapshot}" var="result">
SELECT * from schedule;
</sql:query>
<br>
<div class="schfont">Flight Details</div><br>
  <table cellpadding="4" cellspacing="0" border="1" class="listTable" >
     
     
      <tr>
          <th>Flight Id</th>
          <th>Flight Name</th>
          <th>Destination</th>
          <th>Source</th>
          <th>Departure Time</th>
          <th>Arrival Time</th>
          <th>Date</th>
          <th>Return Date</th>
          <th>Duration</th>
          <%if(Economy!=null){%>
          <th>Economy Class</th>
          <%} if(Business!=null){%>
          <th>Business Class</th>
          <%} if(First!=null){%>
          <th>First Class</th>
          <%}%>
         
      </tr>
      <c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.flightno}"/></td>
   <td><c:out value="${row.flight_name}"/></td>
   <td><c:out value="${row.destination}"/></td>
   <td><c:out value="${row.source}"/></td>
   <td><c:out value="${row.dep_time}"/></td>
     <td><c:out value="${row.arr_time}"/></td>
  <td><c:out value="${row.date}"/></td>
  <td><c:out value="${row.rdate}"/></td>
      <td><c:out value="${row.duration}"/></td>
      <%if(Economy!=null){%>
      <td>₹<c:out value="${row.price}"/><br><c:out value="${row.etotal}"/>&nbsp;Seats&nbsp;left</td>
          <%} if(Business!=null){%>
      <td>₹<c:out value="${row.bprice}"/><br><c:out value="${row.btotal}"/>&nbsp;Seats&nbsp;left</td>
          <%} if(First!=null){%>
      <td>₹<c:out value="${row.fprice}"/><br><c:out value="${row.ftotal}"/>&nbsp;Seats&nbsp;left</td>
          <%}%>
</tr>
</c:forEach>
  </table>
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