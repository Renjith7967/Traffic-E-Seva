
<?php
session_start();

$username = "";
$email = "";
$errors = array();

// connecting the databasse

$db = mysqli_connect('localhost','root','','registration');


// if the registration button clicked
if (isset($_POST['register']))
{
    $username = $db->real_escape_string($_POST['username']);
    $email = $db->real_escape_string($_POST['email']);
    $password_1 = $db->real_escape_string($_POST['password_1']);
    $password_2 = $db->real_escape_string($_POST['password_2']);
    
    
    // ensure that form fields are filled properly
    if(empty($username))
    {   
        array_push($errors, "Username is required");
        
    }
    
    
        if(empty($email))
    {   
        array_push($errors, "Email is required");
        
    }
    
    
    
        if(empty($password_1))
    {   
        array_push($errors, "Password is required");
        
    }
    
        if($password_1 != $password_2)
    {   
        //code mismatches
            
            
            array_push($errors, "The two passwords mismatch");
    }
    
    //if there are no errors,save in dattabase
    if(count($errors) == 0)
    {
        $password = md5($password_1);//encryptying password
        $sql = "INSERT INTO users (username,email,password) 
                            VALUES ('$username','$email','$password')";
        mysqli_query($db,$sql);
        $_SESSION['username'] = $username;
        $_SESSION['success'] = "You are now logged in";
        header('location: index.php');
    }
    
    
    }

//log user to login page



if(isset($_POST['login']))
{
    
    $username = $db->real_escape_string($_POST['username']);
    $password = $db->real_escape_string($_POST['password']);
    
    
    // ensure that form fields are filled properly
    if(empty($username))
    {   
        array_push($errors, "Username is required");
        
    }
    
    
        if(empty($password))
    {   
        array_push($errors, "Password is required");
        
    }
    
    if (count($errors) == 0)
    {
        $password = md5($password); //encrypting password
        $query = "SELECT * FROM users WHERE username='$username' AND password='$password'";
        $result = mysqli_query($db,$query);
        if (mysqli_num_rows($result) == 1)
        {
           //log user in 
            
        $_SESSION['username'] = $username;
        $_SESSION['success'] = "You are now logged in";
        header('location: index.php');
            
        }
        else
        {
            array_push($errors,"Wrong username/password combination");
           
        }
    }
    
    
}






// logout
if(isset($_GET['logout']))
{
    session_destroy();
    unset($_SESSION['username']);
    header('location: login.php');
    
}




?>
