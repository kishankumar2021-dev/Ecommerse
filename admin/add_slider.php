<?php
include '../config.php';

if (isset($_POST['submit'])) {


    $file = $_FILES['image'];

    // print_r($file);

    $filename = $file['name'];
    $filepath = $file['tmp_name'];
    $fileerror = $file['error'];

    if ($fileerror == 0) {
        $destfile = '../uploadimg/' . $filename;
        // echo $destfile;

        if (move_uploaded_file($filepath, $destfile)) {

            $insertquery = "INSERT INTO add_slider( `simage`) VALUES ('{$filename}')";
            if (mysqli_query($conn, $insertquery)) { ?>
                <script>
                    alert("Slider Added Successfully")
                </script>
<?php
                //  header("location: display.php");
            } else {
                die("Query Failed");
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
    <title>Add Slider</title>
</head>

<body>
    <marquee behavior="alternate" style="width: 50%"><b class="text-danger">Please Upload 855 x 365</b></marquee>
    <h1 class="text-center">Add Slider</h1>

    <div class="container-fluid">
        <form action="" method="POST" enctype="multipart/form-data">


            <input type="file" name="image" class="form-control">
            <input type="submit" name="submit" class="mt-2 btn-primary mx-3">

        </form>
    </div>

</body>

</html>