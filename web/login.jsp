<%-- 
    Document   : login
    Created on : May 5, 2016, 5:02:24 PM
    Author     : nilay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<% 
String mail=request.getParameter("mail");
String pass = request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from signup where email='" + mail + "' and pass='" + pass + "'");
if (rs.next()) {
    session.setAttribute("mail",mail);
    request.setAttribute("mail",mail);

//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");
RequestDispatcher view = request.getRequestDispatcher("/index.jsp");
            view.forward(request, response);
} else {
out.println("Invalid password <a href='login.html'>try again</a>");
}
%>