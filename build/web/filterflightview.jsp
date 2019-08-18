<%-- 
    Document   : filter_view
    Created on : May 30, 2016, 4:12:05 PM
    Author     : Aptech-pc
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
   <table width="900px" align="center"
               style="border:1px solid #000000;">
            <tr>
                <td colspan=11 align="center"
                    style="background-color:teal">
                    <b>User Record</b></td>
            </tr>
            <tr style="background-color:lightgrey;">
                <td><b>Flight No</b></td>
                <td><b>Flight Name</b></td>
                <td><b>Destination</b></td>
                <td><b>Source</b></td>
                <td><b>Class</b></td>
                <td><b>Departure Time</b></td>
                <td><b>Arrival Time</b></td>
                <td><b>Date</b></td>
                <td><b>Total Capacity</b></td>
                <td><b>Duration</b></td>
                <td><b>Price</b></td>
            </tr>
            <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("piList") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("piList");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(2)%></td>
                <td><%=pList.get(3)%></td>
                   <td><%=pList.get(4)%></td>
                      <td><%=pList.get(5)%></td>
                         <td><%=pList.get(6)%></td>
                            <td><%=pList.get(7)%></td>
                               <td><%=pList.get(8)%></td>
                                  <td><%=pList.get(9)%></td>
                                     <td><%=pList.get(10)%></td>
                                       
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#eeffee"><b>No Record Found..</b></td>
            </tr>
            <%            }
            %>
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