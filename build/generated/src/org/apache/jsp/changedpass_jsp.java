package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class changedpass_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 String driverName = "org.mariadb.jdbc.Driver";
String url = "jdbc:mariadb://localhost:3307/magazine";
String user = "root";
String psw = "";
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');

   
String email = request.getParameter("email");
 
String password = request.getParameter("password");
if(email != null)
{
Connection con = null;
PreparedStatement ps = null;
//int personID = Integer.parseInt(id);

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update signup set email=?,password=? where email="+email;
ps = con.prepareStatement(sql);
 ps.setString(1, email);    
 ps.setString(2, password);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
out.println("<a href=changepass.html>View records</a>");
}
else
{
out.print("There is a problem in updating Record.");
out.println("<a href=changepass.html>View records</a>");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql.getMessage());
}
}

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
