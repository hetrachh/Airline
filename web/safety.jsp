<%-- 
    Document   : safety
    Created on : Jun 9, 2016, 4:10:23 PM
    Author     : Het
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>AirLines | Safety</title>
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
<body id="page5">
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
        <li><a href="offers.jsp"><span><span>Offers</span></span></a></li>
        <li><a href="ticket.jsp"><span><span>Book</span></span></a></li>
        <li><a href="services.jsp"><span><span>Services</span></span></a></li>
        <li id="menu_active"><a href="safety.jsp"><span><span>Safety</span></span></a></li>
        <li class="end"><a href="contacts.jsp"><span><span>Contacts</span></span></a></li>
      </ul>
    </nav>
  </header>
  <!-- / header -->
  <!--content -->
  <section id="content">
    <div class="wrapper pad1">
      <article class="col1">
        <div class="box1">
          <h2 class="top">Hot Offers of the Week</h2>
          <div class="pad"> <strong>Birmingham</strong><br>
            <ul class="pad_bot1 list1">
              <li> <span class="right color1">from GBP 143.-</span> <a href="book2.html">Zurich</a> </li>
            </ul>
            <strong>London (LCY)</strong><br>
            <ul class="pad_bot1 list1">
              <li> <span class="right color1">from GBP 176.-</span> <a href="book2.html">Geneva</a> </li>
              <li> <span class="right color1">from GBP 109.-</span> <a href="book2.html">Zurich</a> </li>
            </ul>
            <strong>London (LHR)</strong><br>
            <ul class="pad_bot2 list1">
              <li> <span class="right color1">from GBP 100.-</span> <a href="book2.html">Geneva</a> </li>
              <li> <span class="right color1">from GBP 112.-</span> <a href="book2.html">Zurich</a> </li>
              <li> <span class="right color1">from GBP 88.-</span> <a href="book2.html">Basel</a> </li>
            </ul>
            <strong>Manchester</strong><br>
            <ul class="pad_bot2 list1">
              <li> <span class="right color1">from GBP 97.-</span> <a href="book2.html">Basel</a> </li>
              <li> <span class="right color1">from GBP 103.-</span> <a href="book2.html">Zurich</a> </li>
            </ul>
            <strong>Edinburgh</strong><br>
            <ul class="pad_bot2 list1">
              <li> <span class="right color1">from GBP 165.-</span> <a href="book2.html">Zurich</a> </li>
            </ul>
            <strong>Birmingham</strong><br>
            <ul class="pad_bot1 list1">
              <li> <span class="right color1">from GBP 143.-</span> <a href="book2.html">Zurich</a> </li>
            </ul>
            <strong>London (LCY)</strong><br>
            <ul class="pad_bot1 list1">
              <li> <span class="right color1">from GBP 176.-</span> <a href="book2.html">Geneva</a> </li>
              <li> <span class="right color1">from GBP 109.-</span> <a href="book2.html">Zurich</a> </li>
            </ul>
            <strong>London (LHR)</strong><br>
            <ul class="pad_bot2 list1">
              <li> <span class="right color1">from GBP 100.-</span> <a href="book2.html">Geneva</a> </li>
              <li> <span class="right color1">from GBP 112.-</span> <a href="book2.html">Zurich</a> </li>
              <li> <span class="right color1">from GBP 88.-</span> <a href="book2.html">Basel</a> </li>
            </ul>
          </div>
        </div>
      </article>
        <article class="col2">
        <h3 class="pad_top1">About Safety</h3>
        <div class="wrapper pad_bot2">
          <figure class="left marg_right1"><img src="images/safety.jpg" alt=""></figure>
          <p><strong>Pay attention to the flight attendant safety briefing at the beginning of your flight and read the safety briefing card.
Buckle up. Keep you and your family safe by wearing a seat belt at all times while seated.
Use an approved child safety seat or device if your child weighs less than 40 pounds.
Prevent in-flight injuries by following your airline's carry-on restrictions.
Check your airline's Portable Electronic Device (PED) policy.</p>
        </div>
        <div class="wrapper pad_bot2">
          <figure class="left marg_right1"><img src="images/PED.jpg" alt=""></figure>
          <p> Changes to PED policies will not happen overnight and will vary by airline. Check with your airline to see if and when you can use your PED. Airlines may allow passengers to use handheld PEDs such as tablets, e-readers, and smartphones.
Current FAA rules remain in effect until an airline completes a safety assessment and changes its PED policy.
Cell phones may not be used for voice communications or for cellular connections.
Use electronic devices in airplane mode or with the cellular connection disabled. You may use the WiFi connection on your device if the plane has an installed WiFi system and the airline allows its use.
Properly stow heavier devices like standard laptops under seats or in the overhead bins during takeoff and landing. These items may injure you or someone else in the event of turbulence or an accident.
Put down electronic devices, books and newspapers and listen to the safety briefing.
It only takes a few minutes to secure items according to the crew's instructions during takeoff and landing.
In some instances of low visibility — about one percent of flights — some landing systems may not be proved PED tolerant, so you may be asked to turn off your device.
Always follow crew instructions and immediately turn off your device if asked.
Make safety your first priority.</p>
        </div>
                
        <div class="wrapper">
          
          <div class="cols pad_left1">
            
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
</body>
</html>