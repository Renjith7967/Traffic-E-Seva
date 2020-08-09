<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%


String copname=request.getParameter("copname");
String location=request.getParameter("location");

String emergencymessage=request.getParameter("emergencymessage");



try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_multiuser_login_db", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into gethelppolice(copname,location,emergencymessage)values('"+copname+"','"+location+"', '"+emergencymessage+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>