<%-- 
    Document   : log_out
    Created on : Jun 10, 2016, 5:10:51 PM
    Author     : Het
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.invalidate();
         response.sendRedirect("Login.html");
         %>
    </body>
</html>
