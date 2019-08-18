<%-- 
    Document   : admin_login
    Created on : May 6, 2016, 2:40:09 PM
    Author     : nilay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
  String to=request.getParameter("to");
       String user=request.getParameter("user");
       String pass=request.getParameter("pass");
       String[] msg=request.getParameterValues("msg");
        String[] name = request.getParameterValues("name");
        String duration = request.getParameter("duration");
        String flightid = request.getParameter("flightid");
       String dtime = request.getParameter("dtime");
        String atime = request.getParameter("atime");
        String sum = request.getParameter("sum");
        String sub=request.getParameter("sub");
        String tickettype = request.getParameter("tickettype");
        String adult=request.getParameter("adult");
        String child=request.getParameter("child");
        String[] ticketid=request.getParameterValues("ticketid");
     String credit=request.getParameter("credit");
     String rdate=request.getParameter("rdate");
     String round=request.getParameter("round");
String from = request.getParameter("from"); 
String to1 = request.getParameter("to1");
String date=request.getParameter("date");
String total=request.getParameter("total");
String price=request.getParameter("price");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from schedule where source='" + from + "'AND destination='" +to1 +"' AND date='"+date+"'");
if (rs.next()) {
//request.setAttribute("username",username);
request.setAttribute("name",name);
request.setAttribute("user",user);
request.setAttribute("pass", pass);
request.setAttribute("msg",msg);
request.setAttribute("sub", sub);
request.setAttribute("price",price);
request.setAttribute("flightid",flightid);
request.setAttribute("tickettype",tickettype);
request.setAttribute("adult",adult);
request.setAttribute("child",child);
request.setAttribute("credit",credit);
request.setAttribute("sum",sum);
request.setAttribute("from",from);
request.setAttribute("to1",to1);
request.setAttribute("date",date);
request.setAttribute("to",to);
request.setAttribute("ticketid",ticketid);
request.setAttribute("dtime",dtime);
request.setAttribute("atime",atime);
request.setAttribute("duration",duration);
request.setAttribute("total",total);
if(round!=null){
    request.setAttribute("rdate",rdate);
    request.setAttribute("round",round);
}
//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");
RequestDispatcher view = request.getRequestDispatcher("/limit.jsp");
            view.forward(request, response);
            con.close();
            System.out.println("Disconnected!");
} else {
out.println("booking unsucessful");
}
%>