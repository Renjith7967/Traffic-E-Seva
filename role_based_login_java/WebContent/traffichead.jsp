<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<!--valiadtion css & js start here-->	
<style type="text/css">
label.error
{
	color:red;
   	font-family:Times New Roman;
	font-size:17px;
}		
</style>
<style>

<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
}
.center {
  margin-left: auto;
  margin-right: auto;
  border: 1px solid tomato;
}
.nm
{
text-align:center;
}

tr:nth-child(even) {background-color: #f2f2f2;}
</style>


</head>
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
            <a class="navbar-brand" href="file:///C:/xampp/htdocs/test/index.html">E-SEVA APPP</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
               
            </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
     <div style="overflow-x:auto;">
     <div class="nm">
     <b><u>Traffic violations listed</b></u><br><br>
     
     </div>
<table class="center">
		<tr>
		<td><b>id</b></td>
		<td><b>cop name</b></td>
		<td><b>violators name</b></td>
		<td><b>cityname</b></td>
		
		
			<td><b>email</b></td>
		<td><b>violationtype </b></td>
		<td><b>license num</b></td>
		<td><b>vehicledetails</b></td>
		
			<td><b>date</b></td>
		<td><b>repeated offenders</b></td>
		<td><b>vehicle num</b></td>

		</tr>



<%
String url="jdbc:mysql://localhost:3306/jsp_multiuser_login_db";
String username ="root";
String password="";
String sql = "select * from users";
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection(url,username,password);
    Statement st= con.createStatement();
    
    ResultSet rs= st.executeQuery(sql);
   while (rs.next()){
    
 
%>
<tr>
<td> <%= rs.getString("id") %><br>
<td> <%= rs.getString("first_name") %><br>
<td><%= rs.getString("last_name") %><br>

<td><%= rs.getString("city_name") %><br>
<td><%= rs.getString("email") %><br>
<td><%= rs.getString("violationstype") %><br>


<td><%= rs.getString("licensenum") %><br>
<td><%= rs.getString("vehicledetails") %><br>
<td><%= rs.getString("date") %><br>

<td><%= rs.getString("repeatedoffenders") %><br>
<td><%= rs.getString("vehiclenumber") %><br>
</tr>
<% }
   %>
</table>
</div>

</body>
</html>