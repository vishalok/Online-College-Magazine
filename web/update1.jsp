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
String sql ="select * from upload where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
    <head><meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    
    
    </head>
<body>
<h1>Update data from database</h1>
<form method="post" action="update-process1.jsp">
    ID:<br>
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<input type="text" name="id" value="<%=resultSet.getString("id") %>">
<br>
 Title:<br>
<input type="text" name="title" value="<%=resultSet.getString("title") %>">
<br>
Short description :<br>
<textarea name="sd" rows="5" cols="30" ><%=resultSet.getString("sd") %></textarea>
<br>
image:<br>
<input type="text" name="file" value="<%=resultSet.getString("filename") %>">
<br>

paragraph:<br>
<textarea name="p" rows="10" cols="30" ><%=resultSet.getString("p") %>
</textarea>
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