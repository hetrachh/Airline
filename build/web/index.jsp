<%-- 
    Document   : index
    Created on : Jun 7, 2016, 3:36:05 PM
    Author     : Het
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
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
<body id="page1">
<div class="main">
  <!--header -->
  <header>
    <div class="wrapper">
      <h1><a href="index.html" id="logo">AirLines</a></h1>
      <span id="slogan">Fast, Frequent &amp; Safe Flights</span>
      <nav id="top_nav">
        <ul>
          <li><a href="index.jsp" class="nav1">Home</a></li>
         <!-- <li><a href="#" class="nav2">Sitemap</a></li>-->
          <li><a href="log_out.jsp" class="nav2">Log Out</a></li>
          <li><a href="contacts.jsp" class="nav3">Contact</a></li>
        </ul>
      </nav>
    <%String name = (String) session.getAttribute("mail"); %>
		        <strong>Welcome To</strong>
                        <u><b><%out.println(name);
                                String mail=request.getParameter("mail");
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
      </ul>
    </nav>
  </header>
  <!-- / header -->
  <!--content -->
  <section id="content">
    <div class="for_banners">
      <article class="col1">
        <div class="tabs">
          <ul class="nav">
              <li class="selected"><a href="#Flight">Flight</a></li>
            
          </ul>
          <div class="content">
            <div class="tab-content" id="Flight">
              <form id="form_1" action="scheduleSearch.jsp" method="get">
                  <br>
                  <br>
                  <div class="radio">
                      <input type="radio" name="round">Round Trip
                      <input type="radio" name="one">One Way
                  </div>
                  <input type="hidden" name="mail" class="input" value="<%=mail%>"/>
                  <div class="select1"> <span class="left">From</span>
                    <select name="from">
                        <option></option>
                        <option>Ahmedabad</option>
                        <option>Mumbai</option>
                        <option>Delhi</option>
                        <option>Surat</option>
                    </select>
                  </div>
                  <div class="select1"> <span class="left">To</span>
                    <select name="to">
                        <option></option>
                        <option>Ahmedabad</option>
                        <option>Mumbai</option>
                        <option>Delhi</option>
                        <option>Surat</option>
                    </select>
                  </div>
                  <div class="wrapper">
                    
                      <div class="row"> <span class="left">Outbound</span>
                          <input type="date" class="input" id="datepicker" name="date"></div>
                         <div class="row"> <span class="left">Return</span>
                             <input type="date" class="input" id="datepicker" name="rdate"></div>
                   <div class="row"> <span class="left">Adults</span>
                    <input type="number" class="input1"  min="1" name="adult" >
                  </div>
                  <div class="row"> <span class="left">Children</span>
                    <input type="number" class="input1" min="0" name="child">
                    <span class="pad_left1">(0-11 years)</span> </div>
                    <div class="row"> <span class="left">Class</span>
                        <select name="class1">
                        <option value="1">Economy</option>
                        <option value="2">Business</option>
                        <option value=3>First Class</option>
                    </select>
                  </div>
                                       
                        &nbsp;&nbsp;&nbsp;<div class="wrapper"> <span class="right relative"><input type="submit" value="search" class="button1"><strong></strong></a></span>
                </div>
              </form>
            </div>
            <div class="tab-content" id="Hotel">
              <!--<form id="form_2" action="#" method="post">
                <div>
                  <div class="radio">
                    <div class="wrapper">
                      <input type="checkbox" checked>
                      Our Partners </div>
                  </div>
                  <div class="row"> <span class="left">Location</span>
                    <input type="text" class="input">
                  </div>
                  <div class="row"> <span class="left">Check-in </span>
                    <input type="text" class="input1" value="03.05.2011"  onblur="if(this.value=='') this.value='03.05.2011'" onFocus="if(this.value =='03.05.2011' ) this.value=''">
                    <a href="#" class="help"></a> </div>
                  <div class="row"> <span class="left">Check-out </span>
                    <input type="text" class="input1" value="10.05.2011"  onblur="if(this.value=='') this.value='10.05.2011'" onFocus="if(this.value =='10.05.2011' ) this.value=''">
                    <a href="#" class="help"></a> </div>
                  <div class="row"> <span class="left">Rooms</span>
                    <input type="text" class="input2" value="1"  onblur="if(this.value=='') this.value='1'" onFocus="if(this.value =='1' ) this.value=''">
                    <a href="#" class="help"></a> </div>
                  <div class="row"> <span class="left">Adults</span>
                    <input type="text" class="input2" value="2"  onblur="if(this.value=='') this.value='2'" onFocus="if(this.value =='2' ) this.value=''">
                  </div>
                  <div class="row"> <span class="left">Children</span>
                    <input type="text" class="input2" value="0"  onblur="if(this.value=='') this.value='0'" onFocus="if(this.value =='0' ) this.value=''">
                    <span class="pad_left1">(0-11 years)</span> </div>
                  <div class="wrapper"> <span class="right relative"><a href="#" class="button1"><strong>Search</strong></a></span> <a href="#" class="link1">More Options</a> </div>
                </div>
              </form>
            </div>
            <div class="tab-content" id="Rental">
              <form id="form_3" action="#" method="post">
                <div>
                  <div class="radio">
                    <div class="wrapper">
                      <input type="radio" name="name2" checked>
                      <span class="left">Avis</span>
                      <input type="radio" name="name2">
                      <span class="left">Europcar</span> </div>
                  </div>
                  <div class="row"> <span class="left">Rental location</span>
                    <input type="text" class="input">
                  </div>
                  <div class="row"> <span class="left">Pick-up</span>
                    <input type="text" class="input1" value="03.05.2011"  onblur="if(this.value=='') this.value='03.05.2011'" onFocus="if(this.value =='03.05.2011' ) this.value=''">
                    <input type="text" class="input2" value="12:00"  onblur="if(this.value=='') this.value='12:00'" onFocus="if(this.value =='12:00' ) this.value=''">
                  </div>
                  <div class="row"> <span class="left">Return</span>
                    <input type="text" class="input1" value="10.05.2011"  onblur="if(this.value=='') this.value='10.05.2011'" onFocus="if(this.value =='10.05.2011' ) this.value=''">
                    <input type="text" class="input2" value="12:00"  onblur="if(this.value=='') this.value='12:00'" onFocus="if(this.value =='12:00' ) this.value=''">
                  </div>
                  <div class="row_select"> <span class="left">Miles &amp; More</span>
                    <select>
                      <option>no membership</option>
                    </select>
                  </div>
                  <div class="row_select">
                    <div class="pad_left1"> Country of residence<br>
                      <div class="select1">
                        <select>
                          <option>&nbsp;</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="wrapper"> <span class="right relative"><a href="#" class="button1"><strong>Search</strong></a></span> </div>
                </div>
              </form>-->
            </div>
          </div>
        </div>
      </article>
                  <form action="book.jsp" method="get" id="slider" class="nivoSlider">
                      <input type="image" src="images/banner1.jpg"  name="to"  value="boston" onclick="submit"><input type="image"  src="images/banner2.jpg"  name="to" value="Bern" onclick="submit"><input type="image" src="images/banner3.jpg" name="to" value="Boston" onclick="submit"></form>
    </div>
    <div class="wrapper pad1">
      <article class="col1">
        <div class="box1">
          <h2 class="top">Offers of the Week from UK</h2>
          <div class="pad"> <strong>From Birmingham</strong><br>
            <ul class="pad_bot1 list1">
                <li> <span class="right color1">from GBP 143.-</span><form action="book.jsp" method="post"><input type="hidden" name="from" value="Birmingham"><u><input type="submit" name="to" value="Zurich"></u></form>
            </ul>
            <strong>From London City</strong><br>
            <ul class="pad_bot1 list1">
                <li> <span class="right color1">from GBP 176.-</span> <form action="book.jsp" method="post"><input type="hidden" name="from" value="London"><u><input type="submit" name="to" value="Basel"></u></form>
              <li> <span class="right color1">from GBP 109.-</span><form action="book.jsp" method="post"><input type="hidden" name="from" value="London"><u><input type="submit" name="to" value="Geneva"></u></form>
            </ul>
            <strong>From London Heathrow</strong><br>
            <ul class="pad_bot2 list1">
                <li> <span class="right color1">from GBP 100.-</span><form action="book.jsp" method="post"><input type="hidden" name="from" value="London Heathrow"><u><input type="submit" name="to" value="Geneva"></u></form></li>
              <li> <span class="right color1">from GBP 112.-</span><form action="book.jsp" method="post"><input type="hidden" name="from" value="London Heathrow"><u><input type="submit" name="to" value="Zurich"></u></form></li>
              <li> <span class="right color1">from GBP 88.-</span><form action="book.jsp" method="post"><input type="hidden" name="from" value="London Heathrow"><u><input type="submit" name="to" value="Basel"></u></form></li>
            </ul>
          </div>
          <h2>From Ireland To Switzerland</h2>
          <div class="pad"> <strong>From Dublin</strong><br>
            <ul class="pad_bot2 list1">
              <li class="pad_bot1"> <span class="right color1">from EUR 122.-</span><form action="book.jsp" method="post"><input type="hidden" name="from" value="Dublin"><u><input type="submit" name="to" value="Zurich"></u></form> </li>
            </ul>
          </div>
        </div>
      </article>
      <article class="col2">
        <h3>About Our Airlines<span>Established in 2001</span></h3>
        <div class="wrapper">
          <article class="cols">
            <figure><img src="images/page1_img1.jpg" alt="" class="pad_bot2"></figure>
            <p class="pad_bot1"><strong>Corporate Overview</strong></p>
            <p> Airline mission to become India's preferred low-cost airline,delivering the lowest air fares with highest consumer value,to price sensitive consumers.</p>
          </article>
          <article class="cols pad_left1">
            <figure><img src="images/page1_img2.jpg" alt="" class="pad_bot2"></figure>
            <p class="pad_bot1"><strong>The power to fly for everyone</strong></p>
            <p>With a dynamic structure,Airline offers fares that are affordable and significantly lower than most airlines.With contemporary interiors,modern graphics and vibrant colours,Airline is very much like today's traveler-practical yet stylish</p>
          </article>
        </div>
       
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
        <li><a href="#" class="normaltip"><img src="images/icon5.jpg" alt=""height="42" width="42"></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon6.jpg" alt="" height="42" width="42"></a></li>
      </ul>
      <div class="links">Copyright &copy; <a href="#">Domain Name</a> All Rights Reserved<br>
        Design by <a target="_blank" href="http://www.templatemonster.com/">TemplateMonster.com</a></div>
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