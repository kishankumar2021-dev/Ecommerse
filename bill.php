<?php
include 'config.php';
error_reporting(0);
if(isset($_POST['checkout'])){
$username=$_POST['username'];
$email=$_POST['email'];echo $email;
$address=$_POST['address'];
$city=$_POST['city'];
$state=$_POST['state'];
$zip=$_POST['zip'];
$cardname=$_POST['cardname'];
$cardnumber=$_POST['cardnumber'];
$expmonth=$_POST['expmonth'];
$expyear=$_POST['expyear'];
$cvv=md5($_POST['cvv']);


$sql="INSERT INTO `checkout`(`username`, `email`, `address`, `city`, `state`, `pincode`, `card`, `card_number`, `expdate`, `year`, `cvv`) 
VALUES ('$username','$email','$address','$city','$state','$zip','$cardname','$cardnumber','$expmonth','$expyear','$cvv')";
$result=mysqli_query($conn,$sql);
}
if($result){
    echo "thanks ";
}




?> 