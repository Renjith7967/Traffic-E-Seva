<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E-SEVA APP (TRAFFIC POLICE)</title>
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Lemonada:wght@700&display=swap" rel="stylesheet">
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<script src="../js/jquery-1.12.4-jquery.min.js" type="text/javascript"></script>
<script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<style>
.design
{
text-align:center;
    border:5px;
}
 .button {
  background-color:#ff3300; /* Green */
  border: 2px solid black;
  color: white;
  padding: 1px 13px;
  text-align: center;
  
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 4px 2px;
  cursor: pointer;
}
.rob
{
margin-top:100px;
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
	<div class="topborder">
	<center>
    	<h3>User Page-Traffic cop</h3>
    	 <h4>Welcome , <%=session.getAttribute("user_login")%></h4>
        <%
      	//setHeader no-cache because user logut successfully go "index.jsp" page but user click on back button than not show "user_home.jsp" page
        response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate"); 
        
      	//check if condition get user session is null than user not access "user_home.jsp" page
		if(session.getAttribute("user_login")==null || session.getAttribute("user_login")=="") 
		{
            response.sendRedirect("../index.jsp"); 
		}
		%>
		    </center>
		     </div>
		
       <!--   <h2>Welcome Traffic cop, <%=session.getAttribute("user_login")%></h2>
   
        <h3><a href="../logout.jsp">Logout</h3>
       
        
  	
  	
  	<div class="design">
      
            
        <a href="../indexxxxxx.html">    Fill the Form here<p class="text-info"></p></a>	
        
            </div>-->
            >
             <body style="background-color:whitesmoke">         
    <div class="rob">
                    <center>
                        <form >
                            <fieldset style="border: #ff0000 3px solid;margin-left: 30%;margin-right: 30%;">
                              
                                <p style="font-family: 'Bebas Neue', cursive;margin-top:55px;margin-bottom:100px;letter-spacing:1.5px;font-size:30px;margin-top: -5px;"><u>USER PAGE</u></p>
                                <p style="font-family: 'Bebas Neue', cursive;letter-spacing:1.5px;font-size:30px;margin-top: -75px;">Welcome Officer&nbsp;</p>
                                <div class="button">
                                    <p style="font-family: 'Bebas Neue', cursive;letter-spacing:2px;"><h5><a href="../indexxxxxx.html">  <b> <u>Fill the Form here</u></b> </h5></p>
                                </div>
                                
                                <div class="button" style="margin-left: 10px;">
                                    <p style="font-family: 'Bebas Neue', cursive;letter-spacing:2px;"><h5> <a href="../logout.jsp"><b><u>Logout</u></b></h5></p>
                                </div>
                             </fieldset>
                            </form>
                        </center>
         
                        </div>
  </body>
           

	    
</body>
</html>