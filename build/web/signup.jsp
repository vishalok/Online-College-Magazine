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
     <form action="index.jsp">
       <div class="menuitem"><button type="submit" class="btn8">login</button></div>
       </form>
  </div>

  <div class="main">
    <div style="overflow-x:auto;">
   <!--write content here-->
     <center>
         <% %>
		<h1>Register here</h1>
		<form action="newjsp.jsp" method="post">

                <table border="2" bgcolor="grey" style="color:blue">

                    <tr>

                        <td>

                            <b>Name:</b>

                        </td>

                        <td>

                            <input type="text" name="name" placeholder="Enter your name">

                        </td>

                    </tr>

                    <tr>

                        <td>

                            <b>Roll no</b>

                        </td>

                        <td>

                            <input type="text" name="roll" placeholder="eg :- 19302C0031">

                        </td>

                    </tr>

                    <tr>

                        <td>

                            <b>Age</b>

                        </td>

                        <td>

                            <input type="text" name="age" placeholder="Enter your age">

                        </td>

                    

                    <tr>
<tr>

                        <td>

                            <b>Email</b>

                        </td>

                        <td>

                            <input type="email" name="email" placeholder="eg :- abc@gmail.com">

                        </td>

                    

                    <tr>
                        <tr>

                        <td>

                            <b>Password</b>

                        </td>

                        <td>

                            <input type="password" name="password" placeholder="********">

                        </td>

                    

                    <tr>
                        <td>

                            <b>Gender:</b>                       

                        </td>
<td></td>
                        </tr>

                    <tr>  

                        <td>

                            <input type="radio" name="gender" value="Male">Male

                        </td>

                        <td>

                            <input type="radio" name="gender" value="Female">Female

                        </td>

                        <td>

                            <input type="radio" name="gender" value="Other">Other

                        </td>
                        
                    </tr>

                    
                    <tr>

                        <td>

                            <b>Branch</b>

                        </td>

                        <td>

                            <select name="branch">
        <option selected disabled>Select branch</option>
        <option>B.Sc.IT</option>
        <option>BBI</option>
        <option>BMS</option>
        <option>BAF</option>
        <option>BFM</option>
        <option>B.Sc. Data Science</option>
        <option>BAMMC(BMM)</option>
        <option>M.Sc.IT</option>
        <option>M.Com(B&F)</option>
        <option>M.Com(AA)</option>
        <option>M.Com(Business Management)</option>
        <option>M.A.(Entertainment,Media and Advertising)</option>
        <option>Ph.D</option>
    </select>
                        </td>

                    </tr>   
<!---->
      <tr>


                        <td>

                            <select name="ques">
        <option selected disabled>Security Question</option>
        <option>What is your favourite colour?</option>
        <option>What is your car colour?</option>
        <option>what is your best friend name</option>
        
    </select>
                        </td>

                        <td>

                          <input type="text" name="ans" placeholder="Enter your answer" > 

                        </td>
                    </tr>              
                    <!---->
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

 
</div>


<div style="background-color:#f1f1f1;text-align:center;padding:10px;margin-top:7px;font-size:12px;"> © 2021 Created by Vishal Rathod - 19302C0031</div>

</body>
</html>


