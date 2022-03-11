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
import java.util.*;
import javax.servlet.http.Cookie;  
/**
 *
 * @author subhi
 */
public class computers extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /*protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            TODO output your page here. You may use following sample code. 
           
        }
    }*/

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
        // processRequest(request, response);
         PrintWriter out = response.getWriter();
         out.println("<html>");
         out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
         out.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>");
         out.println("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>");
         out.println("<script src='zoom.js'>");
         //out.println("<link rel=\'stylesheet\' href=\'C:\\books\\videos\\web_project\\cssstyle.css\'");
         String name=request.getHeader("name");
         //out.println("<p>"+name+"</p>");
         String pwd=request.getParameter("pwd");
       Cookie[] ck=request.getCookies();
       /*     for(int i=0;i<2;i++)
                out.println("<p>"+ck[i].getValue()+"</p>");*/
         // out.println("<div class='col-sm-3 sidenav'>");  
          
          //out.println("</div>");
          offer t1=new offer();
          t1.start();
          try{
          t1.join();
          }
          catch(Exception e){
              
          }
          request.getRequestDispatcher("home.html").include(request, response);  
          String of=t1.getoffer;
          out.println("<h1> you got an 10% offer for "+of+" laptop</h1>");
         laptop db=new laptop("select * from lbasic");
         ResultSet rs=db.display();
         double dis=0;
         out.println("<body>");
         try{
             byte b[];
         while(rs.next()){
              b = rs.getBytes("profile");  
        String en=Base64.getEncoder().encodeToString(b);
        String mname=rs.getString("model_name");
        String br=rs.getString("brand");
        if(br.equals(of)){
            //out.println("<p>brand"+br+"</p>");
        int amt=rs.getInt("amount");
        double per=amt*0.1;
        dis=amt-per;
        //out.println("<p>dis"+dis+" "+per+"</p>");
        }
        request.setAttribute("imgbase", en);
        out.println("<a href='view?mn="+mname+"'>");
        out.println("<table>");
        
        out.println("<tr>");
        //out.println("<div class='arrange'>");
        out.println("<td><img src=data:image/jpg;base64,"+en+"><br></td>");
        out.println("<td>");
        out.println("<table>");
            out.println("<tr>");
             out.println("<td><h3>Model Name: "+rs.getString("model_name")+"</h3><br></td>");
             out.println("<td><h3>brand: "+rs.getString("brand")+"</h3><br></td>");
             out.println("<td><h3>Amount: "+rs.getString("amount")+"</h3><br></td></tr>");
             //out.println("</div>");
             if(dis>0)
             {
                 out.println("<td><p><b>Discounted price"+dis+"</b></p></td>");
                 dis=0;
             }
             //out.println("<form action='addToCart.jsp'");
             //out.println("<button name='cart' value="+mname+">Add to cart</button>");
             //out.println("<button name='buy' value="+mname+">Buy now</button>");
             //out.println("</form>");
             out.println("</a>");
            // out.println("<hr>");
            out.println("</table>");
             out.println("</td>");
             out.println("</tr>");
             out.println("</table>");
             out.println("<hr>");
             //String name="data:image/jpg;base64,${imgbase}";
             
             //out.println("<img src="+data:image/jpeg;base64,${imgbase}+'">");
         }}
         catch(Exception e){
                 out.println("<p>"+e+"</p>");
                 }
         out.println("</body>");
         out.println("</html>");
         
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
        //processRequest(request, response);
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
