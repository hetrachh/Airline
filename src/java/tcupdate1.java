/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dell
 */
public class tcupdate1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet tcupdate1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet tcupdate1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      //  processRequest(request, response);
       String to=request.getParameter("to");
       String user=request.getParameter("user");
       String pass=request.getParameter("pass");
       String[] msg=request.getParameterValues("msg");
        String[] name = request.getParameterValues("name");
          String price = request.getParameter("price");
        String flightid = request.getParameter("flightid");
       String dtime = request.getParameter("dtime");
        String atime = request.getParameter("atime");
        String duration=request.getParameter("duration");
        int sum = Integer.parseInt(request.getParameter("sum"));
        String sub=request.getParameter("sub");
        String tickettype = request.getParameter("tickettype");
        String adult=request.getParameter("adult");
        String child=request.getParameter("child");
     String credit=request.getParameter("credit");
String from = request.getParameter("from"); 
String[] ticketid=request.getParameterValues("ticketid");
String to1 = request.getParameter("to1");
String date=request.getParameter("date");
String rdate=request.getParameter("rdate");
     String round=request.getParameter("round");
int total=Integer.parseInt(request.getParameter("total"));
int i=0;
try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/airline","root", "root");
Statement st = con.createStatement();
ResultSet rs;
if("Economy".equals(tickettype)){
 i = st.executeUpdate("update schedule SET etotal="+(total-sum)+" where flightno='"+flightid+"'");
}else if("Business".equals(tickettype)){
   i = st.executeUpdate("update schedule SET btotal="+(total-sum)+" where flightno='"+flightid+"'");
}else{
 i = st.executeUpdate("update schedule SET ftotal="+(total-sum)+" where flightno='"+flightid+"'");
}

        request.setAttribute("name",name);
request.setAttribute("user",user);
request.setAttribute("pass", pass);
request.setAttribute("msg",msg);
request.setAttribute("sub", sub);
request.setAttribute("dtime",dtime);
request.setAttribute("atime",atime);
request.setAttribute("duration",duration);
request.setAttribute("flightid",flightid);
request.setAttribute("tickettype",tickettype);
request.setAttribute("adult",adult);
request.setAttribute("child",child);
request.setAttribute("credit",credit);
request.setAttribute("sum",sum);
request.setAttribute("from",from);
request.setAttribute("to1",to1);
request.setAttribute("date",date);
request.setAttribute("price",price);
request.setAttribute("to",to);
request.setAttribute("ticketid",ticketid);
if(round!=null){
    request.setAttribute("rdate",rdate);
    request.setAttribute("round",round);
}
//out.println("welcome " + userid);
//out.println("<a href='logout.jsp'>Log out</a>");
RequestDispatcher view = request.getRequestDispatcher("/book");
            view.forward(request, response);
            con.close();
            System.out.println("Disconnected!");

    }catch(Exception e){
        
    }
    }
    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
