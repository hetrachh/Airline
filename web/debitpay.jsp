<%-- 
    Document   : debitpay
    Created on : 30 Aug, 2016, 12:51:02 PM
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
       <%String to=request.getParameter("to");
       String user=request.getParameter("user");
       String pass=request.getParameter("pass");
       String[] msg=request.getParameterValues("msg");
       String[] ticketid=request.getParameterValues("ticketid");
        String[] name = request.getParameterValues("name");
           String duration = request.getParameter("duration");
        String flightid = request.getParameter("flightid");
        String dtime = request.getParameter("dtime");
        String atime = request.getParameter("atime");
        int sum = Integer.parseInt(request.getParameter("sum"));
        String sub=request.getParameter("sub");
        String tickettype = request.getParameter("tickettype");
        String adult=request.getParameter("adult");
        String child=request.getParameter("child");
     //String credit=request.getParameter("credit");
String from = request.getParameter("from"); 
String to1 = request.getParameter("to1");
String date=request.getParameter("date");
String rdate=request.getParameter("rdate");
     String round=request.getParameter("round");
int total=Integer.parseInt(request.getParameter("total"));
String price=request.getParameter("price");
String cname = request.getParameter("cname"); 
String cnum = request.getParameter("cnum");
int emonth=Integer.parseInt(request.getParameter("emonth"));
int eyear=Integer.parseInt(request.getParameter("eyear"));
int cvv=Integer.parseInt(request.getParameter("cvv"));
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
rs = st.executeQuery("select * from debitcard where cardname='"+cname+"' and cardno='" + cnum + "' and expmonth="+emonth+" and expyear="+eyear+" and cvv="+cvv);
if(rs.next()){
       %><form action="ubal.jsp" method="get">
           <input type="hidden" name="user" value="<%=user%>"/>
           <% if(round!=null){%>
                                                                                               <input type="hidden" name="rdate" value="<%=rdate%>"/>
                                                                                               <input type="hidden" name="round" value="<%=round%>"/>
                                                                                                      <%}%>
                                                                                                <input type="hidden" name="pass" value="<%=pass%>"/>
                                                                                                <input type="hidden" name="dtime" value="<%=dtime%>"/>
                                                                                                <input type="hidden" name="atime" value="<%=atime%>"/>
                                                                                                <input type="hidden" name="duration" value="<%=duration%>"/>
                                                                                               <input type="hidden" name="to" value="<%=to%>"/>
                                                                                                <input type="hidden" name="msg" value="<%=msg%>"/>
                                                                                               <%for( int i=0;i<sum;i++){%>
                                                                                                <input type="hidden" name="ticketid" value="<%=ticketid[i]%>"/>
                                                                                                <input type="hidden" name="name" value="<%=name[i]%>"/>
                                                                                               <%}%>
                                                                                                <input type="hidden" name="flightid" value="<%=flightid%>"/>
                                                                                                <input type="hidden" name="sum" value="<%=sum%>"/>
                                                                                                <input type="hidden" name="sub" value="<%=sub%>"/>
                                                                                                <input type="hidden" name="tickettype" value="<%=tickettype%>"/>
                                                                                               <input type="hidden" name="adult" value="<%=adult%>"/>
                                                                                               <input type="hidden" name="child" value="<%=child%>"/>
                                                                                               <input type="hidden" name="from" value="<%=from%>"/>
                                                                                               <input type="hidden" name="to1" value="<%=to1%>"/>
                                                                                               <input type="hidden" name="total" value="<%=total%>"/>
                                                                                               <input type="hidden" name="date" value="<%=date%>"/>
                                                                                               <input type="hidden" name="price" value="<%=price%>"/>
                                                                                               <input type="hidden" name="cnum" value="<%=cnum%>"/>
                                                                                               <input type="hidden" name="bal" value="<%=rs.getInt(6)%>"/>
                                                                                               Press Ok to confirm booking <input type="submit" value="Ok"/>
       </form><%}%></body>
</html>
