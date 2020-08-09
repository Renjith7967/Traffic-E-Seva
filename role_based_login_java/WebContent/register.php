<?php include('server.php');?>
<!DOCTYPE html>
<html>
<head>
    
    <title>SIGN IN OR SIGN UP FORM E-SEVA</title> 
    <link rel="stylesheet" type="text/css" href="styling.css">
</head>
<body>
    <div class="header">
    <h2>Register</h2>
    </div>
    <form method="post" action="register.php">
        <!-- display validaiton-->
        
        <?php include('errors.php');   ?>
        
        
        
    <div class="input-group">
        <label>USERNAME</label>
        <input type="text" name="username"  value="<?php echo $username; ?>">       
    </div>
    
        
        
    <div class="input-group">
        <label>E-MAIL</label>
        <input type="text" name="email" value="<?php echo $email; ?>">       
    </div>
        
        
        
        
        
     <div class="input-group">
        <label>PASSWORD</label>
        <input type="password" name="password_1" >       
    </div>
        
        
        
        
     <div class="input-group">
        <label>CONFIRM PASSWORD</label>
        <input type="password" name="password_2" >       
    </div>
        
         
         
          
     <div class="input-group">
       <button type="submit" name="register" class="btn">Register</button>     
    </div>  
        
    <p>
        
        Already a member?<a href="login.php">Sign in</a>
        
    </p>
        
    
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    </form>
    
    
    
    
    
    
    

    
    
    
    
</body>




</html>