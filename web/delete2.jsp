<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("org.mariadb.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/magazine", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM fileupload WHERE id="+id);
out.println("Data Deleted Successfully!");
out.println("<a href=welcome.jsp>View records</a>");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>