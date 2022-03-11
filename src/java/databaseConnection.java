/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author subhi
 */
import java.sql.*;
public class databaseConnection {
    Connection con;
    Statement st;
    ResultSet rs;
    databaseConnection(){
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping","root","");
        System.out.println("connection establish");
    }
    catch(Exception e){
        System.out.println("error in connection"+e);
    }
    
}
    
}
class person extends databaseConnection{
    String uname;
    String password;
    void insert(String uname,String password){
        try{
        PreparedStatement pd=con.prepareStatement("insert into login values(?,?)");
        
        pd.setString(1, uname);
        pd.setString(2, password);
        pd.executeUpdate();
        }
        catch(Exception e){
            
        }
        
    }
    boolean search(String uname,String pwd)
    {
        try{
            st=con.createStatement();
         rs=st.executeQuery("select * from login where name='"+uname+"' and password='"+pwd+"'");
         if(rs.next())
             return true;
        }
        catch(Exception e)
        {
            System.out.print(e);
        }
        return false;
    }
    
}
 class laptop extends databaseConnection{
     String query;
     laptop(String que){
         query=que;
     }
     public ResultSet display(){
         try{
         st=con.createStatement();
         rs=st.executeQuery(query);
         
         }
         catch(Exception e){
             
         }
         return rs;
     }
 }
class complaining extends databaseConnection{
    
          void insert(String uname,String email,String com){
        try{
        PreparedStatement pd=con.prepareStatement("insert into complaint values(?,?,?,?)");
        
        pd.setString(1, uname);
        pd.setString(2, email);
        pd.setString(3, com);
        pd.executeUpdate();
        }
        catch(Exception e){
            
        }
        
    }
    
 }