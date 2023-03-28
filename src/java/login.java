import java.sql.*;  
  
public class login {  
public static boolean validate(String email,String password){  
boolean status=false;  
try{  
/*Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","oracle");  
   */   
Class.forName("org.mariadb.jdbc.Driver");  

        Connection con= DriverManager.getConnection("jdbc:mariadb://localhost:3307/magazine","root", "");
PreparedStatement ps=con.prepareStatement(  
"select * from signup where email=? and password=?");  
ps.setString(1,email);  
ps.setString(2,password);  
      
ResultSet rs=ps.executeQuery();  
status=rs.next();  
          
}catch(Exception e){System.out.println(e);}  
return status;  
}  
}  