<?php
include('config.php');
session_start();
    $id=$_GET['id'];
    $del="delete from `cart` where id='$id'";
    $run=mysqli_query($conn,$del);
    if ($run) {
     header('location:cart.php');
     $_SESSION['message']="Item Deleted Into Cart";
     
   }
    
  
  
?>