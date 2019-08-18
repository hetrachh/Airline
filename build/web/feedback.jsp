

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String phno = request.getParameter("phno");
String flight_no = request.getParameter("flight_no");
String date = request.getParameter("date");
String ticketnum =request.getParameter("ticketnum");
String type1 = request.getParameter("type1");
//String female = request.getParameter("female");
String content = request.getParameter("content");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
//ResultSet rs;
int i = st.executeUpdate("insert into feedback(name, email, phno,  flight_no,date, ticketnum, type1, content) values ('" + name + "','" + email + "','" + phno + "','" + flight_no +"','" +date+"','" + ticketnum + "','"+type1+ "','"+content+"')");
if (i > 0) {
//session.setAttribute("userid", fname);
//response.sendRedirect("welcome.jsp");
 out.print("Feedback Successfull!");
} else {
out.println("Go back to add feedback");
}
%>