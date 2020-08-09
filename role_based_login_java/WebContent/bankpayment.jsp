<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TRAFFIC E-SEVA APP</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<style>
 input[type=submit]
    {
     background-color: tomato;   
       width: 20%;  
        color: white;   
        padding: 15px;   
        margin: 10px 0px;   
        border: 2px solid black;   
        cursor: pointer;   
    
    }
    .align
   {
   text-align:center;
   
   }
    </style>
    

</head>

</html>
<%
String user_name=request.getParameter("user_name");
String transfer_to=request.getParameter("transfer_to");
String bank=request.getParameter("bank");
String branch=request.getParameter("branch");
String account_number=request.getParameter("account_number");
String ifsc_code=request.getParameter("ifsc_code");
String amount=request.getParameter("amount");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_multiuser_login_db", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into bankpayment(user_name,transfer_to,bank,branch,account_number,ifsc_code,amount)values('"+user_name+"','"+transfer_to+"','"+bank+"','"+branch+"','"+account_number+"','"+ifsc_code+"','"+amount+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<body>



</form>
</div>