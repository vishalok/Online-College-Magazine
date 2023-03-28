<%@page import="java.sql.*"%>

<%

   
    String email = request.getParameter("email");

    String ques = request.getParameter("ques");

   String ans = request.getParameter("ans");
   
    String newpass = request.getParameter("newpass");
   

int check=0;
try{
   
    Class.forName("org.mariadb.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3307/magazine", "root", "");
                Statement st = con.createStatement();
    ResultSet rs=st.executeQuery("select *from signup where email='"+email+"' and ques='"+ques+"' and ans='"+ans+"'");
    while(rs.next())
    {
        check=1;
        st.executeUpdate("update signup set password='"+newpass+"' where email='"+email+"'");
        response.sendRedirect("forgot.jsp?msg=done");
    
    }
    if(check==0)
    {
        response.sendRedirect("forgot.jsp?msg=invalid");
    }
}catch(Exception e){

System.out.println(e);

}


%>