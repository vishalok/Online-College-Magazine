<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forgot Password </title>
</head>
<body bgcolor="yellow">
    <center>
<h1>Forgot Password</h1>
<form action="forgot-process.jsp" method="post"><br><br>
     Email ID:<input type="text" name="email" placeholder="Enter Registered Email " /><br><br>
    
      Question:<select name="ques">
        <option selected disabled>Security Question</option>
        <option>What is your favourite colour?</option>
        <option>What is your car colour?</option>
        <option>what is your best friend name</option>
        
    </select><br><br>
     Answer:<input type="text" name="ans" placeholder=" Enter your answer " /><br><br>
New Password:<input type="text" name="newpass"  placeholder=" new password to set " /><br><br>

<input type="submit" value="Save" />  &nbsp;<input type="reset" value="Reset"> &nbsp;<a href="index.jsp"/> Back </a>
</form>

<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h1>password Changed Successfully!!</h1>
<%}%>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing went wrong! Try Again!!</h1>
<%}%>

</center>
</body>
</html>