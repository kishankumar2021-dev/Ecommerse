<?php
include('config.php');
session_start();
if (isset($_POST['contact'])) {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $message = $_POST['message'];

    $sql = "INSERT INTO `contact`(`name`, `email`, `message`) VALUES ('$name','$email','$message') ";
    $query = mysqli_query($conn, $sql);
    if ($query) {

        echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
          <strong>Thanks For Contacting</strong>Message Send Successfully.
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>';
    } else {
        echo '<div class="alert alert-warning alert-dismissible fade show" role="alert">
            <strong>Sorry</strong>Message Not Send Successfully.
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>';
    }
}

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <style>
        .text {
            font-size: 20px;
        }
    </style>
    <!-- Site meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>E-COMMERCE</title>
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
            <h1 class="jumbotron-heading">CONTACT ME!<i class="fa fa-smile-o fa- fa-spin" aria-hidden="true"></i></h1>
            <p class="lead text-muted mb-0">Online Shoping</p>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Contact</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header bg-primary text-white"><i class="fa fa-envelope"></i> Contact us.
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" class="form-control" name="name" id="name" value="
                                <?php
                                if (isset($_SESSION['first'])) {
                                    echo $_SESSION['first'] ?> <?php echo $_SESSION['last'];
                                                            }
                                                                ?>
                                " aria-describedby="emailHelp" placeholder="Enter name" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email address</label>
                                <input type="email" class="form-control" name="email" value="
                                    <?php
                                    if (isset($_SESSION['email'])) {
                                        echo $_SESSION['email'];
                                    }
                                    ?>
                                " id="email" aria-describedby="emailHelp" placeholder="Enter email" required>
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label for="message">Message</label>
                                <textarea class="form-control" name="massage" id="message" rows="6" required></textarea>
                            </div>
                            <div class="mx-auto">
                                <button type="submit" class="btn btn-primary text-right">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-4">
                <div class="card bg-light mb-3">
                    <div class="card-header bg-success text-white text-uppercase"><i class="fa fa-home"></i> Address</div>
                    <div class="card-body text">
                        <p>Uttar Pradesh</p>
                        <p>276288 Azamgarh</p>
                        <p>India</p>
                        <p>Email : <a href="mailto:singhbhavesh682@gmail.com">kishan276288@gmail.com</a></p>
                        <p><i class="fa fa-phone fa-1x fa-spin" aria-hidden="true"></i>. <a href="tel:9889104576">9889104576</a></p>

                        <hr>

                        <input type="button" value="Print Address" class="btn btn-primary" onclick="printDiv()">
                    </div>
                    <div class="card-body" id="G">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d28646.033327051093!2d82.66250638322435!3d26.17213456605323!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399059a687e99ef1%3A0x1b0b8a169dcf603d!2sGalibpur%2C%20Uttar%20Pradesh%20223288!5e0!3m2!1sen!2sin!4v1655029844030!5m2!1sen!2sin" width="300" height="300" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>


                    </div>

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