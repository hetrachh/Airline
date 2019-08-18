<%-- 
    Document   : book
    Created on : Jun 9, 2016, 3:32:49 PM
    Author     : Het
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
<title>AirLines | Book</title>
<%@ page import ="java.sql.*" %>
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
  <script>
$(document).ready(function() {
    $('#creditCardForm').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            cc: {
                validators: {
                    creditCard: {
                        message: 'The credit card number is not valid'
                    }
                }
            }
        }
    });
});
</script>
    
<script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
  
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>
<body id="page3">
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
      <%String name = (String) session.getAttribute("email");
      %>
		        <strong>Welcome To</strong>
                        <u><b><%out.println(name);%></b></u>    
    
    </div>
    <nav>
      <ul id="menu">
        <li><a href="index.jsp"><span><span>Home</span></span></a></li>
        <li><a href="offer.jsp"><span><span>Offers</span></span></a></li>
        <li id="menu_active"><a href="book.jsp"><span><span>Book</span></span></a></li>
        <li><a href="services.jsp"><span><span>Services</span></span></a></li>
        <li><a href="safety.jsp"><span><span>Safety</span></span></a></li>
        <li class="end"><a href="contacts.jsp"><span><span>Contacts</span></span></a></li>
      </ul>
    </nav>
  </header>
   
  <!--content -->
  <section id="content">
    <div class="wrapper pad1">
      <article class="col1">
        <div class="box1">
          <h2 class="top">Hot Offers of the Week</h2>
          <div class="pad"> <strong>Birmingham</strong><br>
            <ul class="pad_bot1 list1">
              <li><span class="right color1">from GBP 143.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>London (LCY)</strong><br>
            <ul class="pad_bot1 list1">
              <li><span class="right color1">from GBP 176.-</span><a href="book2.html">Geneva</a></li>
              <li><span class="right color1">from GBP 109.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>London (LHR)</strong><br>
            <ul class="pad_bot2 list1">
              <li><span class="right color1">from GBP 100.-</span><a href="book2.html">Geneva</a></li>
              <li><span class="right color1">from GBP 112.-</span><a href="book2.html">Zurich</a></li>
              <li><span class="right color1">from GBP 88.-</span><a href="book2.html">Basel</a></li>
            </ul>
            <strong>Manchester</strong><br>
            <ul class="pad_bot2 list1">
              <li><span class="right color1">from GBP 97.-</span><a href="book2.html">Basel</a></li>
              <li><span class="right color1">from GBP 103.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>Edinburgh</strong><br>
            <ul class="pad_bot2 list1">
              <li><span class="right color1">from GBP 165.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>Birmingham</strong><br>
            <ul class="pad_bot1 list1">
              <li><span class="right color1">from GBP 143.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>London (LCY)</strong><br>
            <ul class="pad_bot1 list1">
              <li><span class="right color1">from GBP 176.-</span><a href="book2.html">Geneva</a></li>
              <li><span class="right color1">from GBP 109.-</span><a href="book2.html">Zurich</a></li>
            </ul>
            <strong>London (LHR)</strong><br>
            <ul class="pad_bot2 list1">
              <li><span class="right color1">from GBP 100.-</span><a href="book2.html">Geneva</a></li>
              <li><span class="right color1">from GBP 112.-</span><a href="book2.html">Zurich</a></li>
              <li><span class="right color1">from GBP 88.-</span><a href="book2.html">Basel</a></li>
            </ul>
          </div>
        </div>
      </article>
      <article class="col2">
        <div class="tabs2">
        
     
            <h1 style="font-style: bold"><hr>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Flight Booking Form
                       
            </h1>
        </div>
          <% String from = request.getParameter("from"); 
