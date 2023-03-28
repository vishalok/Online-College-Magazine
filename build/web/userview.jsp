<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
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

/*blink*/ 

blink {
  -webkit-animation: 0.1s linear infinite condemned_blink_effect; /* for Safari 4.0 - 8.0 */
  animation: 0.1s linear infinite condemned_blink_effect;
}

/* for Safari 4.0 - 8.0 */
@-webkit-keyframes condemned_blink_effect {
  0% {
    visibility: hidden;
  }
  50% {
    visibility: hidden;
  }
  100% {
    visibility: visible;
  }
}

@keyframes condemned_blink_effect {
  0% {
    visibility: hidden;
  }
  50% {
    visibility: hidden;
  }
  100% {
    visibility: visible;
  }
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

   
         
        <%
Integer counter= (Integer)application.getAttribute("visit");
if( counter ==null || counter == 0 ){
counter = 1;
}
else{
counter = counter+ 1;
}
application.setAttribute("visit", counter);
%>
<%
            try {
                Class.forName("org.mariadb.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3307/magazine", "root", "");
                Statement st = con.createStatement();
                String sql = "SELECT * FROM upload";
                
                ResultSet rs = st.executeQuery(sql);
               ;
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String title = rs.getString("title");
                    String sd = rs.getString("sd");
                    String filename = rs.getString("filename");
                    String path = rs.getString("path");
                    String p = rs.getString("p");
        %>
<div style="background-color:#f1f1f1;padding:15px;">
  <h1>VSIT</h1>
  <h3>ONLINE COLLEGE MAGAZINE</h3>
   <% String email=request.getParameter("email");
        session.setAttribute("email",email);
out.print("<font color='blue'>Welcome </font><font color='green'>"+email+"</font>");

%>

</div>

<div style="overflow:auto">
  <div class="menu">
  
    <!--<div class="menuitem"><a href="userview.jsp">Home</a></div>
    div class="menuitem"><a href="changepassword.jsp">Change password</a></div-->
    <div class="menuitem"><a href="downloads.jsp">Download Magazines</a></div>
    <div class="menuitem"><a href="index.jsp">logout</a></div>
  </div>

  <div class="main">
    <%=title%>
      <%=sd%>
      
    <img src="img/<%=filename%>" style="width:100%">
  </div>

  <div class="right">
    <%=p%>
  </div>
</div>

 <%
                }
            } catch (Exception ex) {
                out.println(ex.getMessage());
            }
        %>
        
    
        <h3><font style="color:blueviolet"><blink><marquee width="100%" direction="left" height="100px"> Total number of view to this Page is: <%= counter%></marquee></blink></font></h3>
<div style="background-color:#f1f1f1;text-align:center;padding:10px;margin-top:7px;font-size:12px;"> © 2021 Created by Vishal Rathod - 19302C0031</div>






</html>


