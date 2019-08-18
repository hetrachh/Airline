<%-- 
    Document   : delete
    Created on : May 6, 2016, 5:01:21 PM
    Author     : nilay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
String flightid = request.getParameter("fligt_id");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("delete from offer where fligt_id = "+flightid );
out.print("SuccessfullY Deleted!"+"<a href='schedule.jsp'>Go to Schedule</a>");
response.sendRedirect("fetch_offer.html");

%>