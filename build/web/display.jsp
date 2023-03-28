<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Show</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
  padding: 30px 20px;
  overflow: hidden;
  background-color: cyan;
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="font-family:Verdana;">

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
    </head>
    <body>
          <div class="main">
        <%
            int imageid = Integer.parseInt(request.getParameter("id"));
            try {
                Class.forName("org.mariadb.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3307/magazine", "root", "");
                Statement st = con.createStatement();
                String sql = "SELECT filename FROM upload where id=" + imageid + "";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    String filename = rs.getString("filename");
        %>
         <div style="overflow-x:auto;">
        <center><table  border="1">
            <tr>
                <th>Id</th>
                <th>Image</th>

            </tr>
            <tr>
                <td><%=imageid%></td>
                <td><image src="img/<%=filename%>" width="200" height="200"/></td>

            </tr>
        </table></center>
                </div>
        <%
                }
            } catch (Exception e) {
                out.println(e.getMessage());
            }
        %><br>
    <center><a href="viewAll.jsp">View All </a></center>
    
     <div class="right">
                    <marquee width="100%" direction="left" height="100px">
                        <p style="color:white;">Welcome to admin panel.</p>
</marquee>
                    </div>
        
        </div>
    </div>
        <div style="background-color:#f1f1f1;text-align:center;padding:10px;margin-top:7px;font-size:12px;"> © 2021 Created by Vishal Rathod - 19302C0031</div>

    
</body>
</html>