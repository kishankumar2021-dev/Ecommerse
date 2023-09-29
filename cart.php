<?php
include('config.php');
session_start();
error_reporting(0);


?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <!-- Site meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Shopping</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
    <?php include('inc/header.php') ?>
    <section class="jumbotron text-center" style="background: linear-gradient(blue, pink);">
        <div class="container">
            <h1 class="jumbotron-heading">Cart Product<i class="fa fa-cart-plus" aria-hidden="true"></i></h1>
        </div>
        <div>

        </div>
    </section>
    <!-- <b><a href="delete.php" name="clear">Clear Cart <i class="fa fa-trash" aria-hidden="true"></i></a></b> -->
    <div class="container mb-4">
        <div class="row">
            <div class="col-12">
                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th scope="col"> </th>
                                <th scope="col">Product</th>
                                <th scope="col">Available</th>
                                <th scope="col" class="text-center">Quantity</th>
                                <th scope="col" class="text-right">Price</th>
                                <th>Delete </th>
                                <!-- <th>Update </th> -->
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $email = $_SESSION['email'];
                            //    echo $email;
                            $sum = 0;
                            $sql = "SELECT * FROM `cart` where `email`='$email'";
                            $result = mysqli_query($conn, $sql);
                            foreach ($result as $data) {
                                // echo $data['id'];
                                $sum += $data['total'];



                            ?>
                                <form method="POST" action="updatecart.php">
                                    <tr>
                                        <td><img src="uploading/<?php echo $data['pimage'] ?>" width="45" height="45" /> </td>
                                        <td><?php echo $data['pname'] ?></td>
                                        <td>In stock</td>
                                        <td><input id="cart" class="form-control" type="text" name="quantity" readonly value="<?php echo $data['quantity'] ?>" /></td>
                                        <td class="text-right"><?php echo $data['total'] ?></td>
                                        <td><a href="delete.php?id=<?php echo $data['id']; ?> " name="delete" class="mx-3"><i class="fa fa-trash"></i></a> </td>

                                    </tr>

                                </form>
                            <?php } ?>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>Sub-Total</td>
                                <td class="text-right"><?php echo $sum; ?> €</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>Shipping</td>
                                <td class="text-right">0.00 €</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><strong>Total</strong></td>
                                <td class="text-right"><strong><?php echo $sum + 0.00; ?></strong></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="col mb-2">
                <div class="row">
                    <div class="col-sm-12  col-md-6">
                        <button class="btn btn-block btn-light"><a href="index.php">Continue Shopping</a></button>
                    </div>
                    <div class="col-sm-12 col-md-6 text-right">
                        <?php
                        $email = $_SESSION['email'];
                        $sql = "select * from `cart` where `email`='$email'";
                        $result = mysqli_query($conn, $sql);
                        $rowcount = mysqli_num_rows($result);
                        if ($rowcount == 0) {
                        ?>
                            <a href="checkout.php"><button class="btn btn-lg btn-block btn-success text-uppercase" id="checkout" style="display:none;">Checkout</button></a>
                        <?php } else { ?>
                            <a href="checkout.php"><button class="btn btn-lg btn-block btn-success text-uppercase" id="checkout">Checkout</button></a>

                        <?php }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include('inc/footer.php') ?>

</body>

</html>