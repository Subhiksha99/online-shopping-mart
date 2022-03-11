<%-- 
    Document   : discount
    Created on : 27-Jan-2022, 9:36:13 am
    Author     : subhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%for(int i=0;i<5;i++){%>
        <h3>brand:<span id="bran"></span></h3>
        <h3>MRP: <span id="mrp"></span></h3>
        <h3>Discount: <span id="dis"></span></h3><!-- comment -->
        <h3>Amount: <span id="amt"></span></h3><!-- comment -->
        <h3>You Save:<span id="save"></span></h3>
        <h3>Color: <span id="col"></span></h3>
        <h3>Ram: <span id="ram"></span></h3>
        <%}%>
        <script>
             if (window.XMLHttpRequest)
         {// code for IE7+, Firefox, Chrome, Opera, Safari
             alert("chrome");
            xmlhttp = new XMLHttpRequest();
         }
         else
         {// code for IE6, IE5
             console.log("came inside");
             alert("enternet")
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP"); }
         xmlhttp.open("GET","clearance.xml",false);
         xmlhttp.send();
         alert("send");
         xmlDoc = xmlhttp.responseXML;
         console.log(xmlDoc);
         
         console.log(xmlDoc.getElementsByTagName("brand")[0].childNodes[0].nodeValue);
         for(var i=0;i<5;i++){
         document.getElementById("bran").innerHTML=xmlDoc.getElementsByTagName("brand")[i].childNodes[0].nodeValue;
         document.getElementById("mrp").innerHTML=xmlDoc.getElementsByTagName("MRP")[i].childNodes[0].nodeValue;
         document.getElementById("dis").innerHTML=xmlDoc.getElementsByTagName("discount")[i].childNodes[0].nodeValue;
     document.getElementById("col").innerHTML=xmlDoc.getElementsByTagName("color")[i].childNodes[0].nodeValue;
     document.getElementById("ram").innerHTML=xmlDoc.getElementsByTagName("Ram")[i].childNodes[0].nodeValue;
         }

        </script><!-- comment -->
        
    </body>
</html>
