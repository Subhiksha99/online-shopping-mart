<%-- 
    Document   : phone
    Created on : 15-Jan-2022, 8:47:52 pm
    Author     : subhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.Cookie" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Subish Electronics Shopping</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            #res{
                display: none;
            }
            .jumbotron {
    background-color: #f4511e;
    color: #fff;
  }
  body {
    font: 400 15px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  h2 {
    font-size: 24px;
    text-transform: uppercase;
    color: #303030;
    font-weight: 600;
    margin-bottom: 30px;
  }
  h4 {
    font-size: 19px;
    line-height: 1.375em;
    color: #303030;
    font-weight: 400;
    margin-bottom: 30px;
  }  
        </style>
    </head>
    <body>
        <script>
            var count=0;
            function set(){
                count++;
                document.getElementById("res").innerHTML=count;
            }
        </script>
        <div class="jumbotron text-center">
  <h1>Subish Electronic Shopping</h1> 
  <p>Have a great Shopping Experience</p> 
  <form action="searching" method="get">
    <div class="input-group">
        
      <input type="search" class="form-control" size="50" placeholder="search an item" id="see" name="searchitem">
      <div class="input-group-btn">
          
              <button type="submit" class="btn btn-danger"  id="result">Search</button>
          
      </div>
    </div>
  </form>
</div>
        
        <%
            //request.getRequestDispatcher("home.html").include(request, response);
            try{
            
            Connection con;
            Statement st;
            ResultSet rs;
            Class.forName("com.mysql.cj.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");
                st=con.createStatement();
                rs=st.executeQuery("select * from phone");
                byte b[];
	    Blob blob;
            String image;
	    int i=1;
                while(rs.next()){
        b = rs.getBytes("model_image");
        String en=Base64.getEncoder().encodeToString(b);
        request.setAttribute("imgbase", en);
        %>
        <table><tr><td>
                    <img src="data:image/jpeg;base64,${imgbase}" width="500" height="500"></td>
                <td> <table><tr>
                            <td>Model id</td><td><p><%=rs.getString(1)%></p></td></tr>
                        <tr> <td>Model Name</td><td><p><%=rs.getString(2)%></p></td></tr>
                        <tr> <td>Brand</td><td><p><%=rs.getString(3)%><p></td><tr>
                        <tr> <td>mrp</td><td><p><%=rs.getString(4)%></p></td></tr>
                        <tr> <td>Description</td><td><p><%=rs.getString(6)%></p></td></tr>
                        <tr><td><button onclick="set()">Add To Cart</button></td></tr>
                        <p id="res"></p>
                        
                </tr>
            </table>
        </td></tr>
</table>
                <hr>
            <%}

            }
            catch(Exception e)
            {
            
            }
        %>
    </body>
</html>