String to = request.getParameter("to");
String date=request.getParameter("date");
String flightid=request.getParameter("flightid");
String mail=request.getParameter("mail");
String adult=request.getParameter("adult");
String child=request.getParameter("child");
String class1=request.getParameter("class");
int sum=Integer.parseInt(request.getParameter("sum"));
int total=Integer.parseInt(request.getParameter("total"));
String duration=request.getParameter("duration");
int price=Integer.parseInt(request.getParameter("price"));
String dtime=request.getParameter("dtime");
String atime=request.getParameter("atime");
String round=request.getParameter("round");
String rdate=request.getParameter("rdate");
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from schedule where flightno="+flightid);
          //if(rs.next()){ %>
          
          <div class="content">
            <div class="tab-content" id="Flight">
              <form name="frm" action="Bookingdone.jsp" class="form_5" method="get" onSubmit="return ValidateDate()">
                <div>
                  <div class="radio">
                    <div class="wrapper">
                      <input type="hidden" name="name1" checked/>
                      <span class="left"></span>
                      <input type="hidden" name="to" value="<%=mail%>"/>
                      <input type="hidden" name="duration" value="<%=duration%>"/>
                      
                      <input type="hidden" name="user" value="darshilarora@rocketmail.com"/><!--write eamil address-->
                      <input type="hidden" name="pass" value="45273492ineedu"/><!--write your password-->
                      <input type="hidden" name="sub" value="Air ticket booking"/>
                     
                      <input type="hidden" name="total" value="<%=total%>"/>
                      <span class="left"></span> </div>
                     
                  </div>
                  <div class="pad">
                    <div class="wrapper under">
                      <div class="col1">
                      <!--  <div class="row"><span class="left">Username</span>
                          <input type="text" class="input" name="username">-->
                     
                          <div class="row"><span class="left"></span>
                               <c:forEach var="i" begin="1" end="<%=sum%>">
                                   <span class="left">Name${i}</span>
                          <input type="text" class="input" name="name">
                          <%Random rand = new Random();
