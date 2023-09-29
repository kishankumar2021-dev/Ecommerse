<?php
 include '../config.php';
 session_start();
if(!isset($_SESSION['uid'])){    
     header('location:index.php');
 }else{
     echo '';

 }

?>
<?php
include ('../config.php');
if (isset($_POST['submit'])) {

    $file = $_FILES['image'];
    $filename = $file['name'];
    $filepath = $file['tmp_name'];
    $fileerror = $file['error'];

    $cat_id = $_POST['cat_id'];
    $sub_cat = $_POST['sub_cat'];

    $pname = $_POST['pname'];
    $des = $_POST['des'];
    $price = $_POST['price'];
    $old_price = $_POST['old_price'];
    $status = $_POST['status'];

    if ($fileerror == 0) {
        $destfile = '../uploading/' . $filename;
        // echo $destfile;

        if (move_uploaded_file($filepath, $destfile)) {

            $insertquery = "INSERT INTO `product`( `category`,`sub_cat`,`image`, `des`, `status`, `price`, `old_price`, `pname`) VALUES ('$cat_id','$sub_cat','$filename','$des','$status','$price','$old_price','$pname')";
            if (mysqli_query($conn, $insertquery)) { ?>
                <script>
                    alert("Product Added Successfully")
                </script>
<?php
                //  header("location: display.php");
            }
        } else {
            echo "Something wrong";
        }
    }
}
?>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <title>Add Product</title>
</head>

<body>
    <?php include('header.php') ?>

    <!-- <marquee behavior="alternate" style="width: 50%"><b class="text-danger">Please Upload 855 x 365</b></marquee> -->
    <h1 class="text-center">Add Product</h1>
    <br>
    <div class="container-fluid mt-2">
        <form action="" method="POST" enctype="multipart/form-data">
            <select name="cat_id" id="category-dropdown" class="form-select mx-5 mt-2 w-50" required>
                <option>Select Category</option>
                <?php
                $sql = "SELECT * FROM `category`";
                $result = mysqli_query($conn, $sql);
               
                foreach ($result as $data) {
                     //echo $data['id'];
                     //die();
                ?>
                    <option value="<?php echo $data['id'] ?>"><?php echo $data['cat_name'] ?></option>
                <?php } ?>
            </select>
            <br>
            <select name="sub_cat" id="sub-category-dropdown" class="form-select mx-5 mt-2 w-50" required>
                <option value="">Select Sub Category</option>
                 <?php
                        $sql = "SELECT * FROM `sub_category`";
                        $result = mysqli_query($conn, $sql);
                        foreach ($result as $data) {
                            // echo $data['id'];
                        ?>
                    <option value="<?php echo $data['id'] ?>"><?php echo $data['sname'] ?></option>
                <?php } ?> 
            </select>
            <input type="text" placeholder="Enter Product Name" name="pname" class="form-control mx-5 mt-2  w-50">
            <input type="text" placeholder="Enter Description" name="des" class="form-control mx-5 mt-2  w-50">
            <input type="text" placeholder="Enter Status (0 or 1)" name="status" class="form-control mx-5 mt-2  w-50">
            <input type="text" placeholder="Enter Price" name="price" class="form-control mx-5 mt-2  w-50">
            <input type="text" placeholder="Enter Old Price" name="old_price" class="form-control mx-5 mt-2  w-50">
            <input type="file" name="image" class="form-control mt-2 w-50 mx-5">
            <input type="submit" name="submit" class="mt-2 btn-primary mx-5" value="Add Product">

        </form>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#category-dropdown').on('change', function() {
                var category_id = this.value;

                $.ajax({
                    url: "action.php",
                    type: "POST",
                    data: {
                        category_id: category_id
                    },

                    success: function(data) {
                        $("#sub-category-dropdown").html(data);
                    }
                })
            });
        });
    </script>
     <?php include('footer.php') ?>

</body>

</html>
    