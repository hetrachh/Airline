<%-- 
    Document   : admin_login
    Created on : May 6, 2016, 2:40:09 PM
    Author     : nilay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<%
String username = request.getParameter("username"); 
String password = request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from admin_login where username='" + username + "' and password='" + password + "'");
if (rs.next()) {
session.setAttribute("username", username);
//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");
response.sendRedirect("flight_table.jsp");
} else {
out.println("Invalid password <a href='admin_login.html'>try again</a>");
}
%>