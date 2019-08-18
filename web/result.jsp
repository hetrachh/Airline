<%-- 
    Document   : result
    Created on : 2 Sep, 2016, 1:22:43 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%String name=request.getParameter("name");
        String to=request.getParameter("to");
        session.setAttribute("to",to);
            out.println("<center><h4>"+"Your payment has been passed and your tickets are booked"+"</h4><center>");
%>
<a href="ticket.jsp?name=<%=name%>&to=<%=to%>">Click here for see details of your booking</a>
    </body>
</html>
