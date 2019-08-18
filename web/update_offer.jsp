<%-- 
    Document   : update
    Created on : May 6, 2016, 5:16:09 PM
    Author     : nilay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
String fligt_id = request.getParameter("fligt_id");
//String flight_name = request.getParameter("flight_name");
String dep_time = request.getParameter("dep_time");
String  arr_time= request.getParameter("arr_time");
//String class1 = request.getParameter("");
String dep_city =request.getParameter("dep_city");
String arr_city =request.getParameter("arr_city");
//String date = request.getParameter("date");
//String totalcap = request.getParameter("total_cap");
String duration = request.getParameter("duration");
String price =request.getParameter("price");
//String female = request.getParameter("female");
//String city = request.getParameter("city");
Class.forName("com.mysql.jdbc.Driver");
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
int i = st.executeUpdate("update offer SET fligt_id='"+fligt_id+"',dep_time='"+dep_time+"',arr_time='"+arr_time+"',dep_city='"+dep_city+"',arr_city='"+arr_city+"',duration='"+duration+"',price='"+price+"' WHERE fligt_id = "+fligt_id);
if (i > 0) {
//session.setAttribute("userid", fname);
//response.sendRedirect("welcome.jsp");
 out.print("SuccessfullY Updated!"+"<a href='fetch_offer.jsp'>Go to Offers</a>");
} else {
response.sendRedirect("update_offer.html");
}
%>