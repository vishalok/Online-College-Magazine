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
        
        <link rel="stylesheet" href="css/responsive.css">
    
    <div style="background-color:#f1f1f1;padding:15px;">
            
  <h1>VSIT</h1>
  <h3>ONLINE COLLEGE MAGAZINE</h3>
</div>

<div style="overflow:auto">
  <div class="menu">
     <div class="menuitem"><a href="upload.jsp">upload magazine</a></div>
      <div class="menuitem"><a href="welcome.jsp">user details</a></div>
      <div class="menuitem"><a href="viewAll.jsp">view magazines</a></div>
      
      <div class="menuitem"><a href="index.jsp">logout</a></div>
  </div>
        
        <style>
            tr,td,th{
                padding: 20px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <br><br><br>
        <div class="main">
    <center>
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        %>
        <div style="overflow-x:auto">
        <table border="2">
            <tr>
                <th>ID</th><th>File Name</th><th>File Path</th><th>Added Date</th><th>Download</th><th>delete</th>
            </tr>
            <%
                con = DB.getConnection();
            String sql = "select * from fileupload";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
            <tr>
                <td><%=rs.getInt(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                
                <td><%=rs.getTimestamp(4)%></td>
                <td><a href="DownloadServlet?fileName=<%=rs.getString(2)%>">Download</a></td>
                
<td><a href="delete2.jsp?id=<%=rs.getString("id") %>"><button type="button" class="delete">Delete</button></a></td>
            </tr>
            <%
                }
            %>
            
        </table></div><br>
        <a href="welcome.jsp">Home</a>
        
        
    </center>
        </div></div>

<div style="background-color:#f1f1f1;text-align:center;padding:10px;margin-top:7px;font-size:12px;"> 
            © 2021 Created by Vishal Rathod - 19302C0031</div>
</body>
</html>