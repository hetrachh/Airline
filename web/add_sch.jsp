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
String destination = request.getParameter("destination");
String  source= request.getParameter("source");
String rdate = request.getParameter("rdate");
String dtime =request.getParameter("dtime");
String atime =request.getParameter("atime");
String date = request.getParameter("date");
//String totalcap = request.getParameter("total_cap");
String Duration = request.getParameter("Duration");
String class1=request.getParameter("class1");
String class1cap=request.getParameter("class1cap");
String class2=request.getParameter("class2");
String class2cap=request.getParameter("class2cap");
String class3=request.getParameter("class3");
String class3cap=request.getParameter("class3cap");
//String female = request.getParameter("female");
//String city = request.getParameter("city");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
Class.forName("com.mysql.jdbc.Driver").newInstance();
//ResultSet rs;
int i = st.executeUpdate("insert into schedule values('" + flightno + "','" + flight_name + "','" + destination + "','" + source +"','"  + dtime+"','" +atime+ "','"+date+  "','"+Duration+"','"+class1+"','"+rdate+"','"+class2+"','"+class3+"','"+class1cap+"','"+class3cap+"','"+class2cap+"')");
if (i > 0) {
//session.setAttribute("userid", fname);
//response.sendRedirect("welcome.jsp");
 response.sendRedirect("schedule.jsp");
} else {
response.sendRedirect("add_schedule.jsp");
}
%>