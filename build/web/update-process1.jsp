<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String drivertitle = "org.mariadb.jdbc.Driver";%>
<%!String url = "jdbc:mariadb://localhost:3307/magazine";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
    String id = request.getParameter("id");
String title = request.getParameter("title");

    String sd = request.getParameter("sd");

 String filename = request.getParameter("file");
 
 String p = request.getParameter("p");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(drivertitle);
con = DriverManager.getConnection(url,user,psw);
String sql="Update upload set id=?,title=?,sd=?,filename=?,p=? where id="+id;
ps = con.prepareStatement(sql);
 ps.setString(1, id);
        
         ps.setString(2, title);
         
          ps.setString(3, sd);
          
          ps.setString(4, filename);
          
           ps.setString(5, p);
           
           
int i = ps.executeUpdate();
if(i > 0)
{
     out.println("<!doctype html>");
             out.println("<html>");
             out.println("<head>"
                      + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">"
                      + ""
                      + ""
                      + "<title>Online college magazine</title>"
                      + "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n" +
"        <title>Online College Magazine</title>\n" +
"<style>\n" +
"* {\n" +
"  box-sizing: border-box;\n" +
"}\n" +
".menu {\n" +
"  float: left;\n" +
"  width: 20%;\n" +
"}\n" +
".menuitem {\n" +
"  padding: 8px;\n" +
"  margin-top: 7px;\n" +
"  border-bottom: 1px solid #f1f1f1;\n" +
"}\n" +
".main {\n" +
"  float: left;\n" +
"  width: 60%;\n" +
"  padding: 30px 20px;\n" +
"  overflow: hidden;\n" +
"  background-color: cyan;\n" +
"}\n" +
".right {\n" +
"  background-color: lightblue;\n" +
"  float: left;\n" +
"  width: 20%;\n" +
"  padding: 10px 15px;\n" +
"  margin-top: 7px;\n" +
"}\n" +
"\n" +
"@media only screen and (max-width:800px) {\n" +
"  /* For tablets: */\n" +
"  .main {\n" +
"    width: 80%;\n" +
"    padding: 0;\n" +
"  }\n" +
"  .right {\n" +
"    width: 100%;\n" +
"  }\n" +
"}\n" +
"@media only screen and (max-width:500px) {\n" +
"  /* For mobile phones: */\n" +
"  .menu, .main, .right {\n" +
"    width: 100%;\n" +
"  }\n" +
"}\n" +
"\n" +
"/*download buuton*/\n" +
".btn8 {\n" +
"  background-color: DodgerBlue;\n" +
"  border: none;\n" +
"  color: white;\n" +
"  padding: 12px 30px;\n" +
"  cursor: pointer;\n" +
"  font-size: 20px;\n" +
"}\n" +
"\n" +
"/* Darker background on mouse-over */\n" +
".btn8:hover {\n" +
"  background-color: RoyalBlue;\n" +
"  \n" +
" .btn32 {\n" +
"  background-color: #6D85D9;\n" +
"  color: white;\n" +
"  padding: 16px 20px;\n" +
"  border: none;\n" +
"  cursor: pointer;\n" +
"  width: 45%;\n" +
"  opacity: 0.9;\n" +
"}\n" +
"\n" +
".btn32:hover {\n" +
"  opacity: 1;\n" +
"}\n" +
"</style>\n" +
"<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n" +
"<div style=\"background-color:#f1f1f1;padding:15px;\">\n" +
"  <h1>VSIT</h1>\n" +
"  <h3>ONLINE COLLEGE MAGAZINE</h3>\n" +
"</div>\n" +
"\n" +
"<div style=\"overflow:auto\">\n" +
"  <div class=\"menu\">\n" +
"     <div class=\"menuitem\"><a href=\"upload.jsp\">upload magazine</a></div>\n" +
"      <div class=\"menuitem\"><a href=\"welcome.jsp\">user details</a></div>\n" +
"      <div class=\"menuitem\"><a href=\"viewAll.jsp\">view magazines</a></div>\n" +
"      \n" +
"      <div class=\"menuitem\"><a href=\"index.jsp\">logout</a></div>\n" +
"  </div>"
                      + "</head>");
out.print("Record Updated Successfully");
out.println("<a href=welcome.jsp>View records</a>");
 out.println("</div>"
                    + "</div>");
                    
            out.println("<div class=\"right\">\n" +
"                    <marquee width=\"100%\" direction=\"left\" height=\"100px\">\n" +
"                        <p style=\"color:white;\">Welcome to admin panel.</p>\n" +
"</marquee>\n" +
"                    </div>\n" +
"        \n" +
"        </div>\n" +
"        <div style=\"background-color:#f1f1f1;text-align:center;padding:10px;margin-top:7px;font-size:12px;\"> © 2021 Created by Vishal Rathod - 19302C0031</div>\n" +
"");
             out.println("</html>");
}
else
{
     out.println("<!doctype html>");
             out.println("<html>");
             out.println("<head>"
                      + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">"
                      + ""
                      + ""
                      + "<title>Online college magazine</title>"
                      + "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n" +
"        <title>Online College Magazine</title>\n" +
"<style>\n" +
"* {\n" +
"  box-sizing: border-box;\n" +
"}\n" +
".menu {\n" +
"  float: left;\n" +
"  width: 20%;\n" +
"}\n" +
".menuitem {\n" +
"  padding: 8px;\n" +
"  margin-top: 7px;\n" +
"  border-bottom: 1px solid #f1f1f1;\n" +
"}\n" +
".main {\n" +
"  float: left;\n" +
"  width: 60%;\n" +
"  padding: 30px 20px;\n" +
"  overflow: hidden;\n" +
"  background-color: cyan;\n" +
"}\n" +
".right {\n" +
"  background-color: lightblue;\n" +
"  float: left;\n" +
"  width: 20%;\n" +
"  padding: 10px 15px;\n" +
"  margin-top: 7px;\n" +
"}\n" +
"\n" +
"@media only screen and (max-width:800px) {\n" +
"  /* For tablets: */\n" +
"  .main {\n" +
"    width: 80%;\n" +
"    padding: 0;\n" +
"  }\n" +
"  .right {\n" +
"    width: 100%;\n" +
"  }\n" +
"}\n" +
"@media only screen and (max-width:500px) {\n" +
"  /* For mobile phones: */\n" +
"  .menu, .main, .right {\n" +
"    width: 100%;\n" +
"  }\n" +
"}\n" +
"\n" +
"/*download buuton*/\n" +
".btn8 {\n" +
"  background-color: DodgerBlue;\n" +
"  border: none;\n" +
"  color: white;\n" +
"  padding: 12px 30px;\n" +
"  cursor: pointer;\n" +
"  font-size: 20px;\n" +
"}\n" +
"\n" +
"/* Darker background on mouse-over */\n" +
".btn8:hover {\n" +
"  background-color: RoyalBlue;\n" +
"  \n" +
" .btn32 {\n" +
"  background-color: #6D85D9;\n" +
"  color: white;\n" +
"  padding: 16px 20px;\n" +
"  border: none;\n" +
"  cursor: pointer;\n" +
"  width: 45%;\n" +
"  opacity: 0.9;\n" +
"}\n" +
"\n" +
".btn32:hover {\n" +
"  opacity: 1;\n" +
"}\n" +
"</style>\n" +
"<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n" +
"<div style=\"background-color:#f1f1f1;padding:15px;\">\n" +
"  <h1>VSIT</h1>\n" +
"  <h3>ONLINE COLLEGE MAGAZINE</h3>\n" +
"</div>\n" +
"\n" +
"<div style=\"overflow:auto\">\n" +
"  <div class=\"menu\">\n" +
"     <div class=\"menuitem\"><a href=\"upload.jsp\">upload magazine</a></div>\n" +
"      <div class=\"menuitem\"><a href=\"welcome.jsp\">user details</a></div>\n" +
"      <div class=\"menuitem\"><a href=\"viewAll.jsp\">view magazines</a></div>\n" +
"      \n" +
"      <div class=\"menuitem\"><a href=\"index.jsp\">logout</a></div>\n" +
"  </div>"
                      + "</head>");
out.print("There is a problem in updating Record.");
out.println("<a href=welcome.jsp>View records</a>");
 out.println("</div>"
                    + "</div>");
                    
            out.println("<div class=\"right\">\n" +
"                    <marquee width=\"100%\" direction=\"left\" height=\"100px\">\n" +
"                        <p style=\"color:white;\">Welcome to admin panel.</p>\n" +
"</marquee>\n" +
"                    </div>\n" +
"        \n" +
"        </div>\n" +
"        <div style=\"background-color:#f1f1f1;text-align:center;padding:10px;margin-top:7px;font-size:12px;\"> © 2021 Created by Vishal Rathod - 19302C0031</div>\n" +
"");
             out.println("</html>");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql.getMessage());
}
}
%>
