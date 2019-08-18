<%-- 
    Document   : update
    Created on : May 6, 2016, 5:16:09 PM
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
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
int i = st.executeUpdate("update flight SET flight_name='"+flight_name+"',destination='"+destination+"',source='"+source+"',class='"+class1+"',dep_time='"+dtime+"',arr_time='"+atime+"',date='"+date+"',total_cap='"+totalcap+"',duration='"+Duration+"',price='"+price+"' WHERE flightno = "+flightno);
if (i > 0) {
//session.setAttribute("userid", fname);
//response.sendRedirect("welcome.jsp");
 out.print("SuccessfullY Updated!"+"<a href='flight_table.jsp'>Go to Flight table</a>");
} else {
out.println("Flight no is wrong");
}
%>