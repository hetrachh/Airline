<%-- 
    Document   : update
    Created on : May 6, 2016, 5:16:09 PM
    Author     : nilay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<%
    String usename = request.getParameter("Username");
    String name = request.getParameter("Name");
String fligt_id = request.getParameter("fligt_id");
//String flight_name = request.getParameter("flight_name");
String fp = request.getParameter("fromplace");
String  tp= request.getParameter("toplace");
String date = request.getParameter("date");
String class1 =request.getParameter("class");
int adult =Integer.parseInt(request.getParameter("Adult"));
//String date = request.getParameter("date");
//String totalcap = request.getParameter("total_cap");
int child =Integer.parseInt(request.getParameter("Children"));
int ticket=Integer.parseInt(request.getParameter("ticket"));
//String female = request.getParameter("female");
//String city = request.getParameter("city");
Class.forName("com.mysql.jdbc.Driver");
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
int i = st.executeUpdate("update book SET username='"+usename+"',name='"+name+"',flightid='"+fligt_id+"',fromplace='"+fp+"',toplace='"+tp+"',Date='"+date+"',tickettype='"+class1+"',Adult='"+adult+"',Child='"+child+"',total='"+(adult+child)+"' WHERE ticketnum="+ticket);
if (i > 0) {
//session.setAttribute("userid", fname);
//response.sendRedirect("welcome.jsp");
 out.print("SuccessfullY Updated!");
} else {
out.println("Ticket Number is wrong");
}
%>