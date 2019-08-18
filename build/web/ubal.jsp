<%-- 
    Document   : tcupdate
    Created on : 29 Aug, 2016, 2:51:35 PM
    Author     : Dell
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String to=request.getParameter("to");
       String user=request.getParameter("user");
       String pass=request.getParameter("pass");
       String[] msg=request.getParameterValues("msg");
        String[] name = request.getParameterValues("name");
         String[] ticketid = request.getParameterValues("ticketid");
        String cnum = request.getParameter("cnum");

        String flightid = request.getParameter("flightid");
        String dtime = request.getParameter("dtime");
        String atime = request.getParameter("atime");
        String duration=request.getParameter("duration");
        int sum = Integer.parseInt(request.getParameter("sum"));
        String sub=request.getParameter("sub");
        String tickettype = request.getParameter("tickettype");
        String adult=request.getParameter("adult");
        String child=request.getParameter("child");
        String rdate=request.getParameter("rdate");
     String round=request.getParameter("round");
     int price=Integer.parseInt(request.getParameter("price"));
String from = request.getParameter("from"); 
String to1 = request.getParameter("to1");
String date=request.getParameter("date");
int bal=Integer.parseInt(request.getParameter("bal"));
int total=Integer.parseInt(request.getParameter("total"));
            Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
int i= st.executeUpdate("update debitcard SET balance="+(bal-price)+" where cardno='"+cnum+"'");
        request.setAttribute("name",name);
      
request.setAttribute("user",user);
request.setAttribute("pass", pass);
request.setAttribute("msg",msg);
request.setAttribute("sub", sub);
request.setAttribute("total",total);
request.setAttribute("flightid",flightid);
request.setAttribute("tickettype",tickettype);
request.setAttribute("adult",adult);
request.setAttribute("child",child);
request.setAttribute("sum",sum);
request.setAttribute("from",from);
request.setAttribute("to1",to1);
request.setAttribute("date",date);
request.setAttribute("dtime",dtime);
request.setAttribute("atime",atime);
request.setAttribute("duration",duration);
request.setAttribute("to",to);
request.setAttribute("ticketid",ticketid);
request.setAttribute("price",price);
if(round!=null){
    request.setAttribute("rdate",rdate);
    request.setAttribute("round",round);
}

//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");
RequestDispatcher view = request.getRequestDispatcher("/tcupdate1");
           view.forward(request,response);
            con.close();
           System.out.println("Disconnected!");%>
    </body>
</html>
