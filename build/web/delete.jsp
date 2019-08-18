<%-- 
    Document   : delete
    Created on : May 6, 2016, 5:01:21 PM
    Author     : nilay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
String flightno = request.getParameter("flightno");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("delete from flight where flightno = "+flightno );
if (i > 0) {
//session.setAttribute("userid", fname);
//response.sendRedirect("welcome.jsp");
 out.print("Successfully Deleted!"+"<a href='flight_table.jsp'>Go to Flight Table</a>");
} else {
response.sendRedirect("delete_flight.jsp");
}
%>