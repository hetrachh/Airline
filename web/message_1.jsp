<%-- 
    Document   : message
    Created on : May 20, 2016, 11:33:34 PM
    Author     : Aptech-pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
            <h3><%=request.getAttribute("Message")%></h3></center>
            <%String to=request.getParameter("to");
       String user=request.getParameter("user");
       String pass=request.getParameter("pass");
       String msg=request.getParameter("msg");
       String sub=request.getParameter("sub");
            request.setAttribute("user",user);
            request.setAttribute("pass",pass);
            request.setAttribute("msg",msg);
            request.setAttribute("sub",sub);
            request.setAttribute("to",to);
                    request.setAttribute("user",user);
                RequestDispatcher view = request.getRequestDispatcher("/Mail");
            view.forward(request, response);%>
    </body>
</html>
