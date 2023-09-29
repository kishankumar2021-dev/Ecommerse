<?php
include 'config.php';
session_start();
?>

<!DOCTYPE html>
<html lang="fr">

<head>

    <!-- Site meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Ecommerce Market</title>
    <!-- CSS -->
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
    <?php include('inc/header.php') ?>

    <section class="jumbotron text-center" style="background: linear-gradient(to bottom, red , white, green);">
        <div class="container">
            <h1 class="jumbotron-heading">E-COMMERCE<i class="fa fa-shopping-basket" aria-hidden="true"></i></h1>
            <p class="lead text-muted mb-0">Online Goods And Servises. <i class="fa fa-smile-o" aria-hidden="true"></i></p>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="uploading/slider_1.jpg" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="uploading/slider_2.jpg" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="uploading/slider_3.jpg" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <div class="col-12 col-md-3">
                <div class="card">
                    <?php
                    $sql = "SELECT * FROM `product` limit 1";
                    $results = mysqli_query($conn, $sql);
                    foreach ($results as $datas) {
                    ?>
                        <div class="card-header bg-success text-white text-uppercase">
                            <i class="fa fa-heart"></i> Top product
                        </div>
                        <img class="img-fluid border-0" style="height:250px" src="uploading/<?php echo $datas['image'] ?>" alt="Card image cap">
                        <div class="card-body">
                            <h4 class="card-title text-center"><a href="product.php?id=<?php echo $datas['id'] ?>" title="View Product"><?php echo $datas['pname'] ?></a></h4>
                            <div class="row">
                                <div class="col">
                                    <p class="btn btn-danger btn-block"><?php echo $datas['price'] ?>&#8377;</p>
                                </div>
                                <div class="col">
                                    <a href="product.php?id=<?php echo $datas['id'] ?>" class="btn btn-success btn-block">View</a>
                                </div>
                            </div>
                        <?php } ?>
                        </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container mt-3 mb-4">
        <div class="row">
            <div class="col-sm">
                <div class="card">
                    <div class="card-header bg-primary text-white text-uppercase">
                        <i class="fa fa-trophy"></i> Last products
                    </div>
                    <div class="card-body">
                        <div class="row">

                            <?php
                            $sql = "SELECT * FROM `product` ORDER BY id DESC LIMIT 4";
                            $result = mysqli_query($conn, $sql);
                            foreach ($result as $data) {
                                // echo $data['id'];
                            ?>
                                <div class="col-sm">
                                    <div class="card">
                                        <img class="card-img-top" src="uploading/<?php echo $data['image'] ?>" alt="Card image cap" height="180">
                                        <div class="card-body">
                                            <h4 class="card-title"><a href="product.php?id=<?php echo $data['id'] ?>" title="View Product"><?php echo $data['pname'] ?></a></h4>
                                            <p class="card-text"><?php echo $data['des'] ?></p>
                                            <div class="row">
                                                <div class="col">
                                                    <p class="btn btn-danger btn-block"><?php echo $data['price'] ?></p>
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
        </div>
    </div>

    <div class="container mt-3 mb-4">
        <div class="row">
            <div class="col-sm">
                <div class="card">
                    <div class="card-header bg-primary text-white text-uppercase">
                        <i class="fa fa-trophy"></i> Best products
                    </div>
                    <div class="card-body">
                        <div class="row">

                            <?php
                            $sql = "SELECT * FROM `product` ORDER BY id ASC LIMIT 4";
                            $result = mysqli_query($conn, $sql);
                            foreach ($result as $data) {
                                // echo $data['id'];
                            ?>
                                <div class="col-sm">
                                    <div class="card">
                                        <img class="card-img-top" src="uploading/<?php echo $data['image'] ?>" alt="Card image cap" height="180">
                                        <div class="card-body">
                                            <h4 class="card-title"><a href="product.php?id=<?php echo $data['id'] ?>" title="View Product"><?php echo $data['pname'] ?></a></h4>
                                            <p class="card-text"><?php echo $data['des'] ?></p>
                                            <div class="row">
                                                <div class="col">
                                                    <p class="btn btn-danger btn-block"><?php echo $data['price'] ?></p>
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
        </div>
    </div>
    <?php include('inc/footer.php') ?>
</body>

</html>