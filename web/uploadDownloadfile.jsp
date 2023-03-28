<%-- 
    Document   : index
    Created on : 18 Oct, 2018, 8:09:16 PM
    Author     : Dharmesh Mourya
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ONline College Magazine</title>
        <link href="ccs/responsive.css" rel="stylesheet">
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
        <br><br><br><br><div class="main">
 <div style="overflow-x:auto;">
    <center>
        
        <form action="UploadServlet" method="post" enctype="multipart/form-data">
            <table width="400px" align="center" border=2>
                <tr>
                    <td align="center" colspan="2">Upload download file</td>
                </tr>
                
                <tr>
                    <td>Select File </td>
                    <td>
                        <input type="file" required="" name="file">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </table>

        </form>
        <br>
        <br></div>
            </center>
     <center><a href = "file-list.jsp">View List</a>
    </center>
 </div>

        <div class="right">
                    <marquee width="100%" direction="left" height="100px">
                        <p style="color:white;">Welcome to admin panel.</p>
</marquee>
                    </div>     </div> 
       
       
        
        <div style="background-color:#f1f1f1;text-align:center;padding:10px;margin-top:7px;font-size:12px;"> 
            © 2021 Created by Vishal Rathod - 19302C0031</div>

</body>
</html>