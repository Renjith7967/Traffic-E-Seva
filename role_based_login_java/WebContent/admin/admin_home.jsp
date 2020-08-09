<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E SEVA APP</title>
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="../js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<style>
.table
{
text-align:center;
border:2px solid black;
max-width:400px;
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
    	<h2>Traffic head</h2>
        <%
      	//setHeader no-cache because admin logut successfully go "index.jsp" page but admin click on back button than not show "admin_home.jsp" page
        response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
        
        //check if condition get admin session is null than admin not access "admin_home.jsp" page
		if(session.getAttribute("admin_login")==null || session.getAttribute("admin_login")=="") 
		{
            response.sendRedirect("../index.jsp"); 
		}
		%>
		
        <h2>Welcome head, <%=session.getAttribute("admin_login")%></h2>
        <div class="table">
             <a href="../traffichead.jsp">   <h3> view the violations listed Form here<p class="text-info"></h3></p></a>	
               <a href="../trafficheadhelp.jsp"> <h3> view emergency Form here<p class="text-info"></h3></p></a>	
                  <a href="../finedetails.jsp">   <h3> view Fined Forms here<p class="text-info"></h3></p></a>	
      
         
        <h3><a href="../logout.jsp">Logout</h3></div>
        
     </center>
    
</body>
</html>