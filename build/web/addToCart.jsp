<%-- 
    Document   : addToCart
    Created on : 25-Jan-2022, 8:53:37 pm
    Author     : subhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@page import='tp.dbconnectivity'%>

<!DOCTYPE html>
<html>
    <head>
        <title>Subhish Electronics Showroom</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
             .jumbotron {
    background-color: #f4511e;
    color: #fff;
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
  .modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
  position: relative;
  background-color: #fefefe;
  margin: auto;
  padding: 0;
  border: 1px solid #888;
  width: 80%;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
  -webkit-animation-name: animatetop;
  -webkit-animation-duration: 0.4s;
  animation-name: animatetop;
  animation-duration: 0.4s
}

/* Add Animation */
@-webkit-keyframes animatetop {
  from {top:-300px; opacity:0} 
  to {top:0; opacity:1}
}

@keyframes animatetop {
  from {top:-300px; opacity:0}
  to {top:0; opacity:1}
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}

.modal-header {
  padding: 2px 16px;
  background-color: #ff5e6c;
  color: white;
}

.modal-body {padding: 2px 16px;}

.modal-footer {
  padding: 2px 16px;
  background-color:#ff5e6c;
  color: white;
}
/* Set a style for the bill button */
.bill{
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  width:150;
  cursor: pointer;
  margin-bottom:10px;
  opacity: 0.8;
  align:right;
}
table,tr,td{
 font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
}
 td, th{
border:1px solid #ddd;
paddig:8px;}
tr:nth-child(even)
{background-color: #f2f2f2;}
.shipform{
    display: none;
}
        </style>
    </head>
    <body>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script>
            var arr=[];
            var len=0;
            $(document).ready(function(){
                $("#bt").click(function(){
                     $(".shipform").show();
                    var arr=[]
                    $('#whole tr').each(function (a, b,c) {
                var name = $('#brand', a).text();
                var value = $('#price', b).text();
                var quan= $('#quan',c).text();
                arr.push(name);
                arr.push(value);
                arr.push(quan);
                });
                for (var item in arr){
                 console.log(arr[item],item);
}
                alert(JSON.stringify(arr));
                   
                    
    });
    $('#getship').click(function(){
        console.log("entered click fns");
        var modal=$("#myModal");
        console.log("entered click fns2");
        $('#myModal').show();
window.click(function(event){
{if (event.target===$('#myModal'))
{
    $('#myModal').hide();
   // modal.style.display="none";
}
}});
    });
    
    
        });

        </script>
        <div class="jumbotron text-center">
  <h1>Subish Electronic Shopping</h1> 
  <p>Have a great Shopping Experience</p> 
        </div>
            
            <%!
                void createConnection(Connection cc){
                try{
               
            }
            catch(Exception e){
            }
            }
                int insert(String name,String brand,int amt){
               
                return 0;
            }
                
                
            %>
            <%
                Cookie ck[]=request.getCookies();
                /*for(int i=0;i<4;i++){
                out.println("<p>"+ck[i].getValue()+"</p>");}
                out.println("<h1>Welcome "+ck[0].getValue()+" ,Your Cart details are");*/
                
                String name=ck[0].getValue();
                String brand=ck[2].getValue();
                int amt=Integer.parseInt(ck[3].getValue());
                int qua=Integer.parseInt(request.getParameter("no"));
                Connection cc=null;
                createConnection(cc);
                Statement st;
                ResultSet rs;
                 Class.forName("com.mysql.cj.jdbc.Driver");
        cc=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");
        System.out.println("connection establish");
         PreparedStatement pd=cc.prepareStatement("insert into cart values(?,?,?,?,?)");
                pd.setString(1,name);
                pd.setString(2, brand);
                pd.setInt(3,amt);
                pd.setBoolean(4, true);
                pd.setInt(5, qua);
                pd.executeUpdate();
                
                  
        st=cc.createStatement();
        
        
         rs=st.executeQuery("select * from cart where user_name='"+name+"'");
         dbconnectivity obj=new dbconnectivity();
         int total=0;
         out.println("<table id='whole'>");
         out.println("<th>Brand Name</th>");
    out.println("<th>Amount</th>");
    out.println("<th>Quantity</th>");
         while(rs.next()){
        total+=rs.getInt("amount")*qua;
        //String query="delete * from cart where amount='"+rs.getInt("amount")+"'";
                %>
    
    <tr><td id="brand"><%= rs.getString("brand")%></td>
                    <td id="price"><%= rs.getInt("amount")%></td>
                    <td id="quan"><%= qua%></td>
                    
                   
                </tr>
                <%}

%>
<tr><td>Total amount to be paid:</td><td><%=total%></td></tr>
        </table>
        <form action="design.jsp">
        <button>Continue shopping</button>
        </form>
        <button id="bt">Buy now</button>
        <p id='res'></p>
        <div class="shipform">
            
                Enter Address:<input type="text" name="addr" id="cust_addr"><br>
            <button id="getship">order</button>
            
        </div>
        
        <div id="myModal" class="modal">
 <div class="modal-content">
  <div class="modal-header">
   <h2>Your order placed</h2>
  </div>
 <div class="modal-body">  
  <h4>total amount to be paid:<%=total%></h4> 
  </div>
  <div class="modal-footer">
   <h4>Thank You !Visit Again</h4>
  </div>
 </div>
</div> 
    </body>
</html>