import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
  
public class loginpage extends HttpServlet { 
    @Override
public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String n=request.getParameter("email");  
    String p=request.getParameter("password");  
          
    //user login
    try{
       
    if(login.validate(n,p)){  
         // session.setAttribute("email",n); 
        RequestDispatcher rd=request.getRequestDispatcher("userview.jsp");  
        rd.forward(request,response);  
    }  
    else{  
        out.print("Sorry email or password error");  
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
        rd.include(request,response);  
    }  
          
    //admin login
    if(n.equals("vrsafetech@gmail.com") && p.equals("admin@123"))
    {
        RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
        rd.forward(request,response);  
    }
    else{
    out.print("Sorry email or password error");  
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
        rd.include(request,response);  
    }
     //Authentication
     
     
      }catch(Exception e){
out.println(e.getMessage());
}
    out.close();
}

    

   
}