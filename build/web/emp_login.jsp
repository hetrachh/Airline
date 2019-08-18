<%-- 
    Document   : admin_login
    Created on : May 6, 2016, 2:40:09 PM
    Author     : nilay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<%
String userid = request.getParameter("userid"); 
String password = request.getParameter("password");
String name = request.getParameter("name");
String date1 = request.getParameter("DOB"); 
String Address = request.getParameter("Address");
String pincode = request.getParameter("pincode"); 
String emailid = request.getParameter("emailid"); 
String phono = request.getParameter("phno");
String edu = request.getParameter("edu");
String designation= request.getParameter("designation");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
int i = st.executeUpdate("insert into employee values ('" + userid + "','" + password + "','" + name + "','" + date1 +"','" +Address+"','" + pincode + "','"+emailid+ "','"+phono+"','"+edu+"','"+designation+"')");

if (i > 0) {
//session.setAttribute("userid", fname);
//response.sendRedirect("welcome.jsp");
 out.print("Employee Registration Successfull!"+"<a href='emplogin.jsp'>Go to Login</a>");
} else {
response.sendRedirect("emplotee.html");
}
%>