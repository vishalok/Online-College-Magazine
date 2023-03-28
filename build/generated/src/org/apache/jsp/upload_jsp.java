package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class upload_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  padding: 30px 20px;\n");
      out.write("  overflow: hidden;\n");
      out.write("  background-color: cyan;\n");
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
      out.write("  \n");
      out.write(" .btn32 {\n");
      out.write("  background-color: #6D85D9;\n");
      out.write("  color: white;\n");
      out.write("  padding: 16px 20px;\n");
      out.write("  border: none;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 45%;\n");
      out.write("  opacity: 0.9;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn32:hover {\n");
      out.write("  opacity: 1;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("</head>\n");
      out.write("<body style=\"font-family:Verdana;\">\n");
      out.write("\n");
      out.write("<div style=\"background-color:#f1f1f1;padding:15px;\">\n");
      out.write("  <h1>VSIT</h1>\n");
      out.write("  <h3>ONLINE COLLEGE MAGAZINE</h3>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div style=\"overflow:auto\">\n");
      out.write("  <div class=\"menu\">\n");
      out.write("     <div class=\"menuitem\"><a href=\"upload.jsp\">upload magazine</a></div>\n");
      out.write("      <div class=\"menuitem\"><a href=\"welcome.jsp\">user details</a></div>\n");
      out.write("      <div class=\"menuitem\"><a href=\"index.jsp\">logout</a></div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("  <div class=\"main\">\n");
      out.write("    <div style=\"overflow-x:auto;\">\n");
      out.write("   <!--write content here-->\n");
      out.write("     <center>\n");
      out.write("         ");
 
      out.write("\n");
      out.write("\t\t<h1>Upload here</h1>\n");
      out.write("\t\t<form action=\"FileUploadServlet\" method=\"post\" enctype = \"multipart/form-data\">\n");
      out.write("\n");
      out.write("                <table border=\"2\" bgcolor=\"grey\" style=\"color:blue\">\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("\n");
      out.write("                            <b>Id:</b>\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("\n");
      out.write("                            <input type=\"text\" name=\"id\" placeholder=\"Enter id here..\">\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("\n");
      out.write("                            <b>Title:</b>\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("\n");
      out.write("                            <input type=\"text\" name=\"title\" placeholder=\"Enter Title here..\">\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("\n");
      out.write("                            <b>Short description :</b>\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("                            <textarea name=\"sd\" rows=\"5\" cols=\"30\"></textarea>\n");
      out.write("                            <!--<input type=\"text\" name=\"sd\" placeholder=\"Enter short description here..\"-->\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("<tr>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("\n");
      out.write("                            <b>upload image:</b>\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("                            <input type=\"file\"  name=\"file\" >\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("\n");
      out.write("                            <b>paragraph :</b>\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("                            <textarea name=\"p\" rows=\"10\" cols=\"30\"></textarea>\n");
      out.write("                           <!-- <input type=\"textarea\" name=\"p\" placeholder=\"Enter paragraph here...\"-->\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("   \n");
      out.write("                    <tr>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("\n");
      out.write("                            <input type=\"submit\" value=\"Submit\" >\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("\n");
      out.write("                        <td>\n");
      out.write("\n");
      out.write("                            <input type=\"reset\" value=\"Reset\">\n");
      out.write("\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                </table>\n");
      out.write("\n");
      out.write("        </form>\n");
      out.write("       </center>\n");
      out.write("   </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write(" \n");
      out.write("</div>\n");
      out.write("\n");
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
