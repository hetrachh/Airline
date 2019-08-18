

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
String pass = request.getParameter("pass");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String email = request.getParameter("email");
String phno = request.getParameter("phno");
String cfmpass =request.getParameter("cfmpass");
String gender = request.getParameter("gender");
//String female = request.getParameter("female");
String city = request.getParameter("city");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into signup(fname, lname, email,  pass,cfmpass, phno , gender, city) values ('" + fname + "','" + lname + "','" + email + "','" + pass +"','" +cfmpass+"','" + phno + "','"+gender+ "','"+city+"')");
if (i > 0) {
session.setAttribute("userid", fname);
//response.sendRedirect("welcome.jsp");
 out.print("Registration Successfull!"+"<a href='Login.html'>Go to Login</a>");
} else {
response.sendRedirect("login.html");
}
%>