int random = rand.nextInt(900000000) + 1000000000;%>
 <input type="hidden" name="msg" value="Your Ticket is booked and ticketid=<%=random%>"/>
                          <input type="hidden" name="ticketid" value="<%=random%>${i}"/>
                                               <!-- <div class="row"><span class="left">Password</span>
                          <input type="password" class="input" name="pass">-->
                          <br/>
                               </c:forEach>     
                      </div>
                          
                    
                        <div class="row"><span class="left">Flight Id</span>
                          <input type="text" class="input" name="flightid" value="<%=flightid%>"/>
                        
                          <div class="row"><span class="left">From Place</span>
                              <input type="text" class="input" name="from" value="<%=from%>">
                                                    <div class="row"><span class="left">To Place</span>
                                                        <input type="text" class="input" name="to1" value="<%=to%>">
                          
                      <!--<div class="check_box">
                        <input type="checkbox">
                        <span>One way</span> <a href="#" class="help"></a> </div>
                      <div class="check_box">
                        <!--<input type="checkbox">
                        <span>Direct flights</span> </div>-->
                    
                    <!--<div class="wrapper under"> <span class="left">Flights</span>
                      <div class="cols marg_right1">
                        <h6>Outbound flight</h6>
                        <div class="row">
                          <input type="text" class="input1" value="03.05.2011"  onblur="if(this.value=='') this.value='03.05.2011'" onFocus="if(this.value =='03.05.2011' ) this.value=''">
                          <input type="text" class="input1" value="+/- 0 Days"  onblur="if(this.value=='') this.value='+/- 0 Days'" onFocus="if(this.value =='+/- 0 Days' ) this.value=''">
                        </div>
                    
                        <div class="marg_top1">
                          <div class="select1"> <a href="#" class="marker_left"></a>
                            <select>
                              <option>May 11</option>
                              <option>June 11</option>
                              <option>July 11</option>
                            </select>
                            <a href="#" class="marker_right"></a> </div>
                        </div>
                        <div class="calendar">
                          <ul class="thead">
                            <li>Mon</li>
                            <li>Tue</li>
                            <li>Wed</li>
                            <li>Thu</li>
                            <li>Fri</li>
                            <li>Sat</li>
                            <li>Sun</li>
                          </ul>
                          <ul class="tbody">
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#" class="active">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li><a href="#">9</a></li>
                            <li><a href="#">10</a></li>
                            <li><a href="#">11</a></li>
                            <li><a href="#">12</a></li>
                            <li><a href="#">13</a></li>
                            <li><a href="#">14</a></li>
                            <li><a href="#">15</a></li>
                            <li><a href="#">16</a></li>
                            <li><a href="#">17</a></li>
                            <li><a href="#">18</a></li>
                            <li><a href="#">19</a></li>
                            <li><a href="#">20</a></li>
                            <li><a href="#">21</a></li>
                            <li><a href="#">22</a></li>
                            <li><a href="#">23</a></li>
                            <li><a href="#">24</a></li>
                            <li><a href="#">25</a></li>
                            <li><a href="#">26</a></li>
                            <li><a href="#">27</a></li>
                            <li><a href="#">28</a></li>
                            <li><a href="#">29</a></li>
                            <li><a href="#">30</a></li>
                            <li><a href="#">31</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="cols">
                        <h5>Outbound flight</h5>
                        <div class="row">
                          <input type="text" class="input1" value="03.05.2011"  onblur="if(this.value=='') this.value='03.05.2011'" onFocus="if(this.value =='03.05.2011' ) this.value=''">
                          <input type="text" class="input1" value="+/- 0 Days"  onblur="if(this.value=='') this.value='+/- 0 Days'" onFocus="if(this.value =='+/- 0 Days' ) this.value=''">
                        </div>
                        <div class="marg_top1">
                          <div class="select1"> <a href="#" class="marker_left"></a>
                            <select>
                              <option>May 11</option>
                              <option>June 11</option>
                              <option>July 11</option>
                            </select>
                            <a href="#" class="marker_right"></a> </div>
                        </div>
                        <div class="calendar">
                          <ul class="thead">
                            <li>Mon</li>
                            <li>Tue</li>
                            <li>Wed</li>
                            <li>Thu</li>
                            <li>Fri</li>
                            <li>Sat</li>
                            <li>Sun</li>
                          </ul>
                          <ul class="tbody">
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#" class="active">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li><a href="#">9</a></li>
                            <li><a href="#">10</a></li>
                            <li><a href="#">11</a></li>
                            <li><a href="#">12</a></li>
                            <li><a href="#">13</a></li>
                            <li><a href="#">14</a></li>
                            <li><a href="#">15</a></li>
                            <li><a href="#">16</a></li>
                            <li><a href="#">17</a></li>
                            <li><a href="#">18</a></li>
                            <li><a href="#">19</a></li>
                            <li><a href="#">20</a></li>
                            <li><a href="#">21</a></li>
                            <li><a href="#">22</a></li>
                            <li><a href="#">23</a></li>
                            <li><a href="#">24</a></li>
                            <li><a href="#">25</a></li>
                            <li><a href="#">26</a></li>
                            <li><a href="#">27</a></li>
                            <li><a href="#">28</a></li>
                            <li><a href="#">29</a></li>
                            <li><a href="#">30</a></li>
                            <li><a href="#">31</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                          </ul>
                        </div>
                      </div>
                    </div>-->
                                                    </div>
                 <span class="left">Date</span>
                         
                 <input type="text"  name="date" class="input" id="datepicker" value="<%=date%>"/>
                 
                     <%if(round!=null){%>
                          </div>
                     <span class="left">Return Date</span>
                 <input type="text" name="rdate" class="input" value="<%=rdate%>"/>
                 <input type="hidden" name="round" value="<%=round%>"/>
                        <%}%>
                    </div>
                  <div class="row"><span class="left">Departure Time</span>
                                                        <input type="text" class="input" name="dtime" value="<%=dtime%>">
                                                         <div class="row"><span class="left">Arrival Time</span>
                                                        <input type="text" class="input" name="atime" value="<%=atime%>">
                    <!--<div class="wrapper pad_bot1"> <span class="left">Passengers</span>
                      <div class="cols marg_right1">
                        <div class="row">
                          <input type="text" class="input2" value="2"  onblur="if(this.value=='') this.value='2'" onFocus="if(this.value =='2' ) this.value=''">
                          <span class="left">Adults</span> <a href="#" class="help"></a> </div>
                        <div class="row">
                          <input type="text" class="input2" value="0"  onblur="if(this.value=='') this.value='0'" onFocus="if(this.value =='0' ) this.value=''">
                          <span class="left">Children</span> <a href="#" class="help"></a> </div>
                      </div>-->
                    <div class="row"><span class="left">Ticket Type</span>
                        <input type="text" name="tickettype" class="input" value="<%=class1%>"/>
                          </select>
                         <div class="row"><span class="left">Passengers</span>
                             <div class="row"><span class="left">Adult</span>
                                 <input type="text" name="adult" class="input1" value="<%=adult%>" />
                             <div class="row"><span class="left">Children</span>
                                 <input type="text" name="child" class="input1" value="<%=child%>"/>
                                   <div class="row"><span class="left">Total</span>
                                  <input type="text" name="sum" class="input1" value="<%=sum%>"/>
                       
                                       <%if(round!=null){%>
                                       <div class="row"><span class="left">Total Price</span>
                                 <input type="text" name="price" class="input1" value="<%=2*(sum*price)%>" />
                        <!--<input type="tel" class="input" name="credit" pattern="[0-9]{16}" title="Credit card number should be 16 digit">-->
                         <%}else{%>
                         <div class="row"><span class="left">Total Price</span>
                         <input type="text" name="price" class="input1" value="<%=(sum*price)%>"/>
                                <%}%>   
                                   </div>
                   
                     
            </div>
                                 <%//}%>
           <!-- <div class="tab-content" id="Hotel">
              <form id="form_6" action="#" class="form_5" method="post">
                <div>
                  <div class="radio">
                    <div class="wrapper">
                      <input type="radio" name="name1" checked>
                      <span class="left">Show prices</span>
                      <input type="radio" name="name1">
                      <span class="left">Show flights</span> </div>
                  </div>
                  <div class="pad">
                    <div class="wrapper under">
                      <div class="col1">
                        <div class="row"><span class="left">From</span>
                          <input type="text" class="input">
                          <a href="#" class="help"></a> </div>
                        <div class="row"><span class="left">To</span>
                          <input type="text" class="input">
                          <a href="#" class="help"></a> </div>
                      </div>
                      <div class="check_box">
                        <input type="checkbox">
                        <span>One way</span> <a href="#" class="help"></a> </div>
                      <div class="check_box">
                        <input type="checkbox">
                        <span>Direct flights</span> </div>
                    </div>
                    <div class="wrapper under"> <span class="left">Flights</span>
                      <div class="cols marg_right1">
                        <h6>Outbound flight</h6>
                        <div class="row">
                          <input type="text" class="input1" value="03.05.2011"  onblur="if(this.value=='') this.value='03.05.2011'" onFocus="if(this.value =='03.05.2011' ) this.value=''">
                          <input type="text" class="input1" value="+/- 0 Days"  onblur="if(this.value=='') this.value='+/- 0 Days'" onFocus="if(this.value =='+/- 0 Days' ) this.value=''">
                        </div>
                        <div class="marg_top1">
                          <div class="select1"> <a href="#" class="marker_left"></a>
                            <select>
                              <option>May 11</option>
                              <option>June 11</option>
                              <option>July 11</option>
                            </select>
                            <a href="#" class="marker_right"></a> </div>
                        </div>
                        <div class="calendar">
                          <ul class="thead">
                            <li>Mon</li>
                            <li>Tue</li>
                            <li>Wed</li>
                            <li>Thu</li>
                            <li>Fri</li>
                            <li>Sat</li>
                            <li>Sun</li>
                          </ul>
                          <ul class="tbody">
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#" class="active">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li><a href="#">9</a></li>
                            <li><a href="#">10</a></li>
                            <li><a href="#">11</a></li>
                            <li><a href="#">12</a></li>
                            <li><a href="#">13</a></li>
                            <li><a href="#">14</a></li>
                            <li><a href="#">15</a></li>
                            <li><a href="#">16</a></li>
                            <li><a href="#">17</a></li>
                            <li><a href="#">18</a></li>
                            <li><a href="#">19</a></li>
                            <li><a href="#">20</a></li>
                            <li><a href="#">21</a></li>
                            <li><a href="#">22</a></li>
                            <li><a href="#">23</a></li>
                            <li><a href="#">24</a></li>
                            <li><a href="#">25</a></li>
                            <li><a href="#">26</a></li>
                            <li><a href="#">27</a></li>
                            <li><a href="#">28</a></li>
                            <li><a href="#">29</a></li>
                            <li><a href="#">30</a></li>
                            <li><a href="#">31</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="cols">
                        <h5>Outbound flight</h5>
                        <div class="row">
                          <input type="text" class="input1" value="03.05.2011"  onblur="if(this.value=='') this.value='03.05.2011'" onFocus="if(this.value =='03.05.2011' ) this.value=''">
                          <input type="text" class="input1" value="+/- 0 Days"  onblur="if(this.value=='') this.value='+/- 0 Days'" onFocus="if(this.value =='+/- 0 Days' ) this.value=''">
                        </div>
                        <div class="marg_top1">
                          <div class="select1"> <a href="#" class="marker_left"></a>
                            <select>
                              <option>May 11</option>
                              <option>June 11</option>
                              <option>July 11</option>
                            </select>
                            <a href="#" class="marker_right"></a> </div>
                        </div>
                        <div class="calendar">
                          <ul class="thead">
                            <li>Mon</li>
                            <li>Tue</li>
                            <li>Wed</li>
                            <li>Thu</li>
                            <li>Fri</li>
                            <li>Sat</li>
                            <li>Sun</li>
                          </ul>
                          <ul class="tbody">
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#" class="active">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li><a href="#">9</a></li>
                            <li><a href="#">10</a></li>
                            <li><a href="#">11</a></li>
                            <li><a href="#">12</a></li>
                            <li><a href="#">13</a></li>
                            <li><a href="#">14</a></li>
                            <li><a href="#">15</a></li>
                            <li><a href="#">16</a></li>
                            <li><a href="#">17</a></li>
                            <li><a href="#">18</a></li>
                            <li><a href="#">19</a></li>
                            <li><a href="#">20</a></li>
                            <li><a href="#">21</a></li>
                            <li><a href="#">22</a></li>
                            <li><a href="#">23</a></li>
                            <li><a href="#">24</a></li>
                            <li><a href="#">25</a></li>
                            <li><a href="#">26</a></li>
                            <li><a href="#">27</a></li>
                            <li><a href="#">28</a></li>
                            <li><a href="#">29</a></li>
                            <li><a href="#">30</a></li>
                            <li><a href="#">31</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="wrapper pad_bot1"> <span class="left">Passengers</span>
                      <div class="cols marg_right1">
                        <div class="row">
                          <input type="text" class="input2" value="2"  onblur="if(this.value=='') this.value='2'" onFocus="if(this.value =='2' ) this.value=''">
                          <span class="left">Adults</span> <a href="#" class="help"></a> </div>
                        <div class="row">
                          <input type="text" class="input2" value="0"  onblur="if(this.value=='') this.value='0'" onFocus="if(this.value =='0' ) this.value=''">
                          <span class="left">Children</span> <a href="#" class="help"></a> </div>
                      </div>
                      <div class="cols">
                        <div class="select1"><span class="left">Class</span>
                          <select>
                            <option>Economy</option>
                          </select>
                          <a href="#" class="help"></a></div>
                        <div class="select1"><span class="left">Airline</span>
                          <select>
                            <option>Airlines</option>
                          </select>
                          <a href="#" class="help"></a></div>
                      </div>
                      <span class="right relative"><a href="#" class="button1" onClick="document.getElementById('form_6').submit()"><strong>Search</strong></a></span> </div>
                  </div>
                </div>
              </form>
            </div>
            <div class="tab-content" id="Rental">
              <form id="form_7" action="#" class="form_5" method="post">
                <div>
                  <div class="radio">
                    <div class="wrapper">
                      <input type="radio" name="name1" checked>
                      <span class="left">Show prices</span>
                      <input type="radio" name="name1">
                      <span class="left">Show flights</span> </div>
                  </div>
                  <div class="pad">
                    <div class="wrapper under">
                      <div class="col1">
                        <div class="row"><span class="left">From</span>
                          <input type="text" class="input">
                          <a href="#" class="help"></a></div>
                        <div class="row"><span class="left">To</span>
                          <input type="text" class="input">
                          <a href="#" class="help"></a></div>
                      </div>
                      <div class="check_box">
                        <input type="checkbox">
                        <span>One way</span><a href="#" class="help"></a></div>
                      <div class="check_box">
                        <input type="checkbox">
                        <span>Direct flights</span></div>
                    </div>
                    <div class="wrapper under"> <span class="left">Flights</span>
                      <div class="cols marg_right1">
                        <h6>Outbound flight</h6>
                        <div class="row">
                          <input type="text" class="input1" value="03.05.2011"  onblur="if(this.value=='') this.value='03.05.2011'" onFocus="if(this.value =='03.05.2011' ) this.value=''">
                          <input type="text" class="input1" value="+/- 0 Days"  onblur="if(this.value=='') this.value='+/- 0 Days'" onFocus="if(this.value =='+/- 0 Days' ) this.value=''">
                        </div>
                        <div class="marg_top1">
                          <div class="select1"> <a href="#" class="marker_left"></a>
                            <select>
                              <option>May 11</option>
                              <option>June 11</option>
                              <option>July 11</option>
                            </select>
                            <a href="#" class="marker_right"></a> </div>
                        </div>
                        <div class="calendar">
                          <ul class="thead">
                            <li>Mon</li>
                            <li>Tue</li>
                            <li>Wed</li>
                            <li>Thu</li>
                            <li>Fri</li>
                            <li>Sat</li>
                            <li>Sun</li>
                          </ul>
                          <ul class="tbody">
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#" class="active">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li><a href="#">9</a></li>
                            <li><a href="#">10</a></li>
                            <li><a href="#">11</a></li>
                            <li><a href="#">12</a></li>
                            <li><a href="#">13</a></li>
                            <li><a href="#">14</a></li>
                            <li><a href="#">15</a></li>
                            <li><a href="#">16</a></li>
                            <li><a href="#">17</a></li>
                            <li><a href="#">18</a></li>
                            <li><a href="#">19</a></li>
                            <li><a href="#">20</a></li>
                            <li><a href="#">21</a></li>
                            <li><a href="#">22</a></li>
                            <li><a href="#">23</a></li>
                            <li><a href="#">24</a></li>
                            <li><a href="#">25</a></li>
                            <li><a href="#">26</a></li>
                            <li><a href="#">27</a></li>
                            <li><a href="#">28</a></li>
                            <li><a href="#">29</a></li>
                            <li><a href="#">30</a></li>
                            <li><a href="#">31</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="cols">
                        <h5>Outbound flight</h5>
                        <div class="row">
                          <input type="text" class="input1" value="03.05.2011"  onblur="if(this.value=='') this.value='03.05.2011'" onFocus="if(this.value =='03.05.2011' ) this.value=''">
                          <input type="text" class="input1" value="+/- 0 Days"  onblur="if(this.value=='') this.value='+/- 0 Days'" onFocus="if(this.value =='+/- 0 Days' ) this.value=''">
                        </div>
                        <div class="marg_top1">
                          <div class="select1"> <a href="#" class="marker_left"></a>
                            <select>
                              <option>May 11</option>
                              <option>June 11</option>
                              <option>July 11</option>
                            </select>
                            <a href="#" class="marker_right"></a> </div>
                        </div>
                        <div class="calendar">
                          <ul class="thead">
                            <li>Mon</li>
                            <li>Tue</li>
                            <li>Wed</li>
                            <li>Thu</li>
                            <li>Fri</li>
                            <li>Sat</li>
                            <li>Sun</li>
                          </ul>
                          <ul class="tbody">
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#" class="active">5</a></li>
                            <li><a href="#">6</a></li>
                            <li><a href="#">7</a></li>
                            <li><a href="#">8</a></li>
                            <li><a href="#">9</a></li>
                            <li><a href="#">10</a></li>
                            <li><a href="#">11</a></li>
                            <li><a href="#">12</a></li>
                            <li><a href="#">13</a></li>
                            <li><a href="#">14</a></li>
                            <li><a href="#">15</a></li>
                            <li><a href="#">16</a></li>
                            <li><a href="#">17</a></li>
                            <li><a href="#">18</a></li>
                            <li><a href="#">19</a></li>
                            <li><a href="#">20</a></li>
                            <li><a href="#">21</a></li>
                            <li><a href="#">22</a></li>
                            <li><a href="#">23</a></li>
                            <li><a href="#">24</a></li>
                            <li><a href="#">25</a></li>
                            <li><a href="#">26</a></li>
                            <li><a href="#">27</a></li>
                            <li><a href="#">28</a></li>
                            <li><a href="#">29</a></li>
                            <li><a href="#">30</a></li>
                            <li><a href="#">31</a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                            <li><a href="#"></a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="wrapper pad_bot1"> <span class="left">Passengers</span>
                      <div class="cols marg_right1">
                        <div class="row">
                          <input type="text" class="input2" value="2"  onblur="if(this.value=='') this.value='2'" onFocus="if(this.value =='2' ) this.value=''">
                          <span class="left">Adults</span> <a href="#" class="help"></a> </div>
                        <div class="row">
                          <input type="text" class="input2" value="0"  onblur="if(this.value=='') this.value='0'" onFocus="if(this.value =='0' ) this.value=''">
                          <span class="left">Children</span> <a href="#" class="help"></a> </div>
                      </div>
                      <div class="cols">
                        <div class="select1"><span class="left">Class</span>
                          <select>
                            <option>Economy</option>
                          </select>
                          <a href="#" class="help"></a> </div>
                        <div class="select1"><span class="left">Airline</span>
                          <select>
                            <option>Airlines</option>
                          </select>
                          <a href="#" class="help"></a> </div>-->
                       <span class="right relative"><input type="submit" class="button1" value="Book" onclick="checkdate();"></span> </div>
                  </div>
           
              </form>
            </div>
          </div>
        </div>
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
<script type="text/javascript">
jQuery(document).ready(function ($) {
    $('.form_5').jqTransform({
        imgPath: 'jqtransformplugin/img/'
    });
});
$(document).ready(function () {
    tabs2.init();
});
</script>
</body>
</html>