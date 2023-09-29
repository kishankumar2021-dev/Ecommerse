<nav class="navbar navbar-expand-md navbar-dark" style="background-color:blue">
    <div class="container">
        <a class="navbar-brand" href="index.php"> E-Commerce Shoping<i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
            <ul class="navbar-nav m-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.php">Home <i class="fa fa-home" aria-hidden="true" style="font-size:20px"></i><span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="category.php?id=1">Categories <i class=" fa fa-list-alt" aria-hidden="true" style="font-size:19 px"></i></a>
                </li>
                <!-- <li class="nav-item">
                    <a class="nav-link" href="product.php">Product <i class="fa fa-product-hunt" style="font-size:20px"></i></a>
                </li> -->

                <li class="nav-item">
                    <a class="nav-link" href="contact.php">Contact <i class="fa fa-address-book" aria-hidden="true" style="font-size:20px"></i></a>
                </li>
            </ul>

            <form class="form-inline my-2 my-lg-0" method="post" action="login.php">
                <div class="input-group input-group-sm">
                    <input type="text" id="search_item" class="form-control" autocomplete="off" placeholder="Search...">
					
                    <!--<div class="input-group-append">
                        <button type="button" class="btn btn-secondary btn-number">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>-->
					
                </div>
                <?php
                include('config.php');
                // session_start();
                error_reporting(0);
                $email = $_SESSION['email'];

                $sql = "SELECT * FROM `cart` where `email`='$email'";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_num_rows($result);

                if (isset($_SESSION['first'])) { ?>
                    <a class="btn btn-success btn-sm ml-3" href="cart.php">
                        <i class="fa fa-shopping-cart"></i> Cart
                        <span class="badge badge-light"><?php echo $row; ?></span>
                    <?php } ?>
                    </a>
                    <a href="" class="mx-5"><b>
                            <?php
                            if (isset($_SESSION['first'])) {
                                echo "<b>Welcome</b>" . " " . $_SESSION['first'];
                            }
                            ?>
                        </b></a>
                    <?php
                    if (isset($_SESSION['first'])) { ?>
                        <a class="nav-link btn btn-danger mx-2" href="inc/logout.php">Logout(<?php echo $_SESSION['first'] . " " . $_SESSION['last'] ?>)</a>

                        <!-- <a class="nav-link btn btn-warning" href="../ecommerce/user/registration.php">Signup Now <i class="fa fa-user" aria-hidden="true"></i></a> -->
                    <?php } else {
                    ?>
                        <!--<a class="nav-link btn btn-warning" href="../ecommerce/user/index.php">Login</a>-->

                    <?php } ?>
            </form>
			<table >
			<tr>
			<td id="table_data">
			</td>
			</tr>
				
			</table>
	

        </div>
    </div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
			<script>
			$(document).ready(function(){
				$("#search_item").on("keyup", function(){
				//alert("h");
					var search_product = $(this).val();
					$.ajax({
					url: "product_search_items.php",
					type: "POST",
					success: function(data) {
						$("#table").html(data);
					}
				});
				$.ajax({
        type: 'POST',
        url: "product_search_items.php",
        data: postedData,
       
        success:  function(data) {
						$("#table").html(data);
					}
    });
					
				});
				
			});
			</script>
</nav>