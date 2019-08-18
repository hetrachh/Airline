<%-- 
    Document   : admin
    Created on : May 6, 2016, 4:25:17 PM
    Author     : nilay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
String flightno = request.getParameter("flightno");
String flight_name = request.getParameter("flight_name");
String dep_time =request.getParameter("dep_time");
String arr_time =request.getParameter("arr_time");
String arr_city = request.getParameter("arr_city");
String dep_city= request.getParameter("dep_city");
//String class1 = request.getParameter("class");

//String date = request.getParameter("date");
//String totalcap = request.getParameter("total_cap");
String Duration = request.getParameter("Duration");
String price =request.getParameter("price");
//String female = request.getParameter("female");
//String city = request.getParameter("city");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
Class.forName("com.mysql.jdbc.Driver").newInstance();
//ResultSet rs;
int i = st.executeUpdate("insert into offer( flight_name, dep_time,arr_time, dep_city, arr_city ,Duration,price) values ('" + flight_name + "','" + dep_time + "','" + arr_time+"','" + dep_city+"','" +arr_city+  "','"+Duration+"','"+price+"')");

//session.setAttribute("userid", fname);
//response.sendRedirect("welcome.jsp");
if(i>0){
response.sendRedirect("fliter_offer.html");
}else{
response.sendRedirect("offers.jsp");
}
%>