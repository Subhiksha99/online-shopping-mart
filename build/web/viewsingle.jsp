<%-- 
    Document   : viewsingle
    Created on : 25-Jan-2022, 6:50:37 pm
    Author     : subhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>    
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .column {
  float: left;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

.left, .right {
  width: 25%;
}

.middle {
  width: 50%;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
        </style>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Connection con;
            Statement st;
            ResultSet res;
            try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");
        System.out.println("connection establish");
    }
    catch(Exception e){
        System.out.println("error in connection"+e);
    }
            out.println("<p>enter</p>");
       String name=request.getParameter("mn");
       out.println("<p>name"+name+"</p>");
         //laptop db=new laptop("select * from lapinfo where model_name='"+name+"'");
         st=con.createStatement();
         res=st.executeQuery("select * from lapinfo where model_name='"+name+"'");
         ResultSet rs=db.display();
         out.println("<p>"+rs+"</p>");
         try{
             byte img1[],img2[],img3[];
          while(rs.next()){
              out.println("<div class='row'");
              out.println("<div class='column left'>");
              img1 = rs.getBytes("i1");  
        String en=Base64.getEncoder().encodeToString(img1);
        request.setAttribute("imgbase", en);
        out.println("<img src=data:image/jpg;base64,"+en+" height='50' width='50' onmouseover=''>");
              img2=rs.getBytes("i2");
              en= Base64.getEncoder().encodeToString(img1);
              request.setAttribute("imgbase", en);
              out.println("<img src=data:image/jpg;base64,"+en+" height='50' width='50'>");
              img3=rs.getBytes("i3");
        en= Base64.getEncoder().encodeToString(img1);
              request.setAttribute("imgbase", en);
              out.println("<img src=data:image/jpg;base64,"+en+" height='50' width='50'>");
              out.println("</div>");
              out.println("<div class=column middle");
              out.println("/div");
              out.println("<div class='column right'>");
             out.println("<table border=1>");
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
             out.println("<tr><td>color</td>");
             out.println("<td>"+rs.getString("color")+"<td></tr>");
             out.println("</table>");
             out.println("</div>");
             out.println("</div>");
          }
         }
         catch(Exception e){
     out.println("<p>"+e+"</p>");    }
        %>
    </body>
</html>
