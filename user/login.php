<?php
include('../config.php');
session_start();
$email=$_POST['email'];
$pass=$_POST['password'];


$query="SELECT * FROM `signup` WHERE email='{$email}' && password='{$pass}'";

$run=mysqli_query($conn,$query);
foreach($run as $data){
    $first= $data['first'];
   $last=$data['last'];
   $email=$data['email'];

}

if ($run) {
    echo "Login ";
    header('location:../index.php');
     $_SESSION['first']=$first;
    $_SESSION['last']=$last;
    $_SESSION['email']=$email;
    

} else {
   header('location:index.php');
}
