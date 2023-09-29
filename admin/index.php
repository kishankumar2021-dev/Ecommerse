<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin-Login</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body>

    <div class="container">


        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Welcome!</h1>
                                    </div>
                                    <form action="index.php" method="POST">
                                        <div class="form-group">
                                            <input autocomplete="off" type="text" name="email" class="form-control form-control-user" id="exampleInputEmail" aria-describedby="emailHelp" placeholder="Enter Email Address..." required>
                                        </div>
                                        <div class="form-group">
                                            <input autocomplete="off" type="password" name="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="Password...." required>
                                        </div>

                                        <input type="checkbox" name="">&ensp;<span>Remember Me!</span>

                                        <input type="submit" value="login" name="submit" class="btn btn-primary btn-user btn-block">
                                    </form>
                                    <div class="text-center">
                                        <a class="small" href="register.php">Sing Up!</a>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
<?php
include('../config.php');

if (isset($_POST['submit'])) {
    $username = $_POST['email'];
    $password  = $_POST['password'];

    $query = "SELECT * FROM `admin` WHERE `username` = '{$username}' AND `password` = '{$password}'";

    $run = mysqli_query($conn, $query);

    $row = mysqli_num_rows($run);

    if ($row != 1) {
?>
        <script>
            alert('Username or Password not match !!');
            window.open('index.php', '_self');
        </script>
<?php
    } else {
        $data = mysqli_fetch_assoc($run);

        $id = $data['id'];

        //echo "id = " . $id;
        //die();

        session_start();
        $_SESSION['uid'] = $id;
        //echo $id;
        //die();
        header('location:add_product.php');
    }
}

?>