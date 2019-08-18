<%-- 
    Document   : update_emp
    Created on : May 27, 2016, 3:36:30 PM
    Author     : Aptech-pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<% 
String name = request.getParameter("name");
String date1 = request.getParameter("DOB"); 
String Address = request.getParameter("Address");
String pincode = request.getParameter("pincode"); 
String emailid = request.getParameter("emailid"); 
String phono = request.getParameter("phno");
String edu = request.getParameter("edu");
String designation= request.getParameter("designation");

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
int i = st.executeUpdate("update employee SET Name='"+name+"',DOB='"+date1+"',Address='"+Address+"',Pincode='"+pincode+"',phoneno='"+phono+"',eduqual='"+edu+"',Designation='"+designation);
if (i > 0) {
//session.setAttribute("userid", fname);
//response.sendRedirect("welcome.jsp");
 out.print("SuccessfullY Updated!"+"<a href='update_emp.html'>Go to Click here</a>");
} else {
response.sendRedirect("update_emp.html");
}
%>