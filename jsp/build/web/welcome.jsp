<%-- 
    Document   : Welcome
    Created on : 1 Nov, 2018, 9:30:14 AM
    Author     : hardeep
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
    </head>
    <body>
        <%
     String uname = request.getParameter("uname");
            String pass = request.getParameter("pass");
            out.println(uname+" "+pass);
            
            try
            {
                String myUrl = "jdbc:mysql://localhost:3306/acadview";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn = DriverManager.getConnection(myUrl,"root","");
            //out.println("Hello 1");

                String query = "Select * from user where ID='"+uname+"' and PASSWORD ='"+pass+"'";
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(query);
                
               if(rs.next())
                {
                    out.println("Logged in successfully");
                   out.print("Hello "+uname);}
               else
                   out.println("name or Password does not exists");
                st.close();
            }
            catch(ClassNotFoundException e)
            {
                out.print(e);
            }
            catch(SQLException e)
            {
                out.print(e);
            }
            
           %>
       
        
    </body>
</html>