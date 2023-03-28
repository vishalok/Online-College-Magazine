
<%@ page language="java" import="java.sql.*"%>

<%
   // int id = Integer.parseInt("");
 String roll = request.getParameter("roll");
    String name = request.getParameter("name");

   
     
    String age = request.getParameter("age");
String email = request.getParameter("email");
 String gender = request.getParameter("gender");
 
 String branch = request.getParameter("branch");
String password = request.getParameter("password");
    String ques = request.getParameter("ques");
String ans = request.getParameter("ans");
    

    try {

        //Class.forName("oracle.jdbc.driver.OracleDriver");

       // Connection con = DriverManager.getConnection("jdbc:oracle:thin:@mcndesktop07:1521:XE", "sandeep", "welcome");
        Statement st =null;
        Class.forName("org.mariadb.jdbc.Driver");  

        Connection con= DriverManager.getConnection("jdbc:mariadb://localhost:3307/magazine","root", "");
        st=con.createStatement();
        
        String qry="insert into signup values(null,'"+roll+"','"+name+"','"+age+"','"+gender+"','"+branch+"','"+email+"','"+password+"','"+ques+"','"+ans+"')";
       
        st.executeUpdate(qry);
        
         out.println("Data saved successfully...");
        response.sendRedirect("index.jsp");
    
//PreparedStatement ps = con.prepareStatement("insert into signup values(?,?,?,?,?,?,?)");
       //ps.setInt(1, id);
  /*ps.setString(1, roll);
        ps.setString(2, name);
        
        
         
          ps.setString(3, age);
          
          ps.setString(4, gender);
          
           ps.setString(5, branch);
           
           ps.setString(6, email);
           
        ps.setString(7, password);

        ps.executeUpdate();

        out.println("alert('Data saved successfully')");
        response.sendRedirect("index.jsp");*/

    } catch (Exception e) {

        out.println(e);

    } 

%>