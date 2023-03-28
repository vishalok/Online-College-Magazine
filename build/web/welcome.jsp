<%-- 
    Document   : welcome
    Created on : 10 Oct, 2021, 7:54:30 PM
    Author     : VISHAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
</style>
</head>
<body style="font-family:Verdana;">

<div style="background-color:#f1f1f1;padding:15px;">
  <h1>VSIT</h1>
  <h3>Online College Magazine</h3>
</div>

<div style="overflow:auto">
  <div class="menu">
      <div class="menuitem"><a href="upload.jsp">upload magazine</a></div>
      <div class="menuitem"><a href="welcome.jsp">user details</a></div>
      <div class="menuitem"><a href="viewAll.jsp">view magazines</a></div>
      <div class="menuitem"><a href="uploadDownloadfile.jsp">upload download magazine</a></div>
      <div class="menuitem"><a href="index.jsp">logout</a></div>
  </div>

  <div class="main">
    <!--fetching  database-->
    <%
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
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<div style="overflow-x:auto;">
    <h1>User Details</h1>
<table border="1">
<tr>
<td>Id</td>
<td>Roll no</td>
<td>Name</td>
<td>age</td>
<td>Email</td>
<td>password</td>
<td>gender</td>
<td>branch</td>
<td>Security Question</td>
<td>Answer</td>
<td>update</td>
<td>delete</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password1);
statement=connection.createStatement();
String sql ="select * from signup";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("roll") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("age") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("password") %></td>
<td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("branch") %></td>
<td><%=resultSet.getString("ques") %></td>
<td><%=resultSet.getString("ans") %></td>
<td><a href="update.jsp?id=<%=resultSet.getString("id")%>">update</a></td>
<td><a href="delete.jsp?id=<%=resultSet.getString("id") %>"><button type="button" class="delete">Delete</button></a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
  </div>

  <div class="right">
                    <marquee width="100%" direction="left" height="100px">
                        <p style="color:white;">Welcome to admin panel.</p>
</marquee>
                    </div>
</div>


<div style="background-color:#f1f1f1;text-align:center;padding:10px;margin-top:7px;font-size:12px;"> © 2021 Created by Vishal Rathod - 19302C0031</div>

</body>
</html>

<%@ page language="java" import="java.sql.*"%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

