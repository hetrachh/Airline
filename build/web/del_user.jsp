<%-- 
    Document   : delete
    Created on : May 6, 2016, 5:01:21 PM
    Author     : nilay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
String user_id = request.getParameter("user_id");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("delete from signup where user_id = "+user_id);

response.sendRedirect("reg_user.jsp");

%>