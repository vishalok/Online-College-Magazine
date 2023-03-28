<%-- 
    Document   : userprofile
    Created on : 10 Oct, 2021, 12:19:43 PM
    Author     : VISHAL
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online College Magazine</title>
<style>
* {
  box-sizing: border-box;
}
.menu {
  float: left;
  width: 20%;
}
.menuitem {
  padding: 8px;
  margin-top: 7px;
  border-bottom: 1px solid #f1f1f1;
}
.main {
  float: left;
  width: 60%;
  padding: 0 20px;
  overflow: hidden;
}
.right {
  background-color: lightblue;
  float: left;
  width: 20%;
  padding: 10px 15px;
  margin-top: 7px;
}

@media only screen and (max-width:800px) {
  /* For tablets: */
  .main {
    width: 80%;
    padding: 0;
  }
  .right {
    width: 100%;
  }
}
@media only screen and (max-width:500px) {
  /* For mobile phones: */
  .menu, .main, .right {
    width: 100%;
  }
}

/*download buuton*/
.btn8 {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 30px;
  cursor: pointer;
  font-size: 20px;
}

/* Darker background on mouse-over */
.btn8:hover {
  background-color: RoyalBlue;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="font-family:Verdana;">

<div style="background-color:#f1f1f1;padding:15px;">
  <h1>VSIT</h1>
  <h3>ONLINE COLLEGE MAGAZINE</h3>
</div>

<div style="overflow:auto">
  <div class="menu">
    <div class="menuitem"><a href="userview.jsp">Home</a></div>
    
    <div class="menuitem"><a href="downloads.jsp">Download Magazines</a></div>
    
    
    <div class="menuitem"><a href="changepassword.jsp">Change password</a></div>
    <div class="menuitem"><a href="index.jsp">logout</a></div>
  </div>

  <div class="main">
    
   <!--write content here-->
   <%
       String name =request.getParameter("name");
       String email =request.getParameter("email");
       String password =request.getParameter("password");
String id1 = request.getParameter("userid");
String driver = "org.mariadb.jdbc.Driver";
String connectionUrl = "jdbc:mariadb://localhost:3307/";
String database = "magazine";
String userid = "root";
String password1 = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
//Connection connection = null;
//Statement statement = null;
//ResultSet resultSet = null;
%>
<%
try{
Connection con = DriverManager.getConnection(connectionUrl+database, userid, password1);
//statement=connection.createStatement();
PreparedStatement ps=con.prepareStatement("select * from signup where name="+name);
//String sql ="select * from signup ";
ResultSet rs  = ps.executeQuery();
//resultSet = statement.executeQuery(sql);
while(rs.next()){
    if(rs.getString(1).equals(email)&&rs.getString(2).equals(password))
    {
        out.println("Welcome"+name);
        out.println("<br>"+email);
    }
    
%>
  
   
   
  </div>

  <div class="right">
       <!--write content here-->
       welcome <%=request.getParameter("name")%>
       
      
  </div>
</div>


<div style="background-color:#f1f1f1;text-align:center;padding:10px;margin-top:7px;font-size:12px;"> © 2021 Created by Vishal Rathod - 19302C0031</div>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
<%@ page language="java" import="java.sql.*"%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

