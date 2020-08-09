<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Traffic E-seva App</title>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="../js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<style>
.table
{
border: 2px solid black;
text-align:center;
max-width:350px;
}
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
            <a class="navbar-brand" href="../index.html">E-SEVA APP</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
            </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    <center>
    	<h3>Admin page-Emergency Team</h3>
        <%
      	//setHeader no-cache because employee logut successfully go "index.jsp" page but employee click on back button than not show "employee_home.jsp" page
        response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
        
      	//check if condition get employee session is null than employee not access "employee_home.jsp" page
		if(session.getAttribute("employee_login")==null || session.getAttribute("employee_login")=="") 
		{
            response.sendRedirect("../index.jsp"); 
		}
		%>
		
        <h3>Welcome Team, <%=session.getAttribute("employee_login")%></h2>
        
             <div class="table">
             <a href="../rtoview.jsp">   <h2> view the Forms here</h2><p class="text-info"></p></a><br><br>
             
             
             <h3><a href="../logout.jsp"><u>Logout</u></h3>
             </div>
        
   	</center>
    
</body>
</html>