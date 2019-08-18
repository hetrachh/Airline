/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.List;
import java.util.Vector;
import javax.servlet.*;


/**
 *
 * @author Aptech-pc
 */

public class retrieveimage extends HttpServlet {
Connection con=null;
    Statement stat=null; 
    ResultSet rs = null; 
//    InputStream sImage;
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
                response.setContentType("image/jpeg");
               // PrintWriter out =response.getWriter();
              //  String id1=request.getParameter("id");
        //PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
//   String id=request.getParameter("id");
          Blob ePhoto=null;
  
        byte[] rawBytes =null;
    //InputStream sImage;
   
       // int id=Integer.parseInt(id1);
        ServletOutputStream out = response.getOutputStream();
        try {
             String id = request.getQueryString();
             int id1=Integer.parseInt(id);
            /*
             * TODO output your page here. You may use following sample code.
             */
            //byte[] rawBytes = null;
      
             //DriverManager.registerDriver(new com.mysql.jdbc.Driver());
             Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(dbURL, 
                    dbUser, dbPass);
           
              stat = con.createStatement();

           rs = stat.executeQuery("select photo from offer where fligt_id="+id1); 
         
         //stat.setInt(1,id);
            while(rs.next()){
           
         //   rs = stat.executeQuery("select photo from offer"); 
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet retriveImage</title>");
//            out.println("</head>");
//            out.println("<body>");
          rawBytes = rs.getBytes(1);
           out.write(rawBytes);
            
          // int size=0;
//sImage = rs.getBinaryStream(1);
//response.reset();
//response.setContentType(“image/jpeg”);
//while((size=sImage.read(rawBytes))!= -1 ){
//response.getOutputStream()
//write(rawBytes,0,size);

}
            
out.flush();
out.close();

            




//            out.println("</body>");
//            out.println("</html>");
        
   
           
        } catch (Exception ex) {
            out.println(ex.getMessage());
        } finally {
            try {
                con.close();
                out.close();
              
            } catch (Exception ex) {
            }
            //request.getRequestDispatcher("/offer.jsp").include(request, response);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */


