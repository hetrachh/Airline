/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
 

/**
 *
 * @author Aptech-pc
 */

public class retrievedata extends HttpServlet {
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
        PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
             try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            con = DriverManager.getConnection(dbURL, dbUser, dbPass);
 

            stat = con.createStatement();

            rs = stat.executeQuery("select fligt_id,flight_name, dep_time ,arr_time, dep_city, arr_city, duration, price from offer"); 
           // stat = con.prepareCall("{call prc_getEmployees}");
           // ResultSet rs = stat.executeQuery();
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DisplayData</title>");
            out.println("<link rel=\"stylesheet\" href=\"crud.css\"/>\n");
            out.println("<link rel=\"stylesheet\" href=\"css/reset.css\" type=\"text/css\" media=\"all\">\n" +
"<link rel=\"stylesheet\" href=\"css/layout.css\" type=\"text/css\" media=\"all\">\n" +
"<link rel=\"stylesheet\" href=\"css/#\" type=\"text/css\" media=\"all\">\n" +
"<script type=\"text/javascript\" src=\"js/slider1.js\"></script>\n" +
"<script type=\"text/javascript\" src=\"js/jquery.cycle.all.js\"></script> \n" +
"<style>\n" +
"ul{\n" +
"	list-type: none;\n" +
"	list-style: none;\n" +
"	padding: 0;\n" +
"	margin: 0;\n" +
"}\n" +
"\n" +
".slider{\n" +
" margin: 0 auto;\n" +
" width: 625px;\n" +
" height: 345px;	\n" +
" \n" +
" border: 8px solid #FFFFFF;\n" +
" border-radius:5px;\n" +
" box-shadow: 2px 2px 4px #333333;\n" +
"}\n" +
"</style>\n" +
"<script language=\"javascript\">\n" +
"$(document).ready(function(){\n" +
"	$('#slider1') .cycle({\n" +
"		fx: 'fade', //'scrollLeft,scrollDown,scrollRight,scrollUp',blindX, blindY, blindZ, cover, curtainX, curtainY, fade, fadeZoom, growX, growY, none, scrollUp,scrollDown,scrollLeft,scrollRight,scrollHorz,scrollVert,shuffle,slideX,slideY,toss,turnUp,turnDown,turnLeft,turnRight,uncover,ipe ,zoom\n" +
"		speed:  'slow', \n" +
"   		timeout: 2000 \n" +
"	});\n" +
"});	\n" +
"</script>");
            out.println("</head>");
            out.println("<body bgcolor=\"aliceblue\">");
            //out.println("<><tr><td>");
          /* out.println("<table cellpadding=\"4\" cellspacing=\"0\" frameborder=\"1\" class=\"listTable\">");
          //out.println("<th><td>Flight id</td><td>Flight Name</td><td>Departure Time</td><td>Arrivel Time</td><td>Departure City</td><td>Arrivel City</td><td>Duration</td><td>Price</td><td align='center'>Photo</td></thead>");
 out.println("<tr>\n" +
"          <th>Flight Id</th>\n" +
"          <th>Flight Name</th>\n" +
"          <th>Departure Time</th>\n" +
"          <th>Arrival Time</th>\n" +

"          <th>Departure City</th>\n" +
"          <th>Arrivel City</th>\n" +
"          <th>Duration</th>\n" +
"          <th>Price</th>\n" +
"          <th>Photo</th>\n" +
"         \n" +
"      </tr>");*/
          out.println("<section><div class=\"container\">\n" +
"<div class=\"slider\">\n" +
"<ul id=\"slider1\">");
            while (rs.next()) {
            
                int id = rs.getInt(1);
               out.println("<li><font color=\"blue\">"+""+id);
                //out.println("<td>" +rs.getString(1) + "</td>");
               out.println(rs.getString(2));
                out.println(rs.getString(3));
               out.println( rs.getString(4));
                out.println(rs.getString(5));
                out.println(rs.getString(6));
                out.println(  rs.getString(7));
                out.println(rs.getString(8));
                out.println("<img src='"+ "retrieveimage?" + id + "' style='width:625px; height:305px'/></li>");
            //out.println("<td><font color=\"blue\">"+""+id+"</td>");
            //out.println("<td>"+rs.getString(2)+"</td>");
            //out.println("<td>"+rs.getString(3)+"</td>");
            //out.println("<td>"+rs.getString(4)+"</td>");
            //out.println("<td>"+rs.getString(5)+"</td>");
            //out.println("<td>"+rs.getString(6)+"</td>");
            //out.println("<td>"+rs.getString(7)+"</td>");
            //out.println("<td>"+rs.getString(8)+"</td>");
           //out.println("<td><img src='retrieveimage?"+id+"' height=\"250\" width=\"500\"/>"+"</td>"+"<br>");
          
  
            }
            out.println("</ul></div>\n" +
"</div>\n" +
"</section>");
         //   out.println("</td></tr></table>");
            out.println("</body>");
            out.println("</html>");
        
        } catch (SQLException ex) {
            out.println(ex.getMessage());
        } finally {
            try {
                con.close();
                out.close();
            } catch (SQLException ex) {
                out.println(ex.getMessage());
            }
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
