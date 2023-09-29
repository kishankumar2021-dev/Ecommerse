<?php
include('../config.php');
session_start();
$email = $_POST['email'];
$pass = $_POST['password'];

//die();

$sql="SELECT * FROM `admin` where `username`= '{$email}' and  `password` = '{$pass}'";
$result=mysqli_query($conn,$sql);

if($result){
    header('location:add_product.php');
}
else{
    echo "Not Logged";
}
?>