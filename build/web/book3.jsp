<!DOCTYPE html>
<html lang="en">
<head>
<title>AirLines | Book</title>
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
<body id="page3">
<div class="main">
  <!--header -->
  <header>
    <div class="wrapper">
      <h1><a href="index.html" id="logo">AirLines</a></h1>
      <span id="slogan">Fast, Frequent &amp; Safe Flights</span>
      <nav id="top_nav">
        <ul>
          <li><a href="index.html" class="nav1">Home</a></li>
          <li><a href="Login.html" class="nav2">Login/Sign Up</a></li>
          <li><a href="contacts.html" class="nav3">Contact</a></li>
        </ul>
      </nav>
    </div>
    <nav>
      <ul id="menu">
        <li><a href="index.html"><span><span>About</span></span></a></li>
        <li><a href="fetch_offer.html"><span><span>Offers</span></span></a></li>
        <li id="menu_active"><a href="book.html"><span><span>Book</span></span></a></li>
        <li><a href="services.html"><span><span>Services</span></span></a></li>
        <li><a href="safety.html"><span><span>Safety</span></span></a></li>
        <li class="end"><a href="contacts.html"><span><span>Contacts</span></span></a></li>
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
          <div class="content">
            <div class="tab-content" id="Flight">
              <form id="form_5" action="Bookingdone" class="form_5" method="post">
                <div>
                  <div class="radio">
                    <div class="wrapper">
                      <input type="hidden" name="name1" checked/>
                      <span class="left"></span>
                      <input type="hidden" name="name1">
                      <span class="left"></span> </div>
                  </div>
                  <div class="pad">
                    <div class="wrapper under">
                      <div class="col1">
                        <div class="row"><span class="left">Username</span>
                          <input type="text" class="input" name="username">
                          <div class="row"><span class="left">Name</span>
                          <input type="text" class="input" name="name">
                        
                        <div class="row"><span class="left">Password</span>
                          <input type="password" class="input" name="password">
                         
                      </div>
                        <div class="row"><span class="left">Flight Id</span>
                          <input type="text" class="input" name="flightid">
                         
                          <div class="row"><span class="left">From Place</span>
                          <input type="text" class="input" name="fromplace">
                                                    <div class="row"><span class="left">To Place</span>
                          <input type="text" class="input" name="toplace">
                          
                      <!--<div class="check_box">
                        <input type="checkbox">
                        <span>One way</span> <a href="#" class="help"></a> </div>
                      <div class="check_box">
                        <!--<input type="checkbox">
                        <span>Direct flights</span> </div>-->
                    </div>
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
                 <span class="left">Date of Journey</span>
                         
                     <input type="date"  name="date"  id="datepicker"/>
                        
                    </div>
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
                          <select name="tickettype">
                              <option>Economy</option>
                              <option>Business</option>
                              <option>First Class</option>
                          </select>
                         <div class="row"><span class="left">Passengers</span>
                             <div class="row"><span class="left">Adult</span>
                             <input type="number" min="1" max="50" name="adult"/>
                             <div class="row"><span class="left">Children</span>
                                  <input type="number" min="1" max="50" name="child"/>
                        <div class="row"><span class="left">Credit Card Number</span>
                          <input type="text" class="input" name="credit">
                          </div>
                   
                     
            </div>
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
                       <span class="right relative"><input type="submit" class="button1" value="Book"></span> </div>
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
        <li><a href="#" class="normaltip"><img src="images/icon1.jpg" alt=""></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon2.jpg" alt=""></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon3.jpg" alt=""></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon4.jpg" alt=""></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon5.jpg" alt=""></a></li>
        <li><a href="#" class="normaltip"><img src="images/icon6.jpg" alt=""></a></li>
      </ul>
      <div class="links">Copyright &copy; <a href="#">Domain Name</a> All Rights Reserved<br>
        Design by <a target="_blank" href="http://www.templatemonster.com/">TemplateMonster.com</a></div>
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