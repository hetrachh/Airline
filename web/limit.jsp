<%-- 
    Document   : limit
    Created on : 31 Aug, 2016, 8:36:39 PM
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
       <% String to=request.getParameter("to");
       String user=request.getParameter("user");
       String pass=request.getParameter("pass");
       String[] msg=request.getParameterValues("msg");
        String[] name = request.getParameterValues("name");
           String[] ticketid = request.getParameterValues("ticketid");
        String flightid = request.getParameter("flightid");
        String dtime= request.getParameter("dtime");
        String atime = request.getParameter("atime");
        String duration=request.getParameter("duration");
        int sum = Integer.parseInt(request.getParameter("sum"));
        String sub=request.getParameter("sub");
        String tickettype = request.getParameter("tickettype");
        String adult=request.getParameter("adult");
        String child=request.getParameter("child");
    // String credit=request.getParameter("credit");
      String rdate=request.getParameter("rdate");
     String round=request.getParameter("round");
String from = request.getParameter("from"); 
String to1 = request.getParameter("to1");
String date=request.getParameter("date");
int total=Integer.parseInt(request.getParameter("total"));
String price=request.getParameter("price");
       if(total>sum){
           request.setAttribute("name",name);
request.setAttribute("user",user);
request.setAttribute("ticketid",ticketid);
request.setAttribute("pass", pass);
request.setAttribute("msg",msg);
request.setAttribute("sub", sub);
request.setAttribute("price",price);
request.setAttribute("flightid",flightid);
request.setAttribute("tickettype",tickettype);
request.setAttribute("adult",adult);
request.setAttribute("child",child);
//request.setAttribute("credit",credit);
request.setAttribute("sum",sum);
request.setAttribute("from",from);
request.setAttribute("to1",to1);
request.setAttribute("date",date);
request.setAttribute("to",to);
request.setAttribute("total",total);
request.setAttribute("dtime",dtime);
request.setAttribute("atime",atime);
request.setAttribute("duration",duration);
if(round!=null){
    request.setAttribute("rdate",rdate);
    request.setAttribute("round",round);
}
//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");
RequestDispatcher view = request.getRequestDispatcher("/Payment.jsp");
           view.forward(request, response);
           
}else{
           out.println("no seats");
}%>
    </body>
</html>
