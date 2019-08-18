/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Aptech-pc
 */
public class book extends HttpServlet {
private String dbURL = "jdbc:mysql://localhost:3306/airline";
    private String dbUser = "root";
    private String dbPass = "root";
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
            out.println("<title>Servlet book</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet book at " + request.getContextPath() + "</h1>");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
         String to=request.getParameter("to");
       String user=request.getParameter("user");
       String pass=request.getParameter("pass");
       String[] msg=request.getParameterValues("msg");
       String dtime=request.getParameter("dtime");
       String atime=request.getParameter("atime");
       String duration=request.getParameter("duration");
       String price=request.getParameter("price");
        String[] name = request.getParameterValues("name");
        
        String[] ticketid=request.getParameterValues("ticketid");
        //   String pass = request.getParameter("pass");
        String flightid = request.getParameter("flightid");
        //String fromplace = request.getParameter("fromplace");
        //tring toplace = request.getParameter("toplace");
        int sum = Integer.parseInt(request.getParameter("sum"));
        String sub=request.getParameter("sub");
        String tickettype = request.getParameter("tickettype");
        int adult=Integer.parseInt(request.getParameter("adult"));
        int child=Integer.parseInt(request.getParameter("child"));
String from = request.getParameter("from"); 
String to1 = request.getParameter("to1");
String date=request.getParameter("date");
String rdate=request.getParameter("rdate");
     String round=request.getParameter("round");
     
         // String name1=name[i];
         // String t=ticketid[i];
          //  PDF.pdf(name1,t,dtime,atime,duration,flightid,from,to1,date,tickettype,adult,child,i,price);
           
    // String credit=request.getParameter("credit");
       
         
        
        
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
            // constructs SQL statement/
             if(round!=null){
            for(int i=0;i<sum;i++){
           
            String sql = "INSERT INTO book(name,flightid,fromplace,toplace,date,tickettype,adult,child,total,rdate,price) values (?,?,?,?,?,?,?,?,?,?,?)";
                        
            PreparedStatement statement = conn.prepareStatement(sql);
         //   statement.setString(1, flight_id);
           // statement.setString(1,username);
            statement.setString(1, name[i]);
            
           // statement.setString(3,pass);
            statement.setString(2,flightid);
            statement.setString(3,from);
            statement.setString(4, to1);
            statement.setString(5,date);
            statement.setString(6,tickettype);
              statement.setInt(7,adult);
            statement.setInt(8,child);
            statement.setInt(9, sum);
            statement.setString(10,rdate);
                    statement.setString(11,price);
           //  statement.setString(10,credit);
             
                     // sends the statement to the database server
              
             statement.executeUpdate();
            } 
            
            }
            
            else{
                 String[] sql=null;
                    for(int i=0;i<sum;i++){PrintWriter out=response.getWriter();
             sql[i] = "INSERT INTO book(name,flightid,fromplace,toplace,date,tickettype,adult,child,total,price,ticketnum) values (?,?,?,?,?,?,?,?,?,?,?)";
                  out.println(""+name[i]);      
            PreparedStatement statement = conn.prepareStatement(sql[i]);
            out.println(ticketid[i]);
           
              
            
         //   statement.setString(1, flight_id);
           // statement.setString(1,username);
        
            statement.setString(1, name[i]);
             statement.setString(11,ticketid[i]);
           
           // statement.setString(3,pass);
            statement.setString(2,flightid);
            statement.setString(3,from);
            statement.setString(4, to1);
            statement.setString(5,date);
            statement.setString(6,tickettype);
              statement.setInt(7,adult);
            statement.setInt(8,child);
            statement.setInt(9, sum);
            statement.setString(10,price);
          
             
                     // sends the statement to the database server
              
            statement.executeUpdate();
            
           
            
            }
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
            request.setAttribute("user",user);
            request.setAttribute("pass",pass);
            request.setAttribute("msg",msg);
            request.setAttribute("sub",sub);
            request.setAttribute("to",to);
            request.setAttribute("name",name);
                    request.setAttribute("user",user);
             
            // forwards to the message page
            //RequestDispatcher view = request.getRequestDispatcher("/Mail");
            //view.forward(request, response);
            System.out.println("Disconnected!");
          //out.println("<input type=\"submit\" value=\"submit\"");
          
        } 
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
