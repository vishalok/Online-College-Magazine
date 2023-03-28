package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class changepassword_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>change password</title>\n");
      out.write("        <link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style=\"overflow:auto\">\n");
      out.write("  <div class=\"menu\">\n");
      out.write("    <div class=\"menuitem\"><a href=\"userview.jsp\">Home</a></div>\n");
      out.write("    \n");
      out.write("    <div class=\"menuitem\"><a href=\"downloads.jsp\">Download Magazines</a></div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <div class=\"menuitem\"><a href=\"changepassword.jsp\">Change password</a></div>\n");
      out.write("    <div class=\"menuitem\"><a href=\"index.jsp\">logout</a></div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("        <div class=\"main\">\n");
      out.write("        <form action=\"changedpassword.jsp\" method=\"post\" >\n");
      out.write("            <div style=\"overflow-x:auto;\">\n");
      out.write("                <table style=\"width:100%\" border=\"1\">\n");
      out.write("    <h1>Change Password</h1>\n");
      out.write("<tr>\n");
      out.write("  <td>  <b>Current password</b></td>\n");
      out.write("   <td> <input type=\"password\" placeholder=\"Enter Current Password\" name=\"OldPassword\" required></td>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("    <td><b>New Password</b></td>\n");
      out.write("   <td> <input type=\"password\" placeholder=\"Enter New Password\" name=\"newpassaword\" required></td>\n");
      out.write(" </tr>\n");
      out.write("<tr>\n");
      out.write("    <td><b>Confirm Password</b></td>\n");
      out.write("   <td> <input type=\"password\" placeholder=\"Enter New Password\" name=\"conpassword\" required></td>\n");
      out.write(" </tr>\n");
      out.write("\n");
      out.write(" <tr>\n");
      out.write("     <td> <input type=\"submit\" value=\"Change password\"></td>\n");
      out.write("     <td><button type=\"reset\" >Cancel</button></td>\n");
      out.write("    </tr>\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("  </form>\n");
      out.write("        </div>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("        \n");
      out.write("        <div style=\"background-color:#f1f1f1;text-align:center;padding:10px;margin-top:7px;font-size:12px;\"> � 2021 Created by Vishal Rathod - 19302C0031</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
