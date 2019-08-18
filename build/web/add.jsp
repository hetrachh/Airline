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
String class1 = request.getParameter("class");
String dtime =request.getParameter("dtime");
String atime =request.getParameter("atime");
String date = request.getParameter("date");
String totalcap = request.getParameter("total_cap");
String Duration = request.getParameter("Duration");
String price =request.getParameter("price");
//String female = request.getParameter("female");
//String city = request.getParameter("city");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
Class.forName("com.mysql.jdbc.Driver").newInstance();
//ResultSet rs;
int i = st.executeUpdate("insert into flight(flightno, flight_name, destination,  source,class, dep_time, arr_time , date, total_cap,Duration,price) values ('" + flightno + "','" + flight_name + "','" + destination + "','" + source +"','" + class1+"','"+dtime+"','" +atime+ "','"+date+ "','"+totalcap+ "','"+Duration+"','"+price+"')");
if (i > 0) {
//session.setAttribute("userid", fname);
//response.sendRedirect("welcome.jsp");
 out.print("SuccessfullY Added!"+"<a href='flight_table.jsp'>Go to Flight Table</a>");
} else {
out.println("Go back to add flight");
}
%>