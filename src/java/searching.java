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
/**
 *
 * @author subhi
 */

public class searching extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet search</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet search at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        PrintWriter out=response.getWriter();
        
        request.getRequestDispatcher("home.html").include(request, response); 
        String item=request.getParameter("searchitem");
        if(item.equalsIgnoreCase("laptop"))
            { 
                response.sendRedirect("computers");
            }
            else if(item.equalsIgnoreCase("phone")||item.equalsIgnoreCase("smart phone"))
                    {
              response.sendRedirect("phone.jsp");
                    }
            else if(item.startsWith("acer")|| item.startsWith("Acer"))
            {
                laptop obj=new laptop("select * from lbasic where brand='acer'");
                ResultSet rs=obj.display();
                try{
                while(rs.next()){
                    out.println("<a href='view?mn="+rs.getString(1)+"'>");
                    out.println("<h3>Model: "+rs.getString(1)+"</h3>");
                    out.println("<h3>Brand: "+rs.getString(3)+"</h3>");
                    out.println("<h3>Amount: "+rs.getString(2)+"</h3>");
                    out.println("</a>");
                }
                }
                catch(Exception e){}
                
            }
            else if(item.startsWith("dell")||item.startsWith("Dell"))
            {
                laptop obj=new laptop("select * from lbasic where brand='Dell'");
                ResultSet rs=obj.display();
                try{
                while(rs.next()){
                    out.println("<a href='view?mn="+rs.getString(1)+"'>");
                    out.println("<h3>Model: "+rs.getString(1)+"</h3>");
                    out.println("<h3>Brand: "+rs.getString(3)+"</h3>");
                    out.println("<h3>Amount: "+rs.getString(2)+"</h3>");
                    out.println("</a>");
                    out.println("<hr>");
                }
                }
                catch(Exception e){}
            }
            else{
                out.println("<h1>No item found</h1>");
                //response.sendRedirect("design.jsp");
                
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
