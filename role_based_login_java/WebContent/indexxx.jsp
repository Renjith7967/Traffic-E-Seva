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
String first_name=request.getParameter("first_name");
String last_name=request.getParameter("last_name");
String city_name=request.getParameter("city_name");
String email=request.getParameter("email");
String violationstype=request.getParameter("violationstype");
String licensenum=request.getParameter("licensenum");
String vehicledetails=request.getParameter("vehicledetails");
String date=request.getParameter("date");
String repeatedoffenders=request.getParameter("repeatedoffenders");
String vehiclenumber=request.getParameter("vehiclenumber");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp_multiuser_login_db", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into users(first_name,last_name,city_name,email,violationstype,licensenum,vehicledetails,date,repeatedoffenders,vehiclenumber)values('"+first_name+"','"+last_name+"','"+city_name+"','"+email+"','"+violationstype+"','"+licensenum+"','"+vehicledetails+"','"+date+"','"+repeatedoffenders+"','"+vehiclenumber+"')");
//out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<body>

<nav class="navbar navbar-default navbar-static-top">
      <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
          </button>
            <a class="navbar-brand" href="index.html">E-SEVA APPP</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
               
            </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<div class="align"><p><b><u>PAYMENTS PAGE</u></b><br><br></p></div>


</body>
<div class="align">
<form method="post" action="bankpayment.html">

Data Entered successfully<br>
<input type="submit" value="Bank payments">



</form>
</div>