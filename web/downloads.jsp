

<%-- 
    Document   : file-list
    Created on : 18 Oct, 2018, 8:11:09 PM
    Author     : Dharmesh Mourya
--%>

<%@page import="com.servlet.db.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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

/*login page on image */

.bg-img {
  /* The image used */
 /* background-image: url("img/scr.jpg");*/

  min-height: 480px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 0;
  margin: 20px;
  max-width: 300px;
  padding: 18px;
  background-color: #AFBEF8;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn31 {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn31:hover {
  opacity: 1;
}

.btn32 {
  background-color: #6D85D9;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 45%;
  opacity: 0.9;
}

.btn32:hover {
  opacity: 1;
}
</style>
<%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="font-family:Verdana;">

<div style="background-color:#AFBEF8;padding:15px;">
  <h1>VSIT</h1>
  <h3>ONLINE COLLEGE MAGAZINE</h3>
</div>
<%
                con = DB.getConnection();
            String sql = "select * from fileupload";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
<div style="overflow:auto">
   <div class="menu">
    <div class="menuitem"><a href="userview.jsp">Home</a></div>
    <div class="menuitem"><a href="index.jsp">logout</a></div>
  
  
 </div>
    <div style="main">
        
        <table>
            <tr>
     <td><h1 style="color:brown;">Download Magazine here</h1></td></tr><tr>
     <td><button class="btn8"><i class="fa fa-download"></i><a href="DownloadServlet?fileName=<%=rs.getString(2)%>">Download <%=rs.getTimestamp(4)%></a> </button></td><br><br>
            </tr>
  </table>
        </div>
</div>
            
<%
                }
            %>

<div style="background-color:#AFBEF8;text-align:center;padding:10px;margin-top:7px;font-size:12px;"> © 2021 Created by Vishal Rathod - 19302C0031</div>

</body>
</html>


