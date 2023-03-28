package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class userview_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Online College Magazine</title>\n");
      out.write("<style>\n");
      out.write("* {\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write(".menu {\n");
      out.write("  float: left;\n");
      out.write("  width: 20%;\n");
      out.write("}\n");
      out.write(".menuitem {\n");
      out.write("  padding: 8px;\n");
      out.write("  margin-top: 7px;\n");
      out.write("  border-bottom: 1px solid #f1f1f1;\n");
      out.write("}\n");
      out.write(".main {\n");
      out.write("  float: left;\n");
      out.write("  width: 60%;\n");
      out.write("  padding: 0 20px;\n");
      out.write("  overflow: hidden;\n");
      out.write("}\n");
      out.write(".right {\n");
      out.write("  background-color: lightblue;\n");
      out.write("  float: left;\n");
      out.write("  width: 20%;\n");
      out.write("  padding: 10px 15px;\n");
      out.write("  margin-top: 7px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media only screen and (max-width:800px) {\n");
      out.write("  /* For tablets: */\n");
      out.write("  .main {\n");
      out.write("    width: 80%;\n");
      out.write("    padding: 0;\n");
      out.write("  }\n");
      out.write("  .right {\n");
      out.write("    width: 100%;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("@media only screen and (max-width:500px) {\n");
      out.write("  /* For mobile phones: */\n");
      out.write("  .menu, .main, .right {\n");
      out.write("    width: 100%;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("/*download buuton*/\n");
      out.write(".btn8 {\n");
      out.write("  background-color: DodgerBlue;\n");
      out.write("  border: none;\n");
      out.write("  color: white;\n");
      out.write("  padding: 12px 30px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  font-size: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("/* Darker background on mouse-over */\n");
      out.write(".btn8:hover {\n");
      out.write("  background-color: RoyalBlue;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("</head>\n");
      out.write("<body style=\"font-family:Verdana;\">\n");

            try {
                Class.forName("org.mariadb.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3307/magazine", "root", "");
                Statement st = con.createStatement();
                String sql = "SELECT * FROM upload";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    int id = rs.getInt("id");
                    String title = rs.getString("title");
                    String sd = rs.getString("sd");
                    String filename = rs.getString("filename");
                    String path = rs.getString("path");
                    String p = rs.getString("p");
        
      out.write("\n");
      out.write("<div style=\"background-color:#f1f1f1;padding:15px;\">\n");
      out.write("  <h1>VSIT</h1>\n");
      out.write("  <h3>ONLINE COLLEGE MAGAZINE</h3>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div style=\"overflow:auto\">\n");
      out.write("  <div class=\"menu\">\n");
      out.write("   \n");
      out.write("    <div class=\"menuitem\"><a href=\"userview.jsp\">Home</a></div>\n");
      out.write("    <div class=\"menuitem\"><a href=\"userprofile.jsp\">my profile</a></div>\n");
      out.write("    <div class=\"menuitem\"><a href=\"downloads.jsp\">Download Magazines</a></div>\n");
      out.write("    <div class=\"menuitem\"><a href=\"index.jsp\">logout</a></div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"main\">\n");
      out.write("    ");
      out.print(title);
      out.write("\n");
      out.write("      ");
      out.print(sd);
      out.write("\n");
      out.write("      \n");
      out.write("    <img src=\"img/");
      out.print(filename);
      out.write("\" style=\"width:100%\">\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"right\">\n");
      out.write("    ");
      out.print(p);
      out.write("\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write(" ");

                }
            } catch (Exception e) {
                out.println(e.getMessage());
            }
        
      out.write("\n");
      out.write("<div style=\"background-color:#f1f1f1;text-align:center;padding:10px;margin-top:7px;font-size:12px;\"> © 2021 Created by Vishal Rathod - 19302C0031</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
