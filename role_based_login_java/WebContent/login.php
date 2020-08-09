<?php include('server.php'); ?>
<!DOCTYPE html>
<html>
<head>
    
    <title>SIGN IN OR SIGN UP FORM E-SEVA</title> 
    <link rel="stylesheet" type="text/css" href="styling.css">
</head>
<body>
    <div class="header">
    <h2>Login</h2>
    </div>
    <form method="post" action="login.php">
        
          <!-- display validaiton-->
        
        <?php include('errors.php');   ?>
        
    <div class="input-group">
        <label>USERNAME</label>
        <input type="text" name="username" >       
    </div>

        
        
        
     <div class="input-group">
        <label>PASSWORD</label>
        <input type="password" name="password" >       
    </div>
        
        
         
         
          
     <div class="input-group">
       <button type="submit" name="login" class="btn">Login</button>     
    </div>  
        
    <p>
        
        Don't have an Account sign up<a href="register.php">Sign Up</a>
        
    </p>
        
    
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    </form>
    
    
    
    
    
    
    

    
    
    
    
</body>




</html>