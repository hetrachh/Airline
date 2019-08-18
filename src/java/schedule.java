/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.*;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Aptech-pc
 */
public class schedule extends HttpServlet {
Connection con=null;
    Statement stat=null; 
    ResultSet rs = null; 
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
            out.println("<title>Servlet schedule</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet schedule at " + request.getContextPath() + "</h1>");
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
      //  processRequest(request, response);
      String flightno=request.getParameter("flightno");
        ArrayList pid_list = new ArrayList();
         ArrayList al = null;
          try{
         PrintWriter out=response.getWriter();
             Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(dbURL, dbUser, dbPass);
 

            stat = con.createStatement();
           
rs=stat.executeQuery("select * from schedule where flightno="+flightno);
            
while(rs.next()){
     al = new ArrayList();
al.add(rs.getString(1));
al.add(rs.getString(2));
al.add(rs.getString(3));
al.add(rs.getString(4));
al.add(rs.getString(5));
al.add(rs.getString(6));
al.add(rs.getString(7));
al.add(rs.getString(8));
al.add(rs.getString(9));

            
//al.add(rs.getString(10));
//al.add(rs.getString(11));
System.out.println("al :: " + al);
                pid_list.add(al);
}
            
request.setAttribute("piList", pid_list);
            
            RequestDispatcher view = request.getRequestDispatcher("/schedule1.jsp");
            view.forward(request, response);
            con.close();
            System.out.println("Disconnected!");
          }
           catch(Exception e){
    
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
