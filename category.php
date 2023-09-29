<?php
session_start();
error_reporting(0);
$id = $_GET['id'];

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <!-- Site meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Categories</title>
    <!-- CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>

    <?php include('inc/header.php') ?>

    <section class="jumbotron text-center" style="background: linear-gradient(blue, pink);">
        <div class="container">
            <h1 class="jumbotron-heading">CATEGORAY&ensp;<i class="fa fa-cart-plus" arria-hidden="true"></i></h1>
            <p class="lead text-muted mb-0">DIFFRENT PRODUCTS</p>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item"><a href="category.php">Category</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Sub-category</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-3">
                <div class="card bg-light mb-3">
                    <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
                    <ul class="list-group category_block">
                        <?php

                        $sql = "SELECT * FROM `category`";
                        $result = mysqli_query($conn, $sql);
                        foreach ($result as $data) {
                            $_SESSION['id'] = $data['id'];

                        ?>
                            <li class="list-group-item"><a href="category.php?id=<?php echo $data['id'] ?>"><?php echo $data['cat_name'] ?></a></li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="card bg-light mb-3">
                    <div class="card-header bg-success text-white text-uppercase">Last product</div>
                    <?php
                    $sql = "SELECT * FROM `product` ORDER BY id DESC
                LIMIT 1";
                    $result = mysqli_query($conn, $sql);
                    foreach ($result as $data) {
                        // echo $data['id'];
                    ?>
                        <div class="card-body">
                            <img class="img-fluid" src="uploading/<?php echo $data['image'] ?> " />
                            <h5 class="card-title"><?php echo $data['pname'] ?></h5>
                            <p class="card-text"><?php echo $data['des'] ?></p>
                            <p class="bloc_left_price"><?php echo $data['price'] ?></p>
                        </div>
                    <?php } ?>
                </div>
            </div>
            <div class="col">
                <div class="row">
                    <?php

                    $sql = "SELECT * FROM `product` where `category`='$id'";

                    $result = mysqli_query($conn, $sql);
                    foreach ($result as $data) {
                        // echo $data['id'];
                    ?>
                        <div class="col-12 col-md-6 col-lg-4">
                            <div class="card">
                                <img class="card-img-top" style="height:200px" src="uploading/<?php echo $data['image'] ?>" alt="Card image cap">
                                <div class="card-body">
                                    <h4 class="card-title"><a href="product.php?id=<?php echo $data['id'] ?>" title="View Product"><?php echo $data['pname'] ?></a></h4>
                                    <p class="card-text"><?php echo $data['des'] ?></p>
                                    <div class="row">
                                        <div class="col">
                                            <p class="btn btn-danger btn-block"><?php echo $data['price'] ?>&#8377;</p>
                                        </div>
                                        <div class="col">
                                            <a href="product.php?id=<?php echo $data['id'] ?>" class="btn btn-success btn-block">Show Product</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <?php include('inc/footer.php') ?>

    <!-- JS -->
    <script src="//code.jquery.com/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" type="text/javascript"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" type="text/javascript"></script>

</body>

</html>