<?php
include 'config.php';
@$username = $_POST['address'];
echo $username;
error_reporting(0);

?>
<!DOCTYPE html>
<html>

<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    body {
      font-family: Arial;
      font-size: 17px;
      padding: 8px;
    }

    * {
      box-sizing: border-box;
    }

    .row {
      display: -ms-flexbox;
      /* IE10 */
      display: flex;
      -ms-flex-wrap: wrap;
      /* IE10 */
      flex-wrap: wrap;
      margin: 0 -16px;
    }

    .col-25 {
      -ms-flex: 25%;
      /* IE10 */
      flex: 25%;
    }

    .col-50 {
      -ms-flex: 50%;
      /* IE10 */
      flex: 50%;
    }

    .col-75 {
      -ms-flex: 75%;
      /* IE10 */
      flex: 75%;
    }

    .col-25,
    .col-50,
    .col-75 {
      padding: 0 16px;
    }

    .container {
      background-color: #f2f2f2;
      padding: 5px 20px 15px 20px;
      border: 1px solid lightgrey;
      border-radius: 3px;
    }

    input[type=text] {
      width: 100%;
      margin-bottom: 20px;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    label {
      margin-bottom: 10px;
      display: block;
    }

    .icon-container {
      margin-bottom: 20px;
      padding: 7px 0;
      font-size: 24px;
    }

    .btn {
      background-color: #04AA6D;
      color: white;
      padding: 12px;
      margin: 10px 0;
      border: none;
      width: 100%;
      border-radius: 3px;
      cursor: pointer;
      font-size: 17px;
    }

    .btn:hover {
      background-color: #45a049;
    }

    a {
      color: #2196F3;
    }

    hr {
      border: 1px solid lightgrey;
    }

    span.price {
      float: right;
      color: grey;
    }

    /* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
    @media (max-width: 800px) {
      .row {
        flex-direction: column-reverse;
      }

      .col-25 {
        margin-bottom: 20px;
      }
    }
  </style>

</head>

<body>

  <h2 class="text-center mt-2" style="text-align:center;">E-COMMERCE CHECKOUT FORM <i class="fa fa-money" aria-hidden="true"></i></h2>
  <div class="row mt-5">
    <div class="col-75">
      <div class="container">
        <form action="bill.php" method="POST">

          <div class="row">
            <div class="col-50">
              <h3>Billing Address</h3>
              <label for="fname"><i class="fa fa-user"></i> Full Name</label>
              <input type="text" id="fname" name="username" readonly placeholder="Kishan kumar" value="<?php
                                                                                                        if (isset($_SESSION['first'])) {
                                                                                                          echo $_SESSION['first'] ?> <?php echo $_SESSION['last'];
                                                                                                        }
                                      ?>">
              <label for="email"><i class="fa fa-envelope"></i> Email</label>
              <input type="text" id="email" name="email" readonly placeholder="kishan2788@gmail.com" value="<?php
                                                                                                              if (isset($_SESSION['email'])) {
                                                                                                                echo $_SESSION['email'];
                                                                                                              }
                                                                                                              ?>">
              <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
              <input type="text" id="adr" name="address" placeholder="276288 Azamgarh Uttar Pradesh India" required>
              <label for="city"><i class="fa fa-institution"></i> City</label>
              <input type="text" id="city" name="city" placeholder="Azamgarh" required>

              <div class="row">
                <div class="col-50">
                  <label for="state">State</label>

                  <input type="text" id="state" name="state" placeholder="NY" required>
                </div>
                <div class="col-50">
                  <label for="zip">Pin Code <i class="fa fa-lock" aria-hidden="true"></i></label>
                  <input type="text" id="zip" name="zip" placeholder="276288" required>
                </div>
              </div>
            </div>

            <div class="col-50">
              <h3>Payment</h3>
              <label for="fname">Accepted Cards</label>
              <div class="icon-container">
                <i class="fa fa-cc-visa" style="color:navy;"></i>
                <i class="fa fa-cc-amex" style="color:blue;"></i>
                <i class="fa fa-cc-mastercard" style="color:red;"></i>
                <i class="fa fa-cc-discover" style="color:orange;"></i>
              </div>
              <label for="cname">Name on Card</label>
              <input type="text" id="cname" name="cardname" placeholder="kishan kumar" required>
              <label for="ccnum">Credit card number</label>
              <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" required>
              <label for="expmonth">Exp Month</label>
              <input type="text" id="expmonth" name="expmonth" placeholder="September" required>
              <div class="row">
                <div class="col-50">
                  <label for="expyear">Exp Year</label>
                  <input type="text" id="expyear" name="expyear" placeholder="2018" required>
                </div>
                <div class="col-50">
                  <label for="cvv">CVV</label>
                  <input type="text" id="cvv" name="cvv" placeholder="352" required>
                </div>
              </div>
            </div>

          </div>
          <label>
            <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
          </label>

          <input type="submit" value="Continue to checkout" name="checkout" class="btn">


        </form>
      </div>
    </div>
    <div class="col-25">
      <div class="container" id="GFG">
        <?php
        include('config.php');
        $sql = "select * from `cart`";
        $result = mysqli_query($conn, $sql);
        $rowcount = mysqli_num_rows($result);
        ?>
        <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b><?php echo $rowcount; ?></b></span></h4>
        <?php
        $sum = 0;

        $sel = 'SELECT * FROM `cart` ';
        $run = mysqli_query($conn, $sel);
        while ($shiv = mysqli_fetch_assoc($run)) {
          $sum = $sum + $shiv['total'];
        ?>
          <p><?php echo $shiv['pname'] ?> <span class="price">$<?php echo $shiv['total'] ?></span></p>
        <?php } ?>
        <hr>
        <p>Total <span class="price" style="color:black"><b>$<?php echo $sum; ?></b></span></p>
        <hr>
        <input type="button" value="Print Reciept" class="btn btn-primary" onclick="printDiv()">
      </div>
      <div class="container" id="GFG">

        <h4>Scan Now <i class="fa fa-qrcode" aria-hidden="true"></i> <span class="price" style="color:black"></span></h4>

        <img src="img/qr.png" alt="" width="250" height="200">



      </div>
    </div>

  </div>
  <script>
    function printDiv() {
      var divContents = document.getElementById("GFG").innerHTML;
      var a = window.open('', '', 'height=1000, width=1000');
      a.document.write('<html>');
      a.document.write('<body > <h1>Bill Reciept <br>');
      a.document.write(divContents);
      a.document.write('</body></html>');

      a.document.close();
      a.print();
    }
  </script>
</body>

</html>