<?php
session_start();
include('../config.php');
if (isset($_POST['submit'])) {

    $cat_id = $_POST['cat_id'];
    $sname = $_POST['sname'];


    $sql = "INSERT INTO `sub_category`(`cat_id`,`sname`) VALUES ('$cat_id','$sname')";
    $query = mysqli_query($conn, $sql);
    if ($query) {

        echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
        <strong>Thanks</strong> Sub Category Added Successfully.
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>';
    } else {
        echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Sorry</strong>Sub Category Not Added.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>';
    }
}




?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Category</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css" integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js" integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/" crossorigin="anonymous"></script>
</head>

<body>
    <?php include('header.php') ?>

    <h1 class="text-center">Category Add </h1>
    <form action="" method="POST" enctype="multipart/form-data">

        <label for="" class="mx-5 ">Category <i class="fa fa-product-hunt" aria-hidden="true"></i></label>
        <select name="cat_id" id="" class="form-select mx-5 mt-2 w-50" required>
            <option>Select Category</option>
            <?php
            $sql = "SELECT * FROM `category`";
            $result = mysqli_query($conn, $sql);
            foreach ($result as $data) {
                // echo $data['id'];
            ?>
                <option value="<?php echo $data['id'] ?>"><?php echo $data['cat_name'] ?></option>
            <?php } ?>
        </select>
        <br>
        <label for="" class="mx-5">Sub Category<i class="fa fa-product-hunt" aria-hidden="true"></i></label>
        <input type="text" name="sname" id="sname" class="form-control mx-5 mt-2 w-50" placeholder="enter category name" required>

        <input type="submit" value="Add Sub Category" name="submit" class="mx-5 mt-2 btn btn-primary">
    </form>
    <?php include('footer.php') ?>

</body>

</html>