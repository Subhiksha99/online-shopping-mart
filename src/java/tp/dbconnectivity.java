/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp;

/**
 *
 * @author subhi
 */
import java.sql.*;
interface curd{
    void insert();
    ResultSet display(String q);
}
public class dbconnectivity implements curd {
    Connection con;
    Statement st;
    ResultSet rs;
    public dbconnectivity(){
       try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");
        System.out.println("connection establish");
    }
    catch(Exception e){
        System.out.println("error in connection"+e);
    } 
    }
    public void insert(){
        
    }
    public void remove(String q){
        try{
            PreparedStatement pd=con.prepareStatement(q);
            int r=pd.executeUpdate();
            System.out.println(r);
        }
        catch(Exception e)
        {
             System.out.println(e); 
        }
    }
    public ResultSet display(String q){
        try{
         st=con.createStatement();
         rs=st.executeQuery(q);
         
         }
         catch(Exception e){
             
         }
         return rs;
    }
}
