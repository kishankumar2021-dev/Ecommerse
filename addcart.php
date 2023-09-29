<?php
session_start();
include('config.php');
if(isset($_POST['cart'])){
    $pid=$_POST['pid'];
    $pname=$_POST['pname'];
    $pimage=$_POST['pimage'];
    echo $pimage;
    $pprice=$_POST['pprice'];
    $quantity=$_POST['quantity'];
    $total=$pprice*$quantity;
    $color=$_POST['color'];
    $email=$_SESSION['email'];
    echo $email;
    
    $sql="INSERT INTO `cart`(`pid`, `pname`, `price`, `quantity`, `pimage`, `total`, `color`,`email`) VALUES ('$pid','$pname','$pprice','$quantity','$pimage','$total','$color','$email')";
    $query=mysqli_query($conn,$sql);
    if($query){
      
        header('location:cart.php');
    }
        else{
            echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Sorry</strong>Message Not Send Successfully.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>';
        }
    }
    



?>