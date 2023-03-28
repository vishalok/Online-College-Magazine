import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/FileUploadServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50)

public class FileUploadServlet extends HttpServlet {
    /*
     create images folder at, C:\Users\Dharmesh Mourya\Documents\NetBeansProjects\ImageProject\build\web\images
     */

    public static final String UPLOAD_DIR = "img";
    public String dbFileName = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String sd = request.getParameter("sd");
		String p = request.getParameter("p");
        Part part = request.getPart("file");//
        String fileName = extractFileName(part);//file name

        /**
         * *** Get The Absolute Path Of The Web Application ****
         */
        //String applicationPath = getServletContext().getRealPath("");
        //String uploadPath = applicationPath + File.separator + UPLOAD_DIR;
        //System.out.println("applicationPath:" + applicationPath);
        //File fileUploadDirectory = new File(uploadPath);
        //if (!fileUploadDirectory.exists()) {
       //     fileUploadDirectory.mkdirs();
        //}
        String savePath = "C:\\Users\\VISHAL\\Documents\\NetBeansProjects\\miniproject\\web\\img" + File.separator + fileName;
        //System.out.println("savePath: " + savePath);
        //String sRootPath = new File(savePath).getAbsolutePath();
        //System.out.println("sRootPath: " + sRootPath);
        
        //File fileSaveDir = new File(savePath);
        //part.write(savePath + File.separator);
        /*if you may have more than one files with same name then you can calculate some random characters
         and append that characters in fileName so that it will  make your each image name identical.*/
       // dbFileName = UPLOAD_DIR + File.separator + fileName;
       // part.write(savePath + File.separator);
        //out.println(id+" "+title+" "+sd+" "+fileName+" "+savePath);
        /*
         You need this loop if you submitted more than one file
         for (Part part : request.getParts()) {
         String fileName = extractFileName(part);
         part.write(savePath + File.separator + fileName);
         }*/
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3307/magazine", "root", "");
            PreparedStatement pst = con.prepareStatement("insert into upload values(?,?,?,?,?,?)");
            pst.setInt(1, id);
            pst.setString(2, title);
            pst.setString(3, sd);
            pst.setString(4, fileName);
            pst.setString(5, savePath);
            pst.setString(6, p);
            pst.executeUpdate();
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
              
              out.println("  <div class=\"main\">\n" +
" <div style=\"overflow-x:auto;\">");
            out.println("<center><h1>Image inserted Succesfully......</h1></center>");
            out.println("<center><h2><a href='display.jsp?id=" + id + "'>Display</a></h2></center>");
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
        } catch (ClassNotFoundException | SQLException  | NullPointerException e) {
            out.println(e.getMessage());
        }

    }
    // file name of the upload file is included in content-disposition header like this:
    //form-data; name="dataFile"; filename="PHOTO.JPG"

    private String extractFileName(Part part) {//This method will print the file name.
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    } 
}
