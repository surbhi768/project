<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String NAME=request.getParameter("NAME");
String ID=request.getParameter("ID");
String PASSWORD=request.getParameter("PASSWORD");
String MOBILENO=request.getParameter("MOBILENO");
String EMAIL =request.getParameter("EMAIL");
try
{
    Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/acadview", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into user(NAME,ID,PASSWORD,MOBILENO,EMAIL)values('"+NAME+"','"+ID+"','"+PASSWORD+"','"+MOBILENO+"','"+EMAIL+"')");
out.println("Thank you for register ! Please <a href='index.html'>Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

