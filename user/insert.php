<?php
include('../config.php');



$first=$_POST['first'];
$last=$_POST['last'];
$email=$_POST['email'];
$pass=$_POST['pass'];
$check=$_POST['check'];

$insertquery="INSERT INTO `signup`( `first`, `last`, `email`, `password`, `checks`) VALUES ('$first','$last','$email','$pass','$check')";
    $query=mysqli_query($conn,$insertquery);

 if ($query) {
     echo "inserted";
     header('location:index.php');
 } else {
    echo "not inserted";

 }
   
?>