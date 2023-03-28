<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "org.mariadb.jdbc.Driver";
String connectionUrl = "jdbc:mariadb://localhost:3307/";
String database = "magazine";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from signup where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="update-process.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">

<br>
 Roll no:<br>
<input type="text" name="roll" value="<%=resultSet.getString("roll") %>">
<br>
 Name:<br>
<input type="text" name="name" value="<%=resultSet.getString("name") %>">
<br>
age :<br>
<input type="text" name="age" value="<%=resultSet.getString("age") %>">
<br>
gender:<br>
<input type="text" name="gender" value="<%=resultSet.getString("gender") %>">
<br>
branch:<br>
<input type="text" name="branch" value="<%=resultSet.getString("branch") %>">
<br>


Email Id:<br>
<input type="email" name="email" value="<%=resultSet.getString("email") %>">
<br>
password :<br>
<input type="password" name="password" value="<%=resultSet.getString("password") %>">
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>