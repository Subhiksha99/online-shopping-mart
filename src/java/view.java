/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;  
/**
 *
 * @author subhi
 */
public class view extends HttpServlet {

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
            out.println("<title>Servlet view</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet view at " + request.getContextPath() + "</h1>");
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
       // processRequest(request, response);
       PrintWriter out = response.getWriter();
      out.println("<!DOCTYPE html>");
       out.println("<html><head>");
         out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
         out.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js\"></script>");
         out.println("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>");
       out.println("</head>");
       out.println("<body>");
       request.getRequestDispatcher("home.html").include(request, response);  
       String bname=request.getParameter("mn");
       int amt=0;
       laptop con=new laptop("select * from lbasic where model_name='"+bname+"'");
       ResultSet res=con.display();
       try{
       while(res.next()){
           amt=res.getInt("amount");
       }
       }
       catch(Exception e){}
       Cookie bnameck=new Cookie("brand_name",bname);  
       Cookie amtck=new Cookie("amount",String.valueOf(amt));  
       Cookie[] ck=request.getCookies();
       
            response.addCookie(bnameck); 
            response.addCookie(amtck); 
       //out.println("<p>name"+ck[0].getValue()+"</p>");
       String query="select * from lbasic inner join lapinfo on lbasic.model_name=lapinfo.model_name where lbasic.model_name='"+bname+"'";
         laptop db=new laptop(query);
         ResultSet rs=db.display();
         //out.println("<p>"+rs+"</p>");
         try{
             byte b[];
          while(rs.next()){
              out.println("<h1>Model Name: "+rs.getString("model_name")+"<h1>");
              out.println("<h1>Brand: "+rs.getString("brand")+"<h1>");
               b = rs.getBytes("profile");  
        String en=Base64.getEncoder().encodeToString(b);
        request.setAttribute("imgbase", en);
        out.println("<table><tr>");
        out.println("<td><img src=data:image/jpg;base64,"+en+" width='500' height='500'></td>");
        out.println("<td><table border=1>");
             out.println("<tr><td>Model Name</td>");
             out.println("<td>"+rs.getString("model_name")+"<td></tr>");
             out.println("<tr><td>Processor</td>");
             out.println("<td>"+rs.getString("processor")+"<td></tr>");
             out.println("<tr><td>OS</td>");
             out.println("<td>"+rs.getString("os")+"<td></tr>");
             out.println("<tr><td>RAM</td>");
             out.println("<td>"+rs.getString("ram")+"<td></tr>");
             out.println("<tr><td>cpu</td>");
             out.println("<td>"+rs.getString("cpu")+"<td></tr>");
             out.println("<tr><td>Screen Size</td>");
             out.println("<td>"+rs.getString("screensize")+"<td></tr>");
             out.println("<tr><td>Weight</td>");
             out.println("<td>"+rs.getString("weight")+"<td></tr>");
             out.println("<tr><td>Dimension</td>");
             out.println("<td>"+rs.getString("dimension")+"<td></tr>");
             out.println("<tr><td>Specific use</td>");
             out.println("<td>"+rs.getString("feature")+"<td></tr>");
             out.println("<tr><td>color</td>");
             out.println("<td>"+rs.getString("color")+"<td></tr>");
             out.println("</table></td>");
             
            out.println("</tr></table>");
          }
          //out.println("<button onclick='alert(addedd to cart)'>add to cart</button>");
          out.println("<center><form action='addToCart.jsp'> ");
          out.println("<label>Enter Quantity</label><input type='number' name='no'><br>");
          out.println("<input type='submit' value='Add to cart' name='"+bname+"'>");
          out.println("</form></center>");
         }
         catch(Exception e){
     out.println("<p>"+e+"</p>");    }
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
