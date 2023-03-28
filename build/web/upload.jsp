<%-- 
    Document   : signup
    Created on : 10 Oct, 2021, 12:03:32 PM
    Author     : VISHAL
--%>




<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online College Magazine</title>
        <!--script tags used for textarea-->
       <!-- <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  <script>tinymce.init({selector:'textarea'});</script-->
       <script src="https://cdn.tiny.cloud/1/4ukv0lsxm1xyqqvswuu1bq4i5z7ibxu62ja10u6jc99qc3lo/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
       <script>
    tinymce.init({
      selector: 'textarea',
      plugins: 'a11ychecker advcode casechange export formatpainter linkchecker autolink lists checklist media mediaembed pageembed permanentpen powerpaste table advtable tinycomments tinymcespellchecker',
      toolbar: 'a11ycheck addcomment showcomments casechange checklist code export formatpainter pageembed permanentpen table',
      toolbar_mode: 'floating',
      tinycomments_mode: 'embedded',
      tinycomments_author: 'Author name',
   });
  </script>
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

  <div class="main">
    <div style="overflow-x:auto;">
   <!--write content here-->
     <center>
         <% %>
		<h1>Upload here</h1>
		<form action="FileUploadServlet" method="post" enctype = "multipart/form-data">

                <table border="2" bgcolor="grey" style="color:blue">

                    <tr>

                        <td>

                            <b>Id:</b>

                        </td>

                        <td>

                            <input type="text" name="id" placeholder="Enter id here..">

                        </td>

                    </tr>
                    <tr>

                        <td>

                            <b>Title:</b>

                        </td>

                        <td>

                            <input type="text" name="title" placeholder="Enter Title here..">

                        </td>

                    </tr>

                    <tr>

                        <td>

                            <b>Short description :</b>

                        </td>

                        <td>
                            <textarea name="sd" rows="5" cols="30"></textarea>
                            <!--<input type="text" name="sd" placeholder="Enter short description here.."-->

                        </td>

                    </tr>
<tr>

                        <td>

                            <b>upload image:</b>

                        </td>

                        <td>
                            <input type="file"  name="file" >

                        </td>

                    </tr>
                    <tr>

                        <td>

                            <b>paragraph :</b>

                        </td>

                        <td>
                            <textarea name="p" rows="10" cols="30"></textarea>
                           <!-- <input type="textarea" name="p" placeholder="Enter paragraph here..."-->

                        </td>

   
                    <tr>

                        <td>

                            <input type="submit" value="Submit" >

                        </td>

                        <td>

                            <input type="reset" value="Reset">

                        </td>
                    </tr>

                </table>

        </form>
       </center>
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


