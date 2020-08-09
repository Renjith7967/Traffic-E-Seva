<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String soslocation=request.getParameter("soslocation");
String type=request.getParameter("type");
String affectedpeople=request.getParameter("affectedpeople");
String priority=request.getParameter("priority");


try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_multiuser_login_db", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into sosusers(soslocation,type,affectedpeople,priority)values('"+soslocation+"','"+type+"','"+affectedpeople+"','"+priority+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>