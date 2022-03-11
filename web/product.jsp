<%-- 
    Document   : product
    Created on : 26-Jan-2022, 11:37:01 pm
    Author     : subhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="tp.dbconnectivity"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .header{
                width: 100%;
                height: 50;
  border: 10px dashed red;
  animation-name: example;
  animation-duration: 10s;
  animation-iteration-count: infinite;
            }
   @keyframes example {
  0%   {border-color: #ff0028;}
  25%  {border-color: #7d3cff;}
  50%  {border-color: #161748;}
  100% {border-color: #39a0ca;}
}
            .tab{
                background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 25%;
  }
  .catalogue{
     
  }
  .row{
       border:5px solid black;
      width:100;
      height:100;
      float:left;
  }
  </style>
    </head>
    <body>
        <div class="header">
            <img src="C:\books\videos\web_project\cart1.png" align="right" width="100" height="80">
            <h1 align="left">Subhish Electronics Shopping</h1>
            
        </div>
        <div>
            <%
                dbconnectivity db=new dbconnectivity();
                ResultSet rs=db.display("select * from lbasic");
                try{
                while(rs.next()){
                
                }
                }
                catch(Exception e){
                
                }
                ResultSet res=db.display("select * from phone");
                 try{
                while(res.next()){
                
                }
                }
                catch(Exception e){
                
                }
            %>
        </div>
    </body>
</html>
