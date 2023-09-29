<?php
include('config.php');

?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <!-- Site meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
    <?php include('inc/header.php') ?>
    <section class="jumbotron text-center" style="background: linear-gradient(blue, pink);">
        <div class="container">
            <h1 class="jumbotron-heading">Show Details&ensp;<i class="fa fa-database" aria-hidden="true"></i></h1>
            <p class="lead text-muted mb-0"></p>
            <div id="message"></div>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.php">Home</a></li>
                        <li class="breadcrumb-item"><a href="category.php">Category</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Product</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <!-- Image -->
            <div class="col-12 col-lg-6">
                <div class="card bg-light mb-3">
                    <?php
                    $id = $_GET['id'];
                    $sql = "SELECT * FROM `product` where id=$id";
                    $result = mysqli_query($conn, $sql);
                    foreach ($result as $data) {
                        // echo $data['id'];
                    ?>
                        <form action="addcart.php" class="form-submit" method="POST">
                            <div class="card-body">
                                <a href="" data-toggle="modal" data-target="#productModal">
                                    <img class="img-fluid" src="uploading/<?php echo $data['image'] ?>" style="height: 500px" />
                                    <input type="hidden" name="pimage" id="" class="pimage" value="<?php echo $data['image'] ?>">
                                    <p class="text-center" style="margin-left:-180px; font-size:20px;">Zoom</p>
                                </a>
                            </div>
                </div>
            </div>

            <!-- Add to cart -->
            <div class="col-12 col-lg-6 add_to_cart_block">
                <div class="card bg-light mb-3">
                    <div class="card-body">
                        <h2 class="text-warning "><?php echo $data['pname']; ?> </h2>
                        <input type="hidden" name="pid" id="pid" class="pid" value="<?php echo $data['id'] ?>">
                        <input type="hidden" name="pname" id="pname" class="pname" value="<?php echo $data['pname'] ?>">

                        <p class="price"><?php echo $data['price']; ?> $</p>
                        <input type="hidden" name="pprice" id="pprice" class="pprice" value="<?php echo $data['price'] ?>">

                        <p class="price_discounted"><?php echo $data['old_price']; ?>$</p>

                        <div class="form-group">
                            <label for="colors">Color</label>
                            <select class="custom-select" id="colors" class="color" name="color">
                                <option selected>Select</option>
                                <option value="1">Blue</option>
                                <option value="2">Red</option>
                                <option value="3">Green</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Quantity :</label>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <button type="button" class="quantity-left-minus btn btn-danger btn-number" data-type="minus" data-field="">
                                        <i class="fa fa-minus"></i>
                                    </button>
                                </div>
                                <input type="text" class="form-control" class="quantity" id="quantity" name="quantity" min="1" max="100" value="1">
                                <div class="input-group-append">
                                    <button type="button" class="quantity-right-plus btn btn-success btn-number" data-type="plus" data-field="">
                                        <i class="fa fa-plus"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <input type="submit" value="Add To Cart" name="cart" class="btn btn-primary addItemBtn">
                        <!-- <input type="submit" value="Buy Now" name="buy" class="btn btn-success mx-5">  -->

                        </form>
                        <div class="product_rassurance">
                            <ul class="list-inline">
                                <li class="list-inline-item"><i class="fa fa-truck fa-2x"></i><br />Fast delivery</li>
                                <li class="list-inline-item"><i class="fa fa-credit-card fa-2x"></i><br />Secure payment</li>
                                <li class="list-inline-item"><i class="fa fa-phone fa-2x fa-spin"></i><br /><a href="tel:8081403281">Call Me</a></li>
                            </ul>
                        </div>
                        <div class="reviews_product p-3 mb-2 ">
                            3 reviews
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            (4/5)
                            <a class="pull-right" href="#reviews">View all reviews</a>
                        </div>
                        <div class="datasheet p-3 mb-2 bg-info text-white">
                            <a href="" class="text-white"><i class="fa fa-file-text"></i> Download DataSheet</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <!-- Description -->
            <div class="col-12">
                <div class="card border-light mb-3">
                    <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-align-justify"></i> Description</div>
                    <div class="card-body">
                        <p class="card-text">
                            <?php echo $data['des']; ?>
                            <!-- Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker. -->
                        </p>

                    </div>
                </div>
            </div>
        <?php } ?>
        <!-- Reviews -->
        <div class="col-12" id="reviews">
            <div class="card border-light mb-3">
                <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-comment"></i> Reviews</div>
                <div class="card-body">
                    <div class="review">
                        <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                        <meta itemprop="datePublished" content="01-01-2016">January 01, 2018

                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        by Paul Smith
                        <p class="blockquote">
                        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                        </p>
                        <hr>
                    </div>
                    <div class="review">
                        <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                        <meta itemprop="datePublished" content="01-01-2016">January 01, 2018

                        <span class="fa fa-star" aria-hidden="true"></span>
                        <span class="fa fa-star" aria-hidden="true"></span>
                        <span class="fa fa-star" aria-hidden="true"></span>
                        <span class="fa fa-star" aria-hidden="true"></span>
                        <span class="fa fa-star" aria-hidden="true"></span>
                        by Paul Smith
                        <p class="blockquote">
                        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
                        </p>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>

    <?php include('inc/footer.php') ?>


    <!-- Modal image -->
    <div class="modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="productModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="productModalLabel"><?php echo $data['pname'] ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <img class="img-fluid" src="uploading/<?php echo $data['image'] ?>" height="1200" width="1200" />
                </div>
                <!--<div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal"></button>
                </div>-->
            </div>
        </div>
    </div>


</body>

</html